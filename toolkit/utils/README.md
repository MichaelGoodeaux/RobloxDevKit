# Utils

This folder contains utility scripts designed to streamline various operations within your Roblox game. These scripts offer functionalities for managing player data, game settings, and performing common operations on strings and tables.

## Scripts Included

1. **SaveLoadSystem.lua**
   - Handles saving and loading player data using Roblox's Data Store service.
   - Provides methods to save player data and retrieve it upon loading.

2. **SettingsManager.lua**
   - Manages game settings such as sound, music volume, and graphics quality.
   - Allows retrieving, updating, and resetting game settings.

3. **MathHelpers.lua**
   - Contains helper functions for mathematical operations.
   - Includes functions for clamping values, linear interpolation, and generating random numbers within a range.

4. **StringHelpers.lua**
   - Provides helper functions for common string operations.
   - Functions include capitalizing a string, splitting strings by a delimiter, and trimming whitespace.

5. **TableHelpers.lua**
   - Contains helper functions for manipulating tables.
   - Includes functions for checking if a value exists in a table, merging tables, and shuffling table elements.

## Usage Instructions

To utilize these utility scripts in your game, follow these steps:

1. **Import the Modules:**
   - You can require any of the modules in your main game script. For example:
     ```lua
     local SaveLoadSystem = require(script.Parent.Utils.SaveLoadSystem)
     local SettingsManager = require(script.Parent.Utils.SettingsManager)
     ```

2. **Using the SaveLoadSystem:**
   - Create an instance of the save/load system for a player:
     ```lua
     local playerData = SaveLoadSystem.new(player)
     playerData:saveData(data)
     local loadedData = playerData:loadData()
     ```

3. **Managing Game Settings:**
   - Create an instance of the settings manager:
     ```lua
     local settingsManager = SettingsManager.new()
     settingsManager:setSetting("musicVolume", 0.5)
     local volume = settingsManager:getSetting("musicVolume")
     ```

4. **Using MathHelpers:**
   - Call helper functions directly from the MathHelpers module:
     ```lua
     local clampedValue = MathHelpers.clamp(value, 0, 100)
     ```

5. **Using StringHelpers and TableHelpers:**
   - Similarly, you can use functions from StringHelpers and TableHelpers as needed:
     ```lua
     local splitStrings = StringHelpers.split("Hello,World", ",")
     local containsValue = TableHelpers.contains(myTable, value)
     ```