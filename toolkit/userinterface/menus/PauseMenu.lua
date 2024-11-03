-- PauseMenu.lua
-- This script handles the pause menu of the game.

local PauseMenu = {}
PauseMenu.__index = PauseMenu

function PauseMenu.new()
    local self = setmetatable({}, PauseMenu)

    -- Create a ScreenGui for the pause menu
    self.gui = Instance.new("ScreenGui", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
    self.menuFrame = Instance.new("Frame", self.gui)
    self.menuFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
    self.menuFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
    self.menuFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    
    -- Resume button
    self.resumeButton = Instance.new("TextButton", self.menuFrame)
    self.resumeButton.Size = UDim2.new(0.6, 0, 0.2, 0)
    self.resumeButton.Position = UDim2.new(0.2, 0, 0.3, 0)
    self.resumeButton.Text = "Resume"
    self.resumeButton.MouseButton1Click:Connect(function()
        self:resumeGame()
    end)

    -- Exit button
    self.exitButton = Instance.new("TextButton", self.menuFrame)
    self.exitButton.Size = UDim2.new(0.6, 0, 0.2, 0)
    self.exitButton.Position = UDim2.new(0.2, 0, 0.6, 0)
    self.exitButton.Text = "Exit to Menu"
    self.exitButton.MouseButton1Click:Connect(function()
        self:exitToMenu()
    end)

    return self
end

function PauseMenu:resumeGame()
    self.gui:Destroy() -- Remove the menu
    -- Logic to resume the game goes here
end

function PauseMenu:exitToMenu()
    self.gui:Destroy() -- Remove the menu
    -- Logic to exit to main menu goes here
end

return PauseMenu
