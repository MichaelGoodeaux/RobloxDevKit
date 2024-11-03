# Roblox Game DevKit

Welcome to the Roblox Game DevKit! This repository contains a collection of reusable and customizable scripts designed to assist game creators in building their own games on the Roblox platform. The devkit includes a variety of tools, utilities, and systems to enhance gameplay and streamline development.

## Folder Structure

```
.
└── toolkit/
    ├── admintools/
    │   ├── AdminPermissions.lua
    │   ├── BanSystem.lua
    │   ├── GiveItem.lua
    │   ├── KickPlayer.lua
    │   ├── SetPlayerStat.lua
    │   └── TeleportPlayer.lua
    ├── audio/
    │   ├── AudioManager.lua
    │   ├── BackgroundMusic.lua
    │   ├── SoundEffects.lua
    │   └── SoundPlayer.lua
    ├── core/
    │   ├── gameloop/
    │   │   ├── GameRounds.lua
    │   │   └── SpawnSystem.lua
    │   └── playersystem/
    │       ├── Inventory.lua
    │       └── PlayerStats.lua
    ├── environments/
    │   ├── npcs/
    │   │   ├── BasicAI.lua
    │   │   └── Shopkeeper.lua
    │   ├── DayNightCycle.lua
    │   └── WeatherSystem.lua
    ├── leveltools/
    │   ├── ObjectPlacer.lua
    │   ├── PathfindingHelper.lua
    │   ├── RegionSelector.lua
    │   └── TerrainEditor.lua
    ├── mechanics/
    │   ├── combat/
    │   │   └── HealthSystem.lua
    │   └── movement/
    │       ├── JumpBoost.lua
    │       └── Sprint.lua
    ├── proceduralgen/
    │   ├── DungeonGenerator.lua
    │   ├── EnemySpawner.lua
    │   ├── ItemSpawner.lua
    │   └── TerrainGenerator.lua
    ├── userinterface/
    │   ├── hud/
    │   │   ├── HealthBar.lua
    │   │   ├── ScoreTracker.lua
    │   │   └── Timer.lua
    │   └── menus/
    │       ├── MainMenu.lua
    │       └── PauseMenu.lua
    ├── utils/
    │   ├── datastore/
    │   │   ├── SaveLoadSystem.lua
    │   │   └── SettingsManager.lua
    │   ├── MathHelpers.lua
    │   ├── StringHelpers.lua
    │   └── TableHelpers.lua
    ├── HowToWriteLuau.lua
    └── SoftwareEngineeringTips.lua
```

### Description of Folders

- **Admin**: Scripts for managing player privileges, such as kicking and banning players.
- **Audio**: Scripts for handling background music and sound effects.
- **Core**: Central game mechanics including game rounds, spawn systems, inventory management, and player statistics.
- **Environments**: Scripts for AI behaviors, environmental cycles, and shopkeeper functionality.
- **LevelTools**: Tools for placing objects, pathfinding assistance, region selection, and terrain editing.
- **Mechanics**: Scripts for game mechanics such as health systems, jump boosts, and sprinting.
- **ProceduralGeneration**: Scripts for generating game elements like dungeons and terrain procedurally.
- **UserInterface**: Scripts for managing the game UI, including health bars, menus, and score tracking.
- **Utils**: Utility scripts providing essential functions for data management, settings, and helper operations.

## Getting Started

To get started with this devkit:

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/MichaelGoodeaux/RobloxDevKit.git
   ```

2. Open the Project in Visual Studio Code or your favorite code editor.

3. Explore the Scripts. Familiarize yourself with the scripts in each folder and see how they can be integrated into your game.

4. Modify and Customize. Feel free to modify the scripts to fit your specific game requirements.

## Contributing

Contributions to improve the devkit or add new features are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the GNU General Public License v3.0 License. See the [LICENSE](https://choosealicense.com/licenses/gpl-3.0/) file for more details.