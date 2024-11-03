# Core Folder

This folder contains essential scripts for managing game mechanics in your Roblox project. It includes functionality for game rounds, player spawning, inventory management, and player statistics. These scripts provide the backbone for the game's core logic and player interactions.

## Scripts Overview

### 1. GameRounds.lua

**Purpose**:  
Manages the game rounds, including starting and ending rounds.

**Key Functions**:
- `startRound()`: Initiates a new game round and starts a timer.
- `endRound()`: Ends the current round and can reset or prepare for the next round.

### 2. SpawnSystem.lua

**Purpose**:  
Handles player spawning mechanics in the game.

**Key Functions**:
- `initSpawnPoints()`: Initializes the spawn points from the workspace.
- `spawnPlayer(player)`: Spawns the player at a random spawn location.

### 3. Inventory.lua

**Purpose**:  
Manages player inventories, allowing players to collect and use items.

**Key Functions**:
- `addItem(itemName)`: Adds an item to the player's inventory.
- `removeItem(itemName)`: Removes an item from the player's inventory.
- `getItems()`: Returns a list of items currently in the inventory.

### 4. PlayerStats.lua

**Purpose**:  
Tracks and manages player statistics, such as health and score.

**Key Functions**:
- `updateHealth(amount)`: Updates the player's health by a specified amount.
- `addScore(points)`: Increases the player's score by a specified number of points.

## How to Use

1. **Loading Modules**: Use the `require` function to load these modules into your main game script.
   
   ```lua
   local GameRounds = require(script.Parent.Core.GameRounds)
   local SpawnSystem = require(script.Parent.Core.SpawnSystem)
   local Inventory = require(script.Parent.Core.Inventory)
   local PlayerStats = require(script.Parent.Core.PlayerStats)
