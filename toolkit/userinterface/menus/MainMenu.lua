-- MainMenu.lua
-- This script handles the main menu of the game.

local MainMenu = {}
MainMenu.__index = MainMenu

function MainMenu.new()
    local self = setmetatable({}, MainMenu)

    -- Create a ScreenGui for the main menu
    self.gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
    self.menuFrame = Instance.new("Frame", self.gui)
    self.menuFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
    self.menuFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
    self.menuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    
    -- Start Game button
    self.startButton = Instance.new("TextButton", self.menuFrame)
    self.startButton.Size = UDim2.new(0.6, 0, 0.2, 0)
    self.startButton.Position = UDim2.new(0.2, 0, 0.3, 0)
    self.startButton.Text = "Start Game"
    self.startButton.MouseButton1Click:Connect(function()
        self:startGame()
    end)

    return self
end

function MainMenu:startGame()
    self.gui:Destroy() -- Remove the menu
    -- Logic to start the game goes here
end

return MainMenu
