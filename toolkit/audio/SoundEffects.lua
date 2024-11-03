-- SoundEffects.lua
-- This script manages various sound effects for the game.

local AudioManager = require(script.Parent.AudioManager)

-- Example sound asset IDs for sound effects (replace with actual IDs)
local soundEffectAssetIds = {
    explosion = 123456789, -- Replace with your asset ID for explosion sound
    jump = 987654321, -- Replace with your asset ID for jump sound
    collect = 112233445, -- Replace with your asset ID for collect sound
}

-- Load sound effects
AudioManager:loadSound("ExplosionSound", soundEffectAssetIds.explosion)
AudioManager:loadSound("JumpSound", soundEffectAssetIds.jump)
AudioManager:loadSound("CollectSound", soundEffectAssetIds.collect)

-- Function to play explosion sound
function playExplosionSound()
    AudioManager:playSound("ExplosionSound")
end

-- Function to play jump sound
function playJumpSound()
    AudioManager:playSound("JumpSound")
end

-- Function to play collect sound
function playCollectSound()
    AudioManager:playSound("CollectSound")
end

-- Connect sound effects to game events
game.Workspace.ExplosionEvent.OnServerEvent:Connect(playExplosionSound)
game.Players.LocalPlayer.Character.Humanoid.Jumping:Connect(playJumpSound)

-- Example event for collecting an item
game.Workspace.ItemCollectedEvent.OnServerEvent:Connect(playCollectSound)

-- Optionally, you can set volumes for sound effects
AudioManager:setVolume("ExplosionSound", 0.7) -- Set explosion sound volume to 70%
AudioManager:setVolume("JumpSound", 0.5) -- Set jump sound volume to 50%
AudioManager:setVolume("CollectSound", 0.6) -- Set collect sound volume to 60%
