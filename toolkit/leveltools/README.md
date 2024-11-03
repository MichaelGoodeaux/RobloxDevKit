# Level Tools Folder

This folder contains scripts that provide essential tools for designing and editing levels in your Roblox game. These scripts facilitate object placement, pathfinding, region selection, and terrain editing, making level design more efficient and dynamic.

## Scripts Overview

### 1. ObjectPlacer.lua

**Purpose**:  
Allows players or developers to place objects in the game world.

**Key Functions**:
- `new()`: Initializes a new instance of the ObjectPlacer.
- `selectObject(object)`: Selects an object for placement.
- `placeObject(position)`: Places the selected object at a specified position in the game world.

### 2. PathfindingHelper.lua

**Purpose**:  
Assists with pathfinding for NPCs or objects, allowing them to navigate the game world intelligently.

**Key Functions**:
- `new()`: Initializes a new instance of PathfindingHelper.
- `calculatePath(startPosition, targetPosition)`: Calculates a path from a starting position to a target position.
- `followPath(path, humanoid)`: Directs a humanoid character to follow the calculated path.

### 3. RegionSelector.lua

**Purpose**:  
Enables the selection of regions within the game world for various purposes, such as spawning or editing.

**Key Functions**:
- `new()`: Initializes a new instance of RegionSelector.
- `setStartPosition(position)`: Sets the starting position for region selection.
- `setEndPosition(position)`: Sets the ending position for region selection.
- `getSelectedRegion()`: Retrieves the selected region as a Region3 object.

### 4. TerrainEditor.lua

**Purpose**:  
Provides tools for editing terrain in the game, including raising and lowering terrain blocks.

**Key Functions**:
- `new()`: Initializes a new instance of TerrainEditor.
- `raiseTerrain(position, height)`: Raises terrain at a specified position by a given height.
- `lowerTerrain(position, depth)`: Lowers terrain at a specified position by a given depth.

## How to Use

1. **Loading Modules**: Use the `require` function to load these modules in your main game script.

   ```lua
   local ObjectPlacer = require(script.Parent.LevelTools.ObjectPlacer)
   local PathfindingHelper = require(script.Parent.LevelTools.PathfindingHelper)
   local RegionSelector = require(script.Parent.LevelTools.RegionSelector)
   local TerrainEditor = require(script.Parent.LevelTools.TerrainEditor)
```

2. Creating Instances: Instantiate the necessary classes for your level design tasks.

3. Integrating into Game Logic: Use these scripts to add interactivity and functionality to your level design process.

## Usage/Examples

Here’s an example of how to use these scripts in your main game logic:

```lua
-- MainGameScript.lua

local ObjectPlacer = require(script.Parent.LevelTools.ObjectPlacer)
local PathfindingHelper = require(script.Parent.LevelTools.PathfindingHelper)
local RegionSelector = require(script.Parent.LevelTools.RegionSelector)
local TerrainEditor = require(script.Parent.LevelTools.TerrainEditor)

-- Create instances of the tools
local objectPlacer = ObjectPlacer.new()
local pathfindingHelper = PathfindingHelper.new()
local regionSelector = RegionSelector.new()
local terrainEditor = TerrainEditor.new()

-- Example of selecting and placing an object
local objectToPlace = game.ServerStorage.MyObject -- Assuming you have an object in ServerStorage
objectPlacer:selectObject(objectToPlace)
objectPlacer:placeObject(Vector3.new(0, 10, 0)) -- Place at position (0, 10, 0)

-- Example of pathfinding
local path = pathfindingHelper:calculatePath(Vector3.new(0, 10, 0), Vector3.new(50, 10, 50))
path:ComputeAsync(Vector3.new(0, 10, 0), Vector3.new(50, 10, 50))

-- Example of selecting a region
regionSelector:setStartPosition(Vector3.new(-10, 0, -10))
regionSelector:setEndPosition(Vector3.new(10, 0, 10))
local selectedRegion = regionSelector:getSelectedRegion()

-- Example of editing terrain
terrainEditor:raiseTerrain(Vector3.new(0, 0, 0), 5) -- Raise terrain at (0, 0, 0) by 5 units
```