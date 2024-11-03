# Procedural Generation

This folder contains scripts that facilitate procedural generation in your Roblox game. Procedural generation is a method of creating game content algorithmically rather than manually, allowing for more varied and dynamic environments and gameplay experiences.

## Scripts Included

1. **DungeonGenerator.lua**
   - Generates a simple dungeon layout with walls and paths. 
   - The dungeon structure is stored in a 2D table, allowing for easy manipulation and display.

2. **EnemySpawner.lua**
   - Handles the spawning of enemies within the game.
   - Allows for customization of spawn locations and timing.

3. **ItemSpawner.lua**
   - Manages the spawning of items in the game world.
   - Supports customizable item types and spawn conditions.

4. **TerrainGenerator.lua**
   - Creates a random terrain layout by generating a grid of tiles with varying heights.
   - This results in a more natural-looking landscape with hills and valleys.

## Usage Instructions

To utilize these scripts, follow these steps:

1. **Import the Module:**
   - You can require any of the modules in your main game script. For example:
     ```lua
     local DungeonGenerator = require(script.Parent.ProceduralGeneration.DungeonGenerator)
     ```

2. **Generate Content:**
   - Call the appropriate functions to generate your desired content. For example:
     ```lua
     local dungeon = DungeonGenerator.new(10, 10) -- Create a dungeon of size 10x10
     dungeon:display() -- Display the dungeon layout in the output console
     ```

3. **Customize as Needed:**
   - Feel free to modify the parameters and logic within each script to fit your game's design needs.