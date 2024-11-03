-- TerrainEditor.lua
-- This module provides tools for editing terrain in the game.

local TerrainEditor = {}
TerrainEditor.__index = TerrainEditor

function TerrainEditor.new()
    local self = setmetatable({}, TerrainEditor)
    self.terrain = game:GetService("Terrain")
    return self
end

-- Function to raise terrain at a specific position
function TerrainEditor:raiseTerrain(position, height)
    local size = Vector3.new(10, height, 10) -- Size of the area to raise
    self.terrain:FillBlock(position - size / 2, size, Enum.Material.Grass) -- Fill with grass material
end

-- Function to lower terrain at a specific position
function TerrainEditor:lowerTerrain(position, depth)
    local size = Vector3.new(10, depth, 10) -- Size of the area to lower
    self.terrain:FillBlock(position - size / 2, size, Enum.Material.Water) -- Fill with water material
end

return TerrainEditor
