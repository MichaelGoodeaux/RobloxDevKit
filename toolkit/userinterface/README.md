# User Interface

This folder contains scripts that manage the user interface (UI) components of your Roblox game. The UI scripts provide essential functionalities for displaying player stats, managing menus, and tracking game events.

## Scripts Included

1. **HealthBar.lua**
   - Displays the player's health as a visual bar.
   - Updates in real-time as the player's health changes.

2. **ScoreTracker.lua**
   - Tracks and displays the player's current score.
   - Updates the score label dynamically as points are earned.

3. **Timer.lua**
   - Manages a countdown timer for the game.
   - Displays the remaining time on the screen, updating every second.

4. **MainMenu.lua**
   - Handles the main menu of the game.
   - Allows players to start the game and navigate from the menu.

5. **PauseMenu.lua**
   - Manages the pause menu that appears during gameplay.
   - Provides options to resume the game or exit to the main menu.

## Usage Instructions

To utilize these scripts in your game, follow these steps:

1. **Import the Modules:**
   - You can require any of the modules in your main game script. For example:
     ```lua
     local HealthBar = require(script.Parent.UserInterface.HealthBar)
     local ScoreTracker = require(script.Parent.UserInterface.ScoreTracker)
     ```

2. **Initialize Components:**
   - Create instances of the UI components for each player. For example:
     ```lua
     local healthBar = HealthBar.new(player)
     local scoreTracker = ScoreTracker.new(player)
     local timer = Timer.new(60) -- Starts a timer with 60 seconds
     ```

3. **Menu Management:**
   - Call the appropriate functions to manage the menus. For example, create a main menu when the game starts:
     ```lua
     local mainMenu = MainMenu.new()
     ```