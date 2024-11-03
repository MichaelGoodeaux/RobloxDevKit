-- HealthBar.lua
-- This module manages the player's health bar UI.

local HealthBar = {}
HealthBar.__index = HealthBar

function HealthBar.new(player)
    local self = setmetatable({}, HealthBar)
    self.player = player
    self.health = player:WaitForChild("Health")
    
    -- Create a ScreenGui for the health bar
    self.gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    self.bar = Instance.new("Frame", self.gui)
    self.bar.Size = UDim2.new(0.3, 0, 0.05, 0)
    self.bar.Position = UDim2.new(0.35, 0, 0.05, 0)
    self.bar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    
    -- Update the health bar
    self.health.Changed:Connect(function()
        self:updateHealth()
    end)

    return self
end

function HealthBar:updateHealth()
    local healthPercentage = self.health.Value / self.health.MaxValue
    self.bar.Size = UDim2.new(0.3 * healthPercentage, 0, 0.05, 0)
end

return HealthBar
