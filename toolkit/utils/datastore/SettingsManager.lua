-- SettingsManager.lua
-- This module manages game settings.

local SettingsManager = {}
SettingsManager.__index = SettingsManager

function SettingsManager.new()
    local self = setmetatable({}, SettingsManager)
    self.settings = {
        soundEnabled = true,
        musicVolume = 1,
        graphicsQuality = 2,
    }
    return self
end

function SettingsManager:getSetting(key)
    return self.settings[key] -- Retrieve a specific setting
end

function SettingsManager:setSetting(key, value)
    self.settings[key] = value -- Update a specific setting
end

function SettingsManager:resetSettings()
    self.settings = {
        soundEnabled = true,
        musicVolume = 1,
        graphicsQuality = 2,
    } -- Reset settings to default
end

return SettingsManager
