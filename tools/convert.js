import { convertPNGToVTF, VTF_FORMATS } from 'png-to-vtf';
import { readdir, copyFile } from 'fs/promises';
import { join, basename, extname } from 'path';


const designDir = '../design/processed';
const outputDir = '../materials/card_engine/expansions/ce_expansion_pokemon_base_set';

const files = await readdir(designDir);
const pngFiles = files.filter(file => extname(file).toLowerCase() === '.png');

console.log(`Found ${pngFiles.length} PNG files to convert...`);

for (const pngFile of pngFiles) {
  const inputPath = join(designDir, pngFile);

  // Copy the booster material as is too (we use the PNG directly in-game)
  if (pngFile.startsWith('pokemon_base_set_booster')) {
    console.log(`Copying booster material as is: ${pngFile}`);
    const outputPath = join(outputDir, pngFile);
    await copyFile(inputPath, outputPath);
  }

  const outputFile = basename(pngFile, '.png') + '.vtf';
  const outputPath = join(outputDir, outputFile);

  console.log(`Converting ${pngFile} -> ${outputFile}`);
  await convertPNGToVTF(inputPath, outputPath);
}

console.log('Done!');
