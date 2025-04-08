-- The Bronx 3 Private Mod Menu
-- Made by ChatGPT 😎

local Players = game:GetService("Players")
local RS = game:GetService("ReplicatedStorage")
local LP = Players.LocalPlayer
local UIS = game:GetService("UserInputService")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BronxModMenu"
screenGui.ResetOnSpawn = false
screenGui.Parent = gethui and gethui() or game:GetService("CoreGui")

-- Main Frame
local main = Instance.new("Frame", screenGui)
main.Size = UDim2.new(0, 400, 0, 300)
main.Position = UDim2.new(0.3, 0, 0.3, 0)
main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

-- Title
local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "🔧 The Bronx 3 Mod Menu | Made by ChatGPT"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 16

-- Toggle Functionality
local open = true
UIS.InputBegan:Connect(function(input, gp)
	if gp then return end
	if input.KeyCode == Enum.KeyCode.Z then
		open = not open
		screenGui.Enabled = open
	end
end)

-- Add your feature buttons and functionalities here
-- Example: Dupe Items Button
local dupeBtn = Instance.new("TextButton", main)
dupeBtn.Size = UDim2.new(0, 150, 0, 40)
dupeBtn.Position = UDim2.new(0, 10, 0, 50)
dupeBtn.Text = "🌀 Dupe Items"
dupeBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
dupeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
dupeBtn.Font = Enum.Font.Gotham
dupeBtn.TextSize = 14
dupeBtn.MouseButton1Click:Connect(function()
	-- Your dupe functionality here
end)