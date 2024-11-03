-- SoundPlayer.lua
-- This script demonstrates how to play sounds using the AudioManager.

local AudioManager = require(script.Parent.AudioManager)

-- Example sound asset IDs (replace with actual IDs)
local soundAssetIds = {
    jump = 123456789, -- Replace with your asset ID
    coinCollect = 987654321 -- Replace with your asset ID
}

-- Load sounds
AudioManager:loadSound("JumpSound", soundAssetIds.jump)
AudioManager:loadSound("CoinCollectSound", soundAssetIds.coinCollect)

-- Function to play the jump sound
function playJumpSound()
    AudioManager:playSound("JumpSound")
end

-- Function to play the coin collect sound
function playCoinCollectSound()
    AudioManager:playSound("CoinCollectSound")
end

-- Connect to events (example)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Play sound when player jumps
character.Humanoid.Jumping:Connect(playJumpSound)

-- Example event to play coin collect sound (trigger this appropriately in your game)
game.Workspace.CoinCollectedEvent.OnServerEvent:Connect(playCoinCollectSound)
