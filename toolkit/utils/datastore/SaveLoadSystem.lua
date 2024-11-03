-- SaveLoadSystem.lua
-- This module handles saving and loading player data.

local SaveLoadSystem = {}
SaveLoadSystem.__index = SaveLoadSystem

function SaveLoadSystem.new(player)
    local self = setmetatable({}, SaveLoadSystem)
    self.player = player
    self.dataStore = game:GetService("DataStoreService"):GetDataStore("PlayerData") -- Set up the data store
    return self
end

function SaveLoadSystem:saveData(data)
    local success, errorMessage = pcall(function()
        self.dataStore:SetAsync(self.player.UserId, data) -- Save data to the data store
    end)
    if not success then
        warn("Failed to save data: " .. errorMessage)
    end
end

function SaveLoadSystem:loadData()
    local success, data = pcall(function()
        return self.dataStore:GetAsync(self.player.UserId) -- Load data from the data store
    end)
    if success and data then
        return data
    else
        warn("Failed to load data: " .. (data or "No data found"))
        return nil
    end
end

return SaveLoadSystem
