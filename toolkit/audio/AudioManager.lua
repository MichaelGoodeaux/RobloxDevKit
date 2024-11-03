-- AudioManager.lua
-- This module handles loading and playing audio assets in the game.

local AudioManager = {}
AudioManager.__index = AudioManager

-- Table to hold sound instances
AudioManager.sounds = {}

-- Function to load a sound
function AudioManager:loadSound(name, assetId)
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://" .. assetId
    sound.Name = name
    sound.Parent = workspace -- Or any other parent you'd like
    self.sounds[name] = sound
end

-- Function to play a sound
function AudioManager:playSound(name)
    local sound = self.sounds[name]
    if sound then
        sound:Play()
    else
        warn("Sound '" .. name .. "' not found!")
    end
end

-- Function to stop a sound
function AudioManager:stopSound(name)
    local sound = self.sounds[name]
    if sound then
        sound:Stop()
    else
        warn("Sound '" .. name .. "' not found!")
    end
end

-- Function to set volume
function AudioManager:setVolume(name, volume)
    local sound = self.sounds[name]
    if sound then
        sound.Volume = volume
    else
        warn("Sound '" .. name .. "' not found!")
    end
end

return AudioManager
