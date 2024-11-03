-- Timer.lua
-- This module manages a countdown timer.

local Timer = {}
Timer.__index = Timer

function Timer.new(duration)
    local self = setmetatable({}, Timer)
    self.timeLeft = duration
    
    -- Create a ScreenGui for the timer
    self.gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
    self.timerLabel = Instance.new("TextLabel", self.gui)
    self.timerLabel.Size = UDim2.new(0.3, 0, 0.05, 0)
    self.timerLabel.Position = UDim2.new(0.05, 0, 0.1, 0)
    self.timerLabel.BackgroundTransparency = 1
    self.timerLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    self.timerLabel.TextScaled = true

    self:start()

    return self
end

function Timer:start()
    while self.timeLeft > 0 do
        wait(1)
        self.timeLeft = self.timeLeft - 1
        self.timerLabel.Text = "Time Left: " .. self.timeLeft
    end
end

return Timer
