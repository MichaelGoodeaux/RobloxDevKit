-- ObjectPlacer.lua
-- This module enables placing objects in the game world.

local ObjectPlacer = {}
ObjectPlacer.__index = ObjectPlacer

function ObjectPlacer.new()
    local self = setmetatable({}, ObjectPlacer)
    self.selectedObject = nil
    return self
end

-- Function to select an object to place
function ObjectPlacer:selectObject(object)
    self.selectedObject = object
end

-- Function to place the selected object at the target position
function ObjectPlacer:placeObject(position)
    if not self.selectedObject then
        error("No object selected for placement.")
    end

    local newObject = self.selectedObject:Clone()
    newObject.Position = position
    newObject.Parent = game.Workspace
end

return ObjectPlacer
