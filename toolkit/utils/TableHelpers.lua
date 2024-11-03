-- TableHelpers.lua
-- This module contains helper functions for table operations.

local TableHelpers = {}

function TableHelpers.contains(table, value)
    for _, v in ipairs(table) do
        if v == value then
            return true -- Check if a table contains a specific value
        end
    end
    return false
end

function TableHelpers.merge(table1, table2)
    for k, v in pairs(table2) do
        table1[k] = v -- Merge two tables
    end
    return table1
end

function TableHelpers.shuffle(table)
    for i = #table, 2, -1 do
        local j = math.random(i)
        table[i], table[j] = table[j], table[i] -- Shuffle the elements of a table
    end
    return table
end

return TableHelpers
