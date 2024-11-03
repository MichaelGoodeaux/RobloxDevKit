-- JumpBoost.lua
-- This module provides a jump boost mechanic for players.

local JumpBoost = {}
JumpBoost.__index = JumpBoost

function JumpBoost.new(player)
    local self = setmetatable({}, JumpBoost)
    self.player = player
    self.originalJumpPower = player.Character.Humanoid.JumpPower
    return self
end

-- Function to activate the jump boost
function JumpBoost:activate(duration, boostAmount)
    local humanoid = self.player.Character and self.player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.JumpPower = self.originalJumpPower + boostAmount -- Increase jump power
        wait(duration)
        self:deactivate() -- Deactivate after duration
    end
end

-- Function to deactivate the jump boost
function JumpBoost:deactivate()
    local humanoid = self.player.Character and self.player.Character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.JumpPower = self.originalJumpPower -- Reset to original jump power
    end
end

return JumpBoost
