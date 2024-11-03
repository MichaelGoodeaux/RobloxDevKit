-- StringHelpers.lua
-- This module contains helper functions for string operations.

local StringHelpers = {}

function StringHelpers.capitalize(str)
    return str:sub(1, 1):upper() .. str:sub(2) -- Capitalize the first letter of a string
end

function StringHelpers.split(str, delimiter)
    local result = {}
    for match in (str..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match) -- Split a string into a table using a delimiter
    end
    return result
end

function StringHelpers.trim(str)
    return str:match("^%s*(.-)%s*$") -- Trim whitespace from the beginning and end of a string
end

return StringHelpers
