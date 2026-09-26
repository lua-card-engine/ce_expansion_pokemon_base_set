// Fills in the gameplay data TCGdex lacks (retreat cost, Trainer text, which Energy a card provides,
// two wrong EvolveFrom names) from pokemontcg.io, cached in design/pokemontcg.json. The card files
// download.js generates are kept, and each gets these Attributes:
//
//   RetreatCost = n                          every Pokémon
//   EvolveFrom = "Name"                      corrected where TCGdex has it wrong
//   EvolvesFromCard = "pokemon_base_set_x"   the unique ID of the card it evolves from
//   TrainerText = "..."                      every Trainer
//   PlayableAsBasic = true                   Clefairy Doll
//   Provides = { "Fire" }                    every Energy card
//
// Re-running replaces what an earlier run wrote. Run `npm run concat-cards` afterwards, since the
// game loads the concatenated sh_all_cards.lua.
//
// Usage: node enrich.js [--refresh]    (--refresh ignores the cache)

import fs from 'fs';
import https from 'https';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

const SET_ID = 'base1';
const CARD_PREFIX = 'pokemon_base_set_';
const CARDS_DIRECTORY = join(__dirname, '..', 'lua', 'ce_expansion_pokemon_base_set', 'cards');
const CACHE_PATH = join(__dirname, '..', 'design', 'pokemontcg.json');
const API_URL = `https://api.pokemontcg.io/v2/cards?q=set.id:${SET_ID}&pageSize=250`;

// Every key this tool writes, so a re-run can take out what the last one put in
const ENRICHED_KEYS = ['RetreatCost', 'EvolvesFromCard', 'TrainerText', 'PlayableAsBasic', 'Provides'];

// Lines are added just before this one, which every generated card file has
const INSERT_BEFORE = /^\tLegal = \{/;

function fetchJson(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (response) => {
      if (response.statusCode !== 200) {
        reject(new Error(`Failed to fetch ${url}: ${response.statusCode}`));
        return;
      }

      let body = '';
      response.setEncoding('utf8');
      response.on('data', (chunk) => (body += chunk));
      response.on('end', () => resolve(JSON.parse(body)));
    }).on('error', reject);
  });
}

async function loadSetData(refresh) {
  if (!refresh && fs.existsSync(CACHE_PATH)) {
    return JSON.parse(fs.readFileSync(CACHE_PATH, 'utf8'));
  }

  console.log(`Fetching ${API_URL}...`);

  const data = await fetchJson(API_URL);

  fs.writeFileSync(CACHE_PATH, JSON.stringify(data, null, 2));

  return data;
}

function luaString(value) {
  return `"${value.replace(/\\/g, '\\\\').replace(/"/g, '\\"').replace(/\n/g, '\\n')}"`;
}

// "Nidoran ♂" and "Nidoran♂" are the same card, and so are "Farfetch'd" and "Farfetch’d"
function normalizeName(name) {
  return name.toLowerCase().replace(/[\s'’.]/g, '');
}

function readAttribute(source, key) {
  const match = source.match(new RegExp(`^\\t${key} = "(.*)",?$`, 'm'));

  return match ? match[1] : null;
}

function readAttackNames(source) {
  const attacksStart = source.indexOf('\tAttacks = {');

  if (attacksStart === -1) {
    return [];
  }

  const attacksBlock = source.slice(attacksStart, source.indexOf('\n\t}', attacksStart));

  return [...attacksBlock.matchAll(/^\t\t\tName = "(.*)",?$/gm)].map((match) => match[1]);
}

function energyProvides(card) {
  if (card.name === 'Double Colorless Energy') {
    return ['Colorless', 'Colorless'];
  }

  return [card.name.replace(/ Energy$/, '')];
}

async function main() {
  const refresh = process.argv.includes('--refresh');
  const setData = await loadSetData(refresh);
  const byNumber = new Map(setData.data.map((card) => [card.number, card]));

  const files = fs.readdirSync(CARDS_DIRECTORY)
    .filter((fileName) => fileName.startsWith(CARD_PREFIX) && fileName.endsWith('.lua'));

  // The unique ID of every Pokémon, by its name, so an evolution can point at the card itself
  const idsByName = new Map();

  for (const fileName of files) {
    const source = fs.readFileSync(join(CARDS_DIRECTORY, fileName), 'utf8');
    const card = byNumber.get(readAttribute(source, 'LocalId'));

    if (card) {
      idsByName.set(normalizeName(card.name), fileName.replace(/\.lua$/, ''));
    }
  }

  const warnings = [];
  let written = 0;

  for (const fileName of files) {
    const path = join(CARDS_DIRECTORY, fileName);
    const source = fs.readFileSync(path, 'utf8').replace(/\r\n/g, '\n');
    const localId = readAttribute(source, 'LocalId');
    const card = byNumber.get(localId);

    if (!card) {
      warnings.push(`${fileName}: no card numbered ${localId} in the pokemontcg.io data`);
      continue;
    }

    const additions = [];
    let lines = source.split('\n')
      .filter((line) => !ENRICHED_KEYS.some((key) => line.startsWith(`\t${key} = `)));

    if (card.supertype === 'Pokémon') {
      additions.push(`\tRetreatCost = ${card.convertedRetreatCost || 0},`);

      if (card.evolvesFrom) {
        const fromID = idsByName.get(normalizeName(card.evolvesFrom));

        if (!fromID) {
          warnings.push(`${fileName}: cannot find the card ${card.name} evolves from (${card.evolvesFrom})`);
        } else {
          additions.push(`\tEvolvesFromCard = ${luaString(fromID)},`);
        }

        const fromName = card.evolvesFrom.replace(' ♂', '♂').replace(' ♀', '♀');

        lines = lines.map((line) => line.startsWith('\tEvolveFrom = ')
          ? `\tEvolveFrom = ${luaString(fromName)},`
          : line);
      }

      // The two sources have to agree on the order of attacks, since the scripts address them by index
      const localAttacks = readAttackNames(source);
      const remoteAttacks = (card.attacks || []).map((attack) => attack.name);

      if (localAttacks.join('|').toLowerCase() !== remoteAttacks.join('|').toLowerCase()) {
        warnings.push(`${fileName}: attacks differ, local [${localAttacks}] vs pokemontcg.io [${remoteAttacks}]`);
      }
    } else if (card.supertype === 'Trainer') {
      additions.push(`\tTrainerText = ${luaString((card.rules || []).join(' '))},`);

      if (card.name === 'Clefairy Doll') {
        additions.push('\tPlayableAsBasic = true,');
      }
    } else if (card.supertype === 'Energy') {
      additions.push(`\tProvides = { ${energyProvides(card).map(luaString).join(', ')} },`);
    }

    const insertAt = lines.findIndex((line) => INSERT_BEFORE.test(line));

    if (insertAt === -1) {
      warnings.push(`${fileName}: no "Legal = {" line to insert before`);
      continue;
    }

    lines.splice(insertAt, 0, ...additions);

    fs.writeFileSync(path, lines.join('\n'), 'utf8');
    written++;
  }

  console.log(`Enriched ${written} of ${files.length} card files.`);

  for (const warning of warnings) {
    console.warn(`  ! ${warning}`);
  }

  if (written > 0) {
    console.log('Now run `npm run concat-cards` to rebuild sh_all_cards.lua.');
  }
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
