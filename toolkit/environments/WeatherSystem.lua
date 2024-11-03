-- WeatherSystem.lua
-- This module manages weather effects in the game.

local WeatherSystem = {}
WeatherSystem.__index = WeatherSystem

function WeatherSystem.new()
    local self = setmetatable({}, WeatherSystem)
    self.lighting = game:GetService("Lighting")
    self.rainEnabled = false
    return self
end

-- Function to enable rain
function WeatherSystem:enableRain()
    if not self.rainEnabled then
        print("Rain has started!")
        self.lighting.Rain.Enabled = true
        self.rainEnabled = true
    else
        print("It's already raining!")
    end
end

-- Function to disable rain
function WeatherSystem:disableRain()
    if self.rainEnabled then
        print("Rain has stopped.")
        self.lighting.Rain.Enabled = false
        self.rainEnabled = false
    else
        print("It's not raining!")
    end
end

-- Function to change weather to clear
function WeatherSystem:clearWeather()
    self:disableRain()
    print("The weather is clear now.")
end

return WeatherSystem
