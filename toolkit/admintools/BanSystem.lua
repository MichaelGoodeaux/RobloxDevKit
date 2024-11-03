-- BanSystem.lua
-- A script for managing banned players

local BanSystem = {}

-- List of banned user IDs
local bannedUsers = {
    -- Add banned user IDs here, e.g.:
    -- [12345678] = true,
    -- [87654321] = true
}

-- Function to ban a player (adds their UserId to the banned list)
function BanSystem.banUser(userId)
    bannedUsers[userId] = true
    print("User with ID " .. userId .. " has been banned.")
end

-- Function to unban a player (removes their UserId from the banned list)
function BanSystem.unbanUser(userId)
    bannedUsers[userId] = nil
    print("User with ID " .. userId .. " has been unbanned.")
end

-- Function to check if a player is banned
function BanSystem.isBanned(userId)
    return bannedUsers[userId] ~= nil
end

-- Function to handle a player joining the game
function BanSystem.checkPlayerOnJoin(player)
    if BanSystem.isBanned(player.UserId) then
        player:Kick("You are banned from this game.")
        print("Kicked banned user: " .. player.Name)
    end
end

-- Connect the ban check to the PlayerAdded event
game.Players.PlayerAdded:Connect(BanSystem.checkPlayerOnJoin)

return BanSystem
