-- TerrainEditor.lua
-- This module provides functions to edit terrain in the game.

local TerrainEditor = {}
TerrainEditor.__index = TerrainEditor

-- Function to set a voxel in the terrain
function TerrainEditor:setVoxel(x, y, z, material, size)
    local terrain = game.Workspace.Terrain -- Access the Terrain service
    terrain:FillBlock(CFrame.new(x, y, z), Vector3.new(size, size, size), material)
end

-- Function to create hills in a specified area
function TerrainEditor:createHills(startX, startY, startZ, width, depth, height)
    local terrain = game.Workspace.Terrain -- Access the Terrain service
    for x = 0, width - 1 do
        for z = 0, depth - 1 do
            local currentHeight = math.random(0, height)
            terrain:FillBlock(CFrame.new(startX + x, currentHeight / 2, startZ + z), Vector3.new(4, currentHeight, 4), Enum.Material.Grass)
        end
    end
end

-- Function to flatten an area
function TerrainEditor:flattenArea(startX, startY, startZ, width, depth, flatHeight)
    local terrain = game.Workspace.Terrain -- Access the Terrain service
    terrain:FillBlock(CFrame.new(startX, flatHeight / 2, startZ), Vector3.new(width, flatHeight, depth), Enum.Material.Grass)
end

return TerrainEditor
