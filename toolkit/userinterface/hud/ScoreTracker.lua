-- ScoreTracker.lua
-- This module tracks and displays the player's score.

local ScoreTracker = {}
ScoreTracker.__index = ScoreTracker

function ScoreTracker.new(player)
    local self = setmetatable({}, ScoreTracker)
    self.player = player
    self.score = 0
    
    -- Create a ScreenGui for the score tracker
    self.gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
    self.scoreLabel = Instance.new("TextLabel", self.gui)
    self.scoreLabel.Size = UDim2.new(0.3, 0, 0.05, 0)
    self.scoreLabel.Position = UDim2.new(0.05, 0, 0.05, 0)
    self.scoreLabel.BackgroundTransparency = 1
    self.scoreLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    self.scoreLabel.TextScaled = true

    self:updateScore(0) -- Initialize score display

    return self
end

function ScoreTracker:updateScore(amount)
    self.score = self.score + amount
    self.scoreLabel.Text = "Score: " .. self.score
end

return ScoreTracker
