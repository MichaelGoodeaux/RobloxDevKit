-- BackgroundMusic.lua
-- This script plays background music in a loop.

local AudioManager = require(script.Parent.AudioManager)

-- Load background music (replace with your asset ID)
local musicAssetId = 112233445 -- Replace with your asset ID
AudioManager:loadSound("BackgroundMusic", musicAssetId)

-- Function to start background music
function playBackgroundMusic()
    AudioManager:playSound("BackgroundMusic")
    -- Loop the music
    local music = AudioManager.sounds["BackgroundMusic"]
    music.Looped = true
end

-- Start the background music
playBackgroundMusic()
