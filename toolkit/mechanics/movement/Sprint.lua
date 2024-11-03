-- Sprint.lua
-- This module provides sprinting mechanics for players.

local Sprint = {}
Sprint.__index = Sprint

function Sprint.new(player)
    local self = setmetatable({}, Sprint)
    self.player = player
    self.originalWalkSpeed = player.Character.Humanoid.WalkSpeed
    return self
end

-- Function to activate sprinting
function Sprint:activate(duration, sprintSpeed)
    local humanoid = self.player.Character and self.player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = sprintSpeed -- Increase walk speed
        wait(duration)
        self:deactivate() -- Deactivate after duration
    end
end

-- Function to deactivate sprinting
function Sprint:deactivate()
    local humanoid = self.player.Character and self.player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.WalkSpeed = self.originalWalkSpeed -- Reset to original walk speed
    end
end

return Sprint
