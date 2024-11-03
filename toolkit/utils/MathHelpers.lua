-- MathHelpers.lua
-- This module contains helper functions for mathematical operations.

local MathHelpers = {}

function MathHelpers.clamp(value, min, max)
    return math.max(min, math.min(value, max)) -- Clamp a value between a minimum and maximum
end

function MathHelpers.lerp(a, b, t)
    return a + (b - a) * t -- Linear interpolation between two values
end

function MathHelpers.randomRange(min, max)
    return math.random(min, max) -- Get a random number within a range
end

return MathHelpers
