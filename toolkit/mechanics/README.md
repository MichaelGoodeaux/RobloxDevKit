# Mechanics Folder

This folder contains scripts that implement essential gameplay mechanics for your Roblox game. These scripts manage player health, provide jump boosts, and enable sprinting, enhancing the overall player experience.

## Scripts Overview

### 1. HealthSystems.lua

**Purpose**:  
Manages player health, including health initialization, damage handling, and healing.

**Key Functions**:
- `new(player)`: Initializes a new instance for a specific player.
- `takeDamage(amount)`: Reduces the player's health by a specified amount.
- `heal(amount)`: Restores health to the player, capped at 100.
- `die()`: Handles the player’s death.
- `getHealth()`: Returns the current health of the player.

### 2. JumpBoost.lua

**Purpose**:  
Provides a temporary jump boost for players when activated.

**Key Functions**:
- `new(player)`: Initializes a new instance for a specific player.
- `activate(duration, boostAmount)`: Activates the jump boost for a specified duration with a defined increase in jump power.
- `deactivate()`: Resets the player's jump power to its original value.

### 3. Sprint.lua

**Purpose**:  
Enables players to sprint, increasing their movement speed for a limited time.

**Key Functions**:
- `new(player)`: Initializes a new instance for a specific player.
- `activate(duration, sprintSpeed)`: Activates sprinting for a specified duration at a defined speed.
- `deactivate()`: Resets the player's walk speed to its original value.

## How to Use

1. **Loading Modules**: Use the `require` function to load these modules in your main game script.

   ```lua
   local HealthSystems = require(script.Parent.Mechanics.HealthSystems)
   local JumpBoost = require(script.Parent.Mechanics.JumpBoost)
   local Sprint = require(script.Parent.Mechanics.Sprint)
```

2. Creating Instances: Instantiate the necessary classes for your player mechanics.

3. Integrating into Game Logic: Use these scripts to add interactivity and functionality to your gameplay mechanics.

## Usage/Example

```lua
-- MainGameScript.lua

local Players = game:GetService("Players")
local HealthSystems = require(script.Parent.Mechanics.HealthSystems)
local JumpBoost = require(script.Parent.Mechanics.JumpBoost)
local Sprint = require(script.Parent.Mechanics.Sprint)

-- Function to handle a player joining
local function onPlayerAdded(player)
    local healthSystem = HealthSystems.new(player)
    local jumpBoost = JumpBoost.new(player)
    local sprint = Sprint.new(player)

    -- Example of taking damage
    healthSystem:takeDamage(20)
    print("Current Health: " .. healthSystem:getHealth())

    -- Example of jump boost
    jumpBoost:activate(5, 50) -- Activate jump boost for 5 seconds

    -- Example of sprinting
    sprint:activate(5, 50) -- Activate sprint for 5 seconds
end

-- Connect the player added event
Players.PlayerAdded:Connect(onPlayerAdded)
```