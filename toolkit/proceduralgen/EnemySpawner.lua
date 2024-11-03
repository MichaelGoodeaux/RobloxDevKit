-- EnemySpawner.lua
-- This module spawns enemies in the dungeon.

local EnemySpawner = {}
EnemySpawner.__index = EnemySpawner

function EnemySpawner.new(enemyModel, spawnPositions)
    local self = setmetatable({}, EnemySpawner)
    self.enemyModel = enemyModel
    self.spawnPositions = spawnPositions
    return self
end

-- Function to spawn enemies at the defined positions
function EnemySpawner:spawnEnemies()
    for _, position in ipairs(self.spawnPositions) do
        local enemyClone = self.enemyModel:Clone()
        enemyClone.Position = position
        enemyClone.Parent = workspace
        -- Additional enemy setup can go here
    end
end

return EnemySpawner
