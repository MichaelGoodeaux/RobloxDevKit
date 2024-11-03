-- DayNightCycle.lua
-- This module manages the day-night cycle.

local DayNightCycle = {}
DayNightCycle.__index = DayNightCycle

function DayNightCycle.new()
    local self = setmetatable({}, DayNightCycle)
    self.dayLength = 120 -- Length of a day in seconds
    self.nightLength = 60 -- Length of a night in seconds
    self.lighting = game:GetService("Lighting")
    return self
end

-- Function to start the day-night cycle
function DayNightCycle:start()
    while true do
        -- Day
        self.lighting.TimeOfDay = "14:00:00" -- Set to noon
        wait(self.dayLength)
        
        -- Night
        self.lighting.TimeOfDay = "00:00:00" -- Set to midnight
        wait(self.nightLength)
    end
end

return DayNightCycle
