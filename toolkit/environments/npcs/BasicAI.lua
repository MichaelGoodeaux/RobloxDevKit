-- BasicAI.lua
-- This module implements basic AI for NPCs.

local BasicAI = {}
BasicAI.__index = BasicAI

-- Constructor for a new BasicAI instance
function BasicAI.new(npc, patrolPoints)
    local self = setmetatable({}, BasicAI)
    self.npc = npc
    self.patrolPoints = patrolPoints or {}
    self.currentPatrolIndex = 1
    self.isPatrolling = true
    return self
end

-- Function to move the NPC to the next patrol point
function BasicAI:patrol()
    if #self.patrolPoints == 0 then return end
    local targetPoint = self.patrolPoints[self.currentPatrolIndex]
    
    self.npc.Humanoid:MoveTo(targetPoint.Position)
    
    self.npc.Humanoid.MoveToFinished:Wait()
    
    self.currentPatrolIndex = self.currentPatrolIndex + 1
    if self.currentPatrolIndex > #self.patrolPoints then
        self.currentPatrolIndex = 1
    end
end

-- Function to start the AI behavior
function BasicAI:start()
    while self.isPatrolling do
        self:patrol()
        wait(2) -- Wait time before moving to the next point
    end
end

return BasicAI
