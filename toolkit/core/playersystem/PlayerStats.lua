-- PlayerStats.lua
-- This module tracks player statistics.

local PlayerStats = {}
PlayerStats.__index = PlayerStats

-- Constructor for a new player stats
function PlayerStats.new(player)
    return setmetatable({
        player = player,
        health = 100,
        score = 0,
    }, PlayerStats)
end

-- Function to update health
function PlayerStats:updateHealth(amount)
    self.health = math.clamp(self.health + amount, 0, 100)
    print(self.player.Name .. "'s health: " .. self.health)
end

-- Function to add score
function PlayerStats:addScore(points)
    self.score = self.score + points
    print(self.player.Name .. "'s score: " .. self.score)
end

return PlayerStats
