-- TeleportPlayer.lua
local AdminPermissions = require(script.Parent.AdminPermissions)

local function teleportPlayer(admin, targetPlayer, targetPosition)
    if AdminPermissions.isAdmin(admin) then
        if targetPlayer and targetPlayer.Character then
            targetPlayer.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
            print("Teleported " .. targetPlayer.Name .. " to " .. tostring(targetPosition))
        else
            warn("Target player is not valid or does not have a character")
        end
    else
        warn(admin.Name .. " does not have permission to teleport players.")
    end
end

return teleportPlayer
