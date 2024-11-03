-- SetPlayerStat.lua
local AdminPermissions = require(script.Parent.AdminPermissions)

local function setPlayerStat(admin, targetPlayer, statName, value)
    if AdminPermissions.isAdmin(admin) then
        local leaderstats = targetPlayer:FindFirstChild("leaderstats")
        if leaderstats and leaderstats:FindFirstChild(statName) then
            leaderstats[statName].Value = value
            print("Set " .. targetPlayer.Name .. "'s " .. statName .. " to " .. value)
        else
            warn("Stat " .. statName .. " not found for " .. targetPlayer.Name)
        end
    else
        warn(admin.Name .. " does not have permission to set player stats.")
    end
end

return setPlayerStat
