
-- ALIENZ HUB | DELTA ANDROID
-- DARK EDITION

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "AlienzHub"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(280,330)
main.Position = UDim2.new(0.5,-140,0.5,-165)
main.BackgroundColor3 = Color3.fromRGB(15,15,24)
main.BorderSizePixel = 0
main.Parent = gui

Instance.new("UICorner",main).CornerRadius = UDim.new(0,14)

local outline = Instance.new("UIStroke",main)
outline.Color = Color3.fromRGB(145,70,255)
outline.Thickness = 2

local header = Instance.new("TextLabel")
header.Size = UDim2.new(1,0,0,55)
header.BackgroundColor3 = Color3.fromRGB(40,20,65)
header.Text = "ALIENZ HUB"
header.TextColor3 = Color3.fromRGB(200,150,255)
header.TextSize = 23
header.Font = Enum.Font.GothamBold
header.Parent = main

Instance.new("UICorner",header).CornerRadius = UDim.new(0,14)

local function makeButton(name,y,callback)
    local b = Instance.new("TextButton")
    b.Size = UDim2.new(0.88,0,0,42)
    b.Position = UDim2.new(0.06,0,0,y)
    b.BackgroundColor3 = Color3.fromRGB(40,32,58)
    b.TextColor3 = Color3.new(1,1,1)
    b.TextSize = 15
    b.Font = Enum.Font.GothamBold
    b.Text = name
    b.Parent = main
    Instance.new("UICorner",b).CornerRadius = UDim.new(0,9)
    b.Activated:Connect(callback)
    return b
end

local function toggle(name,y)
    local active = false
    local b
    b = makeButton(name.." [OFF]",y,function()
        active = not active
        b.Text = name..(active and " [ON]" or " [OFF]")
    end)
end

toggle("SPEED",75)
toggle("EGG ESP",125)
toggle("AUTO HATCH",175)
toggle("AUTO COLLECT",225)

makeButton("CLOSE",275,function()
    gui:Destroy()
end)

print("ALIENZ HUB LOADED!")
