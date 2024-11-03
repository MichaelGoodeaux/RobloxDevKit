--[[ 
  Software Engineering Guidelines for Beginners
  =============================================
  Welcome! This guide will teach you general software engineering principles. 
  Think of these as best practices for writing code that’s organized, easy to read, 
  and works well. Learning these ideas will make your code more reliable 
  and help you work better with others.

  What You’ll Learn:
  1. Plan Before You Code
  2. Keep Code Simple and Clean
  3. Test and Debug Your Code
  4. Use Comments Wisely
  5. Collaborate and Share
]]

--[[ 1. Plan Before You Code ]]
-- Before writing code, take a minute to think about what you want to do.
-- Write down the steps in order (this is called an algorithm).

-- Example: If you want to make a character jump when a button is clicked,
-- you might break it down like this:
-- Step 1: Detect when the button is clicked.
-- Step 2: Make the character move up by a certain amount.
-- Step 3: Make the character come back down after a short time.

-- Planning can save time because you’ll know what to code before you start.

--[[ 2. Keep Code Simple and Clean ]]
-- Simple code is easier to read and understand, both for you and others.
-- Use meaningful names for variables and functions so they describe what they do.

-- BAD EXAMPLE:
local x = 10
local y = "name"
local z = function(a, b) return a * b end

-- BETTER EXAMPLE:
local playerScore = 10
local playerName = "Alex"
local multiply = function(number1, number2) return number1 * number2 end

-- It’s also a good idea to break up long code into smaller functions.
-- This makes each piece easier to work with.

--[[ 3. Test and Debug Your Code ]]
-- When you write code, errors are normal! Testing means running your code
-- to see if it works, and debugging means fixing any problems you find.

-- Tips for Debugging:
-- - If you get an error, read the message carefully. It often tells you where the issue is.
-- - Use "print" statements to check values. If something isn’t working, print it to see what’s going on.
-- - Fix one problem at a time. Don’t try to solve everything all at once.

--[[ 4. Use Comments Wisely ]]
-- Comments are notes you can leave in your code to explain what something does.
-- They are helpful for you and anyone else who reads your code.

-- Try to make comments clear but brief. For example:

local score = 0  -- Holds the player's score

-- This is better than:
local score = 0  -- This is a variable that stores the score of the player

-- Use comments to explain *why* something is done, not just what it does.
-- Example:
local maxHealth = 100  -- Sets the max health a player can have for balance

--[[ 5. Collaborate and Share ]]
-- Programming is often a team activity. Sharing code means others can help,
-- and you can learn from them, too!

-- - If you're working with friends, share your plans and make sure everyone understands.
-- - Be open to feedback. Others might have good ideas to improve your code.
-- - Keep your code organized so that it's easy for others to understand. This helps a lot when working together.

-- That’s it for the basics! Following these tips will make you a stronger coder, 
-- and help you create code that’s easy to read, share, and improve over time.
-- Happy coding!