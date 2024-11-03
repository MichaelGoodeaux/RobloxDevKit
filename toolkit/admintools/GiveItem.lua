-- GiveItem.lua
local AdminPermissions = require(script.Parent.AdminPermissions)

local function giveItem(admin, targetPlayer, itemName)
    if AdminPermissions.isAdmin(admin) then
        local item = game.ServerStorage:FindFirstChild(itemName)
        if item then
            local clonedItem = item:Clone()
            clonedItem.Parent = targetPlayer.Backpack
            print("Gave " .. itemName .. " to " .. targetPlayer.Name)
        else
            warn("Item " .. itemName .. " not found in ServerStorage.")
        end
    else
        warn(admin.Name .. " does not have permission to give items.")
    end
end

return giveItem
