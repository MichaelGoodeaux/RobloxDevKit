-- PathfindingHelper.lua
-- This module provides pathfinding utilities.

local PathfindingHelper = {}
PathfindingHelper.__index = PathfindingHelper

function PathfindingHelper.new()
    local self = setmetatable({}, PathfindingHelper)
    self.pathfinder = game:GetService("PathfindingService")
    return self
end

-- Function to calculate a path from a start position to a target position
function PathfindingHelper:calculatePath(startPosition, targetPosition)
    local path = self.pathfinder:CreatePath({
        AgentRadius = 2,
        AgentHeight = 5,
        AgentCanJump = true,
        AgentJumpHeight = 10,
        AgentMaxSlope = 45,
    })

    path:ComputeAsync(startPosition, targetPosition)
    return path
end

-- Function to follow a path
function PathfindingHelper:followPath(path, humanoid)
    path:MoveTo(humanoid)
end

return PathfindingHelper
