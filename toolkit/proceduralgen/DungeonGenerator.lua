-- DungeonGenerator.lua
-- This module generates a simple dungeon layout.

local DungeonGenerator = {}
DungeonGenerator.__index = DungeonGenerator

function DungeonGenerator.new(sizeX, sizeY)
    local self = setmetatable({}, DungeonGenerator)
    self.sizeX = sizeX
    self.sizeY = sizeY
    self.dungeon = {}

    -- Initialize the dungeon with walls
    for x = 1, sizeX do
        self.dungeon[x] = {}
        for y = 1, sizeY do
            self.dungeon[x][y] = "Wall"
        end
    end

    -- Generate paths
    self:createPaths()
    return self
end

function DungeonGenerator:createPaths()
    -- Simple path generation logic (you can implement a more complex algorithm)
    for x = 2, self.sizeX - 1 do
        for y = 2, self.sizeY - 1 do
            if math.random() > 0.5 then
                self.dungeon[x][y] = "Path"
            end
        end
    end
end

function DungeonGenerator:display()
    local dungeonString = ""
    for y = 1, self.sizeY do
        for x = 1, self.sizeX do
            dungeonString = dungeonString .. self.dungeon[x][y]:sub(1, 1) -- Get the first letter of each tile
        end
        dungeonString = dungeonString .. "\n" -- New line for the next row
    end
    print(dungeonString) -- Output to the Roblox output console
end

return DungeonGenerator
