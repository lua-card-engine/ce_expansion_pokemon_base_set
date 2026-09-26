# 🃏 CardEngine Expansion Set: Pokémon Base

This repository contains the Pokémon Base Expansion Set for the yet to be released CardEngine, a comprehensive collectible card framework for Garry's Mod. This expansion set introduces a variety of cards for players to collect and trade.

<img src="booster-packs.jpg" alt="Screenshot showing a close-up of the Pokémon Base Booster Packs in-game on a concrete floor" width="600">

## 🚀 Usage

To use this expansion set in your Garry's Mod server, follow these steps:

1. Ensure CardEngine is already installed on your Garry's Mod server.

2. [Download](https://github.com/lua-card-engine/ce_expansion_pokemon_base_set/archive/refs/heads/main.zip) this repository to your local machine.

3. Extract the downloaded zip file into a folder named `ce_expansion_pokemon_base_set` inside the `garrysmod/addons/` directory of your Garry's Mod installation.

4. (Optional) After downloading from git the folder will be named `ce_expansion_pokemon_base_set-main`. Rename it to `ce_expansion_pokemon_base_set`, which is a cleaner name.

5. After the above steps, the folder structure should look like this:

    ```plaintext
    garrysmod/
    └── addons/
        └── ce_expansion_pokemon_base_set/
            ├── design/
            │   └── ...
            ├── lua/
            │   ├── autorun/
            │   │   └── ce_expansion_pokemon_base_set.lua
            │   └── ce_expansion_pokemon_base_set/
            │       └── ...
            ├── materials/
            │   └── card_engine/
            │       └── expansions/
            │           └── ce_expansion_pokemon_base_set/
            ├── tools/
            │   └── ...
            └── ...
    ```

**That's it!** You can now (re)start your Garry's Mod server and enjoy the Pokémon Base Expansion Set in CardEngine.

[&raquo; See Advanced Usage if you want to self-host the card materials](ADVANCED_USAGE.md)

## 📄 License

The code in this repository is licensed under the [MIT License](LICENSE).

The card designs and artwork are the property of their respective owners and are used here for educational and non-commercial purposes only. They can be retrieved from public sources like: [Pokémon TCG Database](https://pokemontcg.io/) and [TCGDex](https://tcgdex.dev/). Please respect the intellectual property rights of the original creators.
