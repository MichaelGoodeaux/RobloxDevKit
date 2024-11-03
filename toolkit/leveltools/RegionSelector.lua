-- RegionSelector.lua
-- This module allows the selection of regions in the game world.

local RegionSelector = {}
RegionSelector.__index = RegionSelector

function RegionSelector.new()
    local self = setmetatable({}, RegionSelector)
    self.startPosition = nil
    self.endPosition = nil
    return self
end

-- Function to set the starting position for selection
function RegionSelector:setStartPosition(position)
    self.startPosition = position
end

-- Function to set the ending position for selection
function RegionSelector:setEndPosition(position)
    self.endPosition = position
end

-- Function to get the selected region
function RegionSelector:getSelectedRegion()
    if not self.startPosition or not self.endPosition then
        error("Start and end positions must be set.")
    end

    local region = Region3.new(self.startPosition, self.endPosition)
    return region
end

return RegionSelector
