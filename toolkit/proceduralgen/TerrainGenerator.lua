--[[ 
  TerrainGenerator.lua
  ====================
  This script generates a simple, random terrain by creating a grid of parts
  in the Workspace. Each "tile" will have a random height, giving the effect of hills and valleys.
  
  Customize settings below to change the terrain’s look.
]]

-- Settings (use local to keep these variables properly scoped)
local gridSizeX = 20        -- Number of tiles along the X axis
local gridSizeZ = 20        -- Number of tiles along the Z axis
local tileSize = 10         -- Width and depth of each tile
local maxHeight = 20        -- Maximum height of each tile

-- Function to generate a random height for each tile
local function generateHeight()
    return math.random(0, maxHeight)
end

-- Function to create a single terrain tile
local function createTile(x, z, height)
    local tile = Instance.new("Part")
    tile.Size = Vector3.new(tileSize, height, tileSize)         -- Set size with random height
    tile.Position = Vector3.new(x * tileSize, height / 2, z * tileSize) -- Adjust position based on height
    tile.Anchored = true                                        -- Anchor the tile so it stays in place
    tile.Material = Enum.Material.Grass                         -- Give it a grass material
    tile.Parent = game.Workspace                                -- Add the tile to the Workspace
end

-- Function to generate the full terrain grid
local function generateTerrain()
    for x = 1, gridSizeX do
        for z = 1, gridSizeZ do
            local height = generateHeight()
            createTile(x, z, height)
        end
    end
end

-- Run the terrain generation
generateTerrain()
