-- HealthSystems.lua
-- This module manages player health and related mechanics.

local HealthSystems = {}
HealthSystems.__index = HealthSystems

function HealthSystems.new(player)
    local self = setmetatable({}, HealthSystems)
    self.player = player
    self.health = 100 -- Default health
    return self
end

-- Function to take damage
function HealthSystems:takeDamage(amount)
    self.health = self.health - amount
    if self.health <= 0 then
        self:die()
    end
end

-- Function to heal the player
function HealthSystems:heal(amount)
    self.health = math.min(self.health + amount, 100) -- Max health is 100
end

-- Function to handle player death
function HealthSystems:die()
    print(self.player.Name .. " has died.")
    self.health = 0
    -- Additional death handling logic can go here (e.g., respawning)
end

-- Function to get current health
function HealthSystems:getHealth()
    return self.health
end

return HealthSystems
