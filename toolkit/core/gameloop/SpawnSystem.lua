-- SpawnSystem.lua
-- This module manages player spawning.

local SpawnSystem = {}
SpawnSystem.__index = SpawnSystem

SpawnSystem.spawnPoints = {} -- Table to hold spawn points

-- Function to initialize spawn points
function SpawnSystem:initSpawnPoints()
    for _, spawn in ipairs(workspace.SpawnPoints:GetChildren()) do
        if spawn:IsA("SpawnLocation") then
            table.insert(self.spawnPoints, spawn)
        end
    end
end

-- Function to spawn a player at a random spawn point
function SpawnSystem:spawnPlayer(player)
    local spawnIndex = math.random(1, #self.spawnPoints)
    local spawnLocation = self.spawnPoints[spawnIndex]
    
    player.Character:SetPrimaryPartCFrame(spawnLocation.CFrame)
    print(player.Name .. " has spawned at " .. spawnLocation.Name)
end

return SpawnSystem
