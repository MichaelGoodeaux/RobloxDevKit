# Environments Folder

This folder contains scripts that manage the environmental aspects of your Roblox game, including AI behavior, shopkeeper functionality, day-night cycles, and weather systems. These scripts enhance the gameplay experience by adding dynamic elements and NPC interactions.

## Scripts Overview

### 1. BasicAI.lua

**Purpose**:  
Implements basic AI for NPCs, allowing them to patrol between predefined points or follow players.

**Key Functions**:
- `new(npc, patrolPoints)`: Creates a new instance of BasicAI for an NPC.
- `patrol()`: Moves the NPC to the next patrol point.
- `start()`: Starts the patrolling behavior.

### 2. Shopkeeper.lua

**Purpose**:  
Defines a shopkeeper NPC that can sell items to players.

**Key Functions**:
- `new(npc)`: Creates a new shopkeeper instance.
- `displayItems(player)`: Displays items available for sale to the player.
- `sellItem(player, itemName)`: Sells an item to the player if available.

### 3. DayNightCycle.lua

**Purpose**:  
Manages the day-night cycle in the game, transitioning between day and night over a specified duration.

**Key Functions**:
- `new()`: Initializes a new DayNightCycle instance.
- `start()`: Starts the day-night cycle.

### 4. WeatherSystem.lua

**Purpose**:  
Controls weather effects, such as rain or clear weather.

**Key Functions**:
- `new()`: Initializes a new WeatherSystem instance.
- `enableRain()`: Enables rain in the game.
- `disableRain()`: Disables rain.
- `clearWeather()`: Clears any weather effects, making it sunny.

## How to Use

1. **Loading Modules**: Use the `require` function to load these modules in your main game script.
   
   ```lua
   local BasicAI = require(script.Parent.Environments.BasicAI)
   local Shopkeeper = require(script.Parent.Environments.Shopkeeper)
   local DayNightCycle = require(script.Parent.Environments.DayNightCycle)
   local WeatherSystem = require(script.Parent.Environments.WeatherSystem)
```

2. **Creating Instances**: Instantiate the necessary classes in your main game logic.

3. **Integrating into Game Logic**: Use these scripts to add dynamic interactions and environmental changes to your game.

## Usage/Examples

Here’s an example of how to use these scripts in your main game logic:

```lua
-- MainGameScript.lua

local BasicAI = require(script.Parent.Environments.BasicAI)
local Shopkeeper = require(script.Parent.Environments.Shopkeeper)
local DayNightCycle = require(script.Parent.Environments.DayNightCycle)
local WeatherSystem = require(script.Parent.Environments.WeatherSystem)

-- Create instances of the systems
local dayNightCycle = DayNightCycle.new()
local weatherSystem = WeatherSystem.new()

-- Start day-night cycle
dayNightCycle:start()

-- Set up a shopkeeper
local shopkeeperNpc = game.Workspace.Shopkeeper -- Assuming there's a Shopkeeper NPC in Workspace
local shopkeeper = Shopkeeper.new(shopkeeperNpc)

-- Display items for sale
shopkeeper:displayItems()

-- Example AI for NPCs
local patrolPoints = {game.Workspace.PatrolPoint1, game.Workspace.PatrolPoint2}
local npc = game.Workspace.NPC -- Replace with your NPC
local npcAI = BasicAI.new(npc, patrolPoints)
npcAI:start()
```