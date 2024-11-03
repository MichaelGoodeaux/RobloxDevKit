-- Inventory.lua
-- This module manages player inventories.

local Inventory = {}
Inventory.__index = Inventory

-- Constructor for a new inventory
function Inventory.new()
    return setmetatable({
        items = {},
    }, Inventory)
end

-- Function to add an item to the inventory
function Inventory:addItem(itemName)
    table.insert(self.items, itemName)
    print("Added " .. itemName .. " to inventory.")
end

-- Function to remove an item from the inventory
function Inventory:removeItem(itemName)
    for i, item in ipairs(self.items) do
        if item == itemName then
            table.remove(self.items, i)
            print("Removed " .. itemName .. " from inventory.")
            return true
        end
    end
    print(itemName .. " not found in inventory.")
    return false
end

-- Function to get the inventory items
function Inventory:getItems()
    return self.items
end

return Inventory
