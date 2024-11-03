-- KickPlayer.lua
local AdminPermissions = require(script.Parent.AdminPermissions)

-- Function to kick a player from the game
local function kickPlayer(admin, targetPlayer, reason)
    -- Check if the person issuing the command is an admin
    if AdminPermissions.isAdmin(admin) then
        if targetPlayer then
            -- Provide a default reason if none is given
            local kickReason = reason or "You have been kicked by an admin."
            targetPlayer:Kick(kickReason)
            print("Kicked " .. targetPlayer.Name .. " from the game for: " .. kickReason)
        else
            warn("Target player is not valid.")
        end
    else
        warn(admin.Name .. " does not have permission to kick players.")
    end
end

return kickPlayer
