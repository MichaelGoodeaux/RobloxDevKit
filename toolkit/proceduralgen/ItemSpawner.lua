-- ItemSpawner.lua
-- This module spawns items in the dungeon.

local ItemSpawner = {}
ItemSpawner.__index = ItemSpawner

function ItemSpawner.new(itemModel, spawnPositions)
    local self = setmetatable({}, ItemSpawner)
    self.itemModel = itemModel
    self.spawnPositions = spawnPositions
    return self
end

-- Function to spawn items at the defined positions
function ItemSpawner:spawnItems()
    for _, position in ipairs(self.spawnPositions) do
        local itemClone = self.itemModel:Clone()
        itemClone.Position = position
        itemClone.Parent = workspace
        -- Additional item setup can go here
    end
end

return ItemSpawner
