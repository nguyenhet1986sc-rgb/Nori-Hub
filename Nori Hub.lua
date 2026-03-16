-- Key check
local correctKey = "NORI-PTHOB-CLHB-C1FW-EEN47-OT5KQ"
if getgenv().Key ~= correctKey then
warn("Wrong Key")
return
end

-- UI
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "OceanHub"

local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0,520,0,330)
main.Position = UDim2.new(0.5,-260,0.5,-165)
main.BackgroundColor3 = Color3.fromRGB(0,70,130)

local title = Instance.new("TextLabel", main)
title.Size = UDim2.new(1,0,0,40)
title.Text = "Ocean Premium Hub"
title.TextScaled = true
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(0,200,255)

-- Buttons
local autoFarm = Instance.new("TextButton", main)
autoFarm.Size = UDim2.new(0,180,0,40)
autoFarm.Position = UDim2.new(0,20,0,70)
autoFarm.Text = "Auto Farm"
autoFarm.BackgroundColor3 = Color3.fromRGB(0,120,200)

local speed = Instance.new("TextButton", main)
speed.Size = UDim2.new(0,180,0,40)
speed.Position = UDim2.new(0,20,0,120)
speed.Text = "Speed x2"
speed.BackgroundColor3 = Color3.fromRGB(0,120,200)

local jump = Instance.new("TextButton", main)
jump.Size = UDim2.new(0,180,0,40)
jump.Position = UDim2.new(0,20,0,170)
jump.Text = "High Jump"
jump.BackgroundColor3 = Color3.fromRGB(0,120,200)

local tp = Instance.new("TextButton", main)
tp.Size = UDim2.new(0,180,0,40)
tp.Position = UDim2.new(0,20,0,220)
tp.Text = "Teleport Spawn"
tp.BackgroundColor3 = Color3.fromRGB(0,120,200)

-- Functions
autoFarm.MouseButton1Click:Connect(function()
print("Auto Farm Enabled")
end)

speed.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
end)

jump.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
end)

tp.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
CFrame.new(0,50,0)
end)
