-- Shopkeeper.lua
-- This module defines a shopkeeper NPC for selling items.

local Shopkeeper = {}
Shopkeeper.__index = Shopkeeper

function Shopkeeper.new(npc)
    local self = setmetatable({}, Shopkeeper)
    self.npc = npc
    self.itemsForSale = {
        {name = "Health Potion", price = 10},
        {name = "Mana Potion", price = 15},
    }
    return self
end

-- Function to display items for sale
function Shopkeeper:displayItems(player)
    print(self.npc.Name .. " says: Here are my wares:")
    for _, item in ipairs(self.itemsForSale) do
        print(item.name .. " - " .. item.price .. " coins")
    end
end

-- Function to sell an item to a player
function Shopkeeper:sellItem(player, itemName)
    for _, item in ipairs(self.itemsForSale) do
        if item.name == itemName then
            print(player.Name .. " bought a " .. item.name .. " for " .. item.price .. " coins.")
            return true
        end
    end
    print(self.npc.Name .. " says: I don't have that item.")
    return false
end

return Shopkeeper
