-- GameRounds.lua
-- This module manages game rounds, including starting and ending rounds.

local GameRounds = {}
GameRounds.__index = GameRounds

GameRounds.currentRound = 0
GameRounds.roundTime = 60 -- Duration of each round in seconds

-- Function to start a new round
function GameRounds:startRound()
    self.currentRound = self.currentRound + 1
    print("Starting round: " .. self.currentRound)
    
    -- Notify players that the round has started (implement as needed)
    
    -- Start round timer
    delay(self.roundTime, function()
        self:endRound()
    end)
end

-- Function to end the current round
function GameRounds:endRound()
    print("Ending round: " .. self.currentRound)
    
    -- Notify players of the round's end (implement as needed)
    
    -- Reset round if needed
end

return GameRounds
