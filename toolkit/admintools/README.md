
# Admin Folder

This Admin folder contains scripts for managing administrative actions in your Roblox game, such as teleporting players, giving items, setting player stats, kicking and banning users. These tools provide basic moderation and control, ensuring that admins have the necessary features to manage gameplay.

## Authors

- [@MichaelGoodeaux](https://github.com/MichaelGoodeaux)

## Installation

- Place the Admin folder inside ServerScriptService or any other secure location on the server-side of your Roblox game.

- Ensure you have the appropriate Admin `UserIds` listed in the `AdminPermissions.lua` file. 

## Files

- `AdminPermissions.lua`
    - **Purpose**: Defines a list of users with admin privileges and provides a function to check if a player is an admin.
    - **Setup**: Add the UserIds of players who should have admin privileges in the admins table.
    - **Functions**: `isAdmin(player)`: Returns `true` if the player is an admin, false otherwise.

- `TeleportPlayer.lua`
    - **Purpose**: Teleports a specified player to a target location.
    - **Requirements**: Requires admin privileges as defined in AdminPermissions.lua.
    - **Functions**: `teleportPlayer(admin, targetPlayer, targetPosition)`: Teleports `targetPlayer` to `targetPosition` if `admin` has permission.

- `GiveItem.lua`
    - **Purpose**: Gives an item from `ServerStorage` to a specified player.
    - **Requirements**: Requires admin privileges.
    - **Functions**: `giveItem(admin, targetPlayer, itemName)`: Clones an item from `ServerStorage` and places it in `targetPlayer`'s inventory if `admin` has permission.

- `SetPlayerStat.lua`
    - **Purpose**: Sets a specific stat (e.g., Coins, Health) for a player.
    - **Requirements**: Requires admin privileges.
    - **Functions**: `setPlayerStat(admin, targetPlayer, statName, value)`: Sets `targetPlayer`'s `statName` to the specified `value` if `admin` has permission.

- `KickPlayer.lua`
    - **Purpose**: Kicks a specified player from the game with an optional reason.
    - **Requirements**: Requires admin privileges.
    - **Functions**: `kickPlayer(admin, targetPlayer, reason)`: Kicks `targetPlayer` with an optional `reason` if `admin` has permission.

- `BanSystem.lua`
    - **Purpose**: Manages banned players by `UserId`, kicking banned users when they join the game.
    - **Requirements**: Requires admin privileges to ban/unban users.
    - **Functions**:
        - `banUser(userId)`: Adds a user to the banned list.
        - `unbanUser(userId)`: Removes a user from the banned list.
        - `isBanned(userId)`: Checks if a user is banned.
        - `checkPlayerOnJoin(player)`: Automatically kicks players upon joining if they are banned.

## Usage/Examples

To use each script, require them from other admin scripts or commands within your game. Here are some examples:

```lua
local TeleportPlayer = require(script.TeleportPlayer)
local GiveItem = require(script.GiveItem)
local SetPlayerStat = require(script.SetPlayerStat)
local KickPlayer = require(script.KickPlayer)
local BanSystem = require(script.BanSystem)

-- Teleport Example
TeleportPlayer(adminPlayer, targetPlayer, Vector3.new(0, 10, 0))

-- Give Item Example
GiveItem(adminPlayer, targetPlayer, "Sword")

-- Set Player Stat Example
SetPlayerStat(adminPlayer, targetPlayer, "Coins", 100)

-- Kick Player Example
KickPlayer(adminPlayer, targetPlayer, "Violation of game rules")

-- Ban/Unban Example
BanSystem.banUser(12345678) -- Adds a player to the ban list
BanSystem.unbanUser(12345678) -- Removes a player from the ban list
```

## Notes and Customization

- Admin List: Update `AdminPermissions.lua` with `UserIds` of players who should have admin access.
- Persistent Bans: `BanSystem.lua` currently uses a non-persistent ban list. For persistent bans across sessions, consider saving the banned user list using Roblox’s DataStoreService.
- Leaderstats Setup: Ensure players have a leaderstats folder with relevant stats before using `SetPlayerStat.lua`.
- Error Handling: Each script includes basic warnings for invalid inputs; customize as needed for your game’s error handling needs.

These scripts are designed to be modular and easily extendable, giving you a foundational admin system. For any further customization, please refer to Roblox’s API documentation or reach out for help!