--[[ 
  Luau Scripting Guide for Beginners
  ==================================
  Welcome! This guide will show you how to write your own scripts in Luau, 
  the language used in Roblox. We'll go over the basics step-by-step with 
  simple examples and comments to help you understand.

  What You’ll Learn:
  1. Variables - Storing information
  2. Functions - Organizing your code
  3. Control Flow - Making choices and repeating actions
  4. Tables - Storing lists and groups of data
  5. Roblox-Specific Basics - Working with the game world
]]

--[[ 1. Variables ]]
-- Variables let you store information. You can think of them like labeled boxes.

local myNumber = 10       -- A box holding the number 10
local myString = "Hello!" -- A box holding text (called a "string")

-- You can also store true/false answers (called "booleans")
local isGameActive = true -- This box holds the answer true

--[[ 2. Functions ]]
-- Functions let you group code together and give it a name. 
-- It's like a mini-program that you can run whenever you want.

-- Here’s a simple function that says "Hello!" when we call it.
local function sayHello()
    print("Hello, Player!")  -- This prints to the screen
end

sayHello()  -- We "call" or run the function, and it says hello!

-- Functions can also take inputs, called "parameters."
local function add(a, b)
    return a + b  -- Adds the numbers together
end

local result = add(5, 3)  -- Uses the function to add 5 + 3
print(result)             -- This prints 8

--[[ 3. Control Flow ]]
-- Control flow lets your script make decisions and repeat actions.

-- If Statements: Used to make decisions
local playerAge = 16
if playerAge >= 18 then
    print("You can play this game.") -- Runs if the player is 18 or older
else
    print("Sorry, you're too young.") -- Runs if the player is younger than 18
end

-- While Loop: Used to repeat code as long as something is true
local count = 1
while count <= 3 do
    print("Count is:", count)
    count = count + 1  -- Adds 1 to count each time
end

-- For Loop: Repeats code a set number of times
for i = 1, 3 do
    print("Loop number:", i)  -- Runs 3 times, with i changing each time
end

--[[ 4. Tables ]]
-- Tables are lists or groups that can store many pieces of information in one place.
-- Think of them like a shelf with labeled spots.

-- List Table: Holds items in order
local colors = {"red", "blue", "green"}
print(colors[1])  -- This will print "red" because it's the first item

-- Dictionary Table: Holds items with names
local playerInfo = {name = "Alex", score = 100}
print(playerInfo.name)  -- This will print "Alex"

--[[ 5. Roblox-Specific Basics ]]
-- Roblox has special tools (APIs) you can use to make things happen in your game.

-- This finds the player and their character in the game
local Players = game:GetService("Players")  -- Gets the players service
local player = Players.LocalPlayer           -- Finds the player
local character = player.Character or player.CharacterAdded:Wait()  -- Waits for the player’s character

-- Creating a part (like a brick) in the game
local part = Instance.new("Part")            -- Makes a new part
part.Size = Vector3.new(4, 4, 4)             -- Sets the size (4x4x4)
part.Position = Vector3.new(0, 10, 0)        -- Sets the position
part.Parent = workspace                      -- Adds the part to the game world

--[[ 
  That’s it for the basics! Now, try using these pieces to make your own script.
  Play around with changing variables, making functions, and adding more logic. 
  You’ll get better each time you try!
]]
