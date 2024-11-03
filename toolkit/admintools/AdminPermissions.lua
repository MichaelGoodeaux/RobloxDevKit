-- AdminPermissions.lua
-- List of UserIds that are considered admins
local AdminPermissions = {}

-- Define admin UserIds here
AdminPermissions.admins = {
    12345678, -- Replace with actual UserIds of admins
    87654321
}

-- Function to check if a player is an admin
function AdminPermissions.isAdmin(player)
    return table.find(AdminPermissions.admins, player.UserId) ~= nil
end

return AdminPermissions
