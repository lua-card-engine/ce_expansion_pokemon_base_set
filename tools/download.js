import TCGdex from '@tcgdex/sdk';
import https from 'https';
import http from 'http';
import fs from 'fs';
import { join, dirname, extname } from 'path';
import { fileURLToPath } from 'url';
import { makeFileNameSafe, makeHashFilename } from './utils.js';
import sharp from 'sharp';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

// Get the set code from command line arguments
const setCode = process.argv[2];

const OUTPUT_DIRECTORY = join(__dirname, '..', 'design');

const setCodeOutput = setCode === 'base1' ? 'base_set' : setCode;

const LUA_CARDS_DIRECTORY = join(__dirname, '..', 'lua', 'ce_expansion_pokemon_' + setCodeOutput, 'cards');
const LUA_LANGUAGES_DIRECTORY = join(__dirname, '..', 'lua', 'ce_expansion_pokemon_' + setCodeOutput, 'languages');

if (!setCode) {
  console.error('Usage: node download-pokemon.js <set_code>');
  console.error('Example: node download-pokemon.js swsh3');
  console.error('Example: node download-pokemon.js base1');
  process.exit(1);
}

// Initialize TCGdex SDK with English language
const tcgdex = new TCGdex('en');

function downloadFile(url, filepath, redirectCount = 0) {
  return new Promise((resolve, reject) => {
    // Prevent infinite redirect loops
    if (redirectCount > 10) {
      reject(new Error('Too many redirects'));
      return;
    }

    const protocol = url.startsWith('https') ? https : http;

    protocol.get(url, (response) => {
      // Handle all redirect status codes (301, 302, 303, 307, 308)
      if (response.statusCode >= 300 && response.statusCode < 400 && response.headers.location) {
        const redirectUrl = response.headers.location;
        downloadFile(redirectUrl, filepath, redirectCount + 1)
          .then(resolve)
          .catch(reject);
        return;
      }

      if (response.statusCode !== 200) {
        reject(new Error(`Failed to download: ${response.statusCode}`));
        return;
      }

      // Detect actual file extension from content-type header
      const contentType = response.headers['content-type'] || '';
      let actualExt = extname(filepath);

      if (contentType.includes('image/webp')) {
        actualExt = '.webp';
      } else if (contentType.includes('image/jpeg') || contentType.includes('image/jpg')) {
        actualExt = '.jpg';
      } else if (contentType.includes('image/png')) {
        actualExt = '.png';
      } else if (contentType.includes('image/gif')) {
        actualExt = '.gif';
      }

      // Update filepath with correct extension
      const filepathWithoutExt = filepath.replace(/\.[^/.]+$/, '');
      const correctedFilepath = filepathWithoutExt + actualExt;

      const fileStream = fs.createWriteStream(correctedFilepath);
      response.pipe(fileStream);

      fileStream.on('finish', () => {
        fileStream.close();
        resolve(correctedFilepath); // Return the filepath for conversion
      });

      fileStream.on('error', (err) => {
        fs.unlink(correctedFilepath, () => { }); // Delete the file on error
        reject(err);
      });
    }).on('error', reject);
  });
}

async function convertToPNG(inputPath, outputPath) {
  try {
    // Read the file into a buffer first so sharp doesn't lock the original file
    const buffer = await fs.promises.readFile(inputPath);

    // Convert the buffer to PNG
    await sharp(buffer)
      .png()
      .toFile(outputPath);

    // Now we can safely delete the original file
    await fs.promises.unlink(inputPath);
  } catch (err) {
    throw new Error(`Failed to convert to PNG: ${err.message}`);
  }
}

// Recursively clean object to remove circular references and functions
function cleanObject(obj, seen = new WeakSet()) {
  // Handle null and primitives
  if (obj === null || typeof obj !== 'object') {
    return obj;
  }

  // Handle circular references
  if (seen.has(obj)) {
    return undefined;
  }
  seen.add(obj);

  // Handle arrays
  if (Array.isArray(obj)) {
    return obj.map(item => cleanObject(item, seen)).filter(item => item !== undefined);
  }

  // Handle objects
  const cleaned = {};

  // Get all properties including getters
  const descriptors = Object.getOwnPropertyDescriptors(obj);

  for (const [key, descriptor] of Object.entries(descriptors)) {
    // Skip functions, tcgdex instances, and endpoint references
    if (key === 'tcgdex' || key === 'endpoint') {
      continue;
    }

    try {
      let value;

      // Handle getter properties
      if (descriptor.get && typeof descriptor.get === 'function') {
        try {
          value = descriptor.get.call(obj);
        } catch (e) {
          // Skip getters that throw errors
          continue;
        }
      } else {
        value = descriptor.value;
      }

      // Skip functions
      if (typeof value === 'function') {
        continue;
      }

      const cleanedValue = cleanObject(value, seen);
      if (cleanedValue !== undefined) {
        cleaned[key] = cleanedValue;
      }
    } catch (e) {
      // Skip properties that cause errors
      continue;
    }
  }

  return cleaned;
}

// Convert snake_case or camelCase to PascalCase
function toPascalCase(str) {
  str = str
    .replace(/[_-](.)/g, (_, char) => char.toUpperCase())
    .replace(/^(.)/, (_, char) => char.toUpperCase());

  // Ensure it starts with a word character
  if (!/^[A-Za-z_]/.test(str)) {
    str = '_' + str;
  }

  return str;
}

// Recursively convert object keys to PascalCase and convert to Lua table format
function convertToLuaValue(value, indent = '\t') {
  if (value === null || value === undefined) {
    return 'nil';
  }

  if (typeof value === 'string') {
    // Escape special characters in strings
    const escaped = value
      .replace(/\\/g, '\\\\')
      .replace(/"/g, '\\"')
      .replace(/\n/g, '\\n')
      .replace(/\r/g, '\\r')
      .replace(/\t/g, '\\t');
    return `"${escaped}"`;
  }

  if (typeof value === 'number' || typeof value === 'boolean') {
    return String(value);
  }

  if (Array.isArray(value)) {
    if (value.length === 0) {
      return '{}';
    }
    const items = value.map(item => `${indent}${convertToLuaValue(item, indent + '\t')}`);
    return `{\n${items.join(',\n')}\n${indent}}`;
  }

  if (typeof value === 'object') {
    const entries = Object.entries(value);
    if (entries.length === 0) {
      return '{}';
    }
    const items = entries.map(([key, val]) => {
      const pascalKey = toPascalCase(key);
      return `${indent}${pascalKey} = ${convertToLuaValue(val, indent + '\t')}`;
    });
    return `{\n${items.join(',\n')}\n${indent}}`;
  }

  return 'nil';
}

// Generate Lua card file for Pokemon
function generateCardLuaFile(card, luaCardFileName) {
  const cardId = `ce_expansion_pokemon_${setCodeOutput}_${makeFileNameSafe(card.name)}`;
  const texturePath = `card_engine/expansions/ce_expansion_pokemon_${setCodeOutput}/${luaCardFileName}`;
  const backTexturePath = `card_engine/expansions/ce_expansion_pokemon_${setCodeOutput}/back`;

  // Create attributes object from all card properties
  const attributes = {};
  for (const [key, value] of Object.entries(card)) {
    if (key !== 'name' && key !== 'image' && key !== 'sdk') {
      attributes[key] = value;
    }
  }

  let luaContent = `local CARD = CARD
CARD.Name = "${cardId}"
CARD.Description = "${cardId}_description"
CARD.Texture = "${texturePath}"
CARD.RearTexture = "${backTexturePath}"
CARD.CardSize = CardEngine.DEFAULT_CARD_MODELS.COMMON_ROUNDED
CARD.Attributes = ${convertToLuaValue(attributes)}
`;

  const holoContent = `
CARD.HolographicStrength = Vector(1, 1, 1)
CARD.HolographicTexture = "card_engine/holo_rainbow_strong"
`;

  if (card.rarity && card.rarity.toLowerCase().includes('rare')) {
    luaContent += holoContent;
  }

  return luaContent;
}

// Generate or update language file
function generateLanguageFile(cards, setName) {
  const languageEntries = {
    expansionSet: `["expansion_set_ce_expansion_pokemon_${setCodeOutput}"] = "Pokemon ${setName}"`,
    cards: []
  };

  for (const card of cards) {
    if (!card.name) continue;

    const cardId = `ce_expansion_pokemon_${setCodeOutput}_${makeFileNameSafe(card.name)}`;
    const cardName = card.name.replace(/"/g, '\\"');

    // Build description from various card properties to get something like 'Rare Stage 2 Pokémon Card showing the Psychic-type Alakazam'
    let descriptionParts = [];

    if (card.rarity) descriptionParts.push(card.rarity);
    if (card.stage) descriptionParts.push(card.stage + ' Pokémon Card showing the');
    if (card.types && card.types.length > 0) {
      descriptionParts.push(card.types.join('/') + '-type');
    }
    descriptionParts.push(card.name);

    const cardDescription = descriptionParts.join(' ').replace(/"/g, '\\"');
    console.log(`  Card description: "${cardDescription}"`);

    languageEntries.cards.push(`    ["${cardId}"] = "${cardName}"`);
    languageEntries.cards.push(`    ["${cardId}_description"] = "${cardDescription}"`);
  }

  const luaContent = `return {
    --[[
        Expansion Sets
    --]]

    ${languageEntries.expansionSet},

    --[[
        Cards
    --]]
${languageEntries.cards.join(',\n')}
}
`;

  return luaContent;
}

async function main() {
  try {
    console.log(`Fetching Pokemon set: ${setCode}...`);

    // Fetch the set information
    const set = await tcgdex.set.get(setCode);
    console.log(`Found set: ${set.name}`);
    console.log(`Total cards in set: ${set.cardCount.total}`);

    // Get all cards from the set
    const allCards = set.cards;
    console.log(`Retrieved ${allCards.length} card references`);

    // Fetch full card data for each card
    console.log('\nFetching full card data...');
    const fullCards = [];
    for (let i = 0; i < allCards.length; i++) {
      const cardResume = allCards[i];
      try {
        const fullCard = await cardResume.getCard();
        fullCards.push(fullCard);
        if ((i + 1) % 10 === 0) {
          console.log(`  Fetched ${i + 1}/${allCards.length} cards...`);
        }
      } catch (err) {
        console.error(`  Failed to fetch card ${cardResume.id}: ${err.message}`);
      }
    }

    console.log(`\nTotal cards fetched: ${fullCards.length}`);

    // Extract plain data from cards (remove circular references)
    const plainCards = fullCards.map(card => cleanObject(card));

    // Save combined data.json
    const combinedData = {
      set: {
        id: set.id,
        name: set.name,
        serie: set.serie,
        cardCount: set.cardCount
      },
      cards: plainCards
    };
    const jsonOutput = join(OUTPUT_DIRECTORY, 'data.json');
    fs.writeFileSync(jsonOutput, JSON.stringify(combinedData, null, 2));
    console.log(`✓ Saved combined card data to ${jsonOutput}`);

    // Ensure unprocessed directory exists and is empty
    const unprocessedDir = join(OUTPUT_DIRECTORY, 'unprocessed');

    if (fs.existsSync(unprocessedDir)) {
      fs.rmSync(unprocessedDir, { recursive: true, force: true });
    }

    fs.mkdirSync(unprocessedDir, { recursive: true });

    // Ensure Lua directories exist
    fs.mkdirSync(LUA_CARDS_DIRECTORY, { recursive: true });
    fs.mkdirSync(LUA_LANGUAGES_DIRECTORY, { recursive: true });

    // Download all images and generate Lua files
    let downloaded = 0;
    let skipped = 0;
    const processedCards = [];

    for (let i = 0; i < fullCards.length; i++) {
      const card = fullCards[i];

      if (card.image && card.name && card.localId) {
        const imageUrl = card.image;

        // Create unique filename using name and localId
        let safeFilename = 'pokemon_' + setCodeOutput + '_' + makeFileNameSafe(card.name);
        let finalPath = join(unprocessedDir, safeFilename + '.png');
        const tempPath = join(unprocessedDir, makeHashFilename(imageUrl) + '.temp');

        // If the final PNG already exists, append a hash to avoid overwriting
        if (fs.existsSync(finalPath)) {
          safeFilename = 'pokemon_' + setCodeOutput + '_' + makeFileNameSafe(card.name) + '_' + makeHashFilename(imageUrl);
          finalPath = join(unprocessedDir, safeFilename + '.png');
        }

        console.log(`[${i + 1}/${fullCards.length}] Downloading: ${card.name} (${card.localId})`);

        const fullImageUrl = `${imageUrl}/high.png`;
        const downloadedPath = await downloadFile(fullImageUrl, tempPath);

        // Convert to PNG if it's not already a PNG
        if (!downloadedPath.endsWith('.png')) {
          console.log(`  Converting to PNG...`);
          await convertToPNG(downloadedPath, finalPath);
        } else {
          // If already PNG, just rename it
          fs.renameSync(downloadedPath, finalPath);
        }

        downloaded++;

        // Generate Lua card file
        const luaCardContent = generateCardLuaFile(card, safeFilename);
        const luaCardPath = join(LUA_CARDS_DIRECTORY, `${safeFilename}.lua`);
        fs.writeFileSync(luaCardPath, luaCardContent);
        console.log(`  Generated Lua file: ${luaCardPath}`);

        processedCards.push(card);
      } else {
        skipped++;
      }
    }

    // Generate language file
    console.log('\nGenerating language file...');
    const languageContent = generateLanguageFile(processedCards, set.name);
    const languagePath = join(LUA_LANGUAGES_DIRECTORY, 'en.lua');
    fs.writeFileSync(languagePath, languageContent);
    console.log(`✓ Generated language file: ${languagePath}`);

    console.log('\n✓ Download, conversion, and Lua generation complete!');
    console.log(`\t- Set: ${set.name} (${setCode})`);
    console.log(`\t- Total cards: ${fullCards.length}`);
    console.log(`\t- Downloaded and converted: ${downloaded} images to PNG`);
    console.log(`\t- Generated: ${downloaded} Lua card files`);
    console.log(`\t- Skipped: ${skipped} cards (no image URL)`);

    process.exit(0);
  } catch (error) {
    console.error('Error:', error.message);
    console.error(error);
    process.exit(1);
  }
}

main();
