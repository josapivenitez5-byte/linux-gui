main.lua
--// Linux Executor V3
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "LinuxExecutor"

-- MAIN WINDOW
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 520, 0, 330)
main.Position = UDim2.new(0.3,0,0.2,0)
main.BackgroundColor3 = Color3.fromRGB(35,35,35)
main.BorderSizePixel = 0
main.Active = true
main.Draggable = true

-- TOP BAR
local top = Instance.new("Frame", main)
top.Size = UDim2.new(1,0,0,30)
top.BackgroundColor3 = Color3.fromRGB(45,45,45)
top.BorderSizePixel = 0

local title = Instance.new("TextLabel", top)
title.Size = UDim2.new(1,0,1,0)
title.BackgroundTransparency = 1
title.Text = "Linux Executor V3"
title.Font = Enum.Font.Code
title.TextSize = 18
title.TextColor3 = Color3.new(1,1,1)

-- EDITOR
local box = Instance.new("TextBox", main)
box.Size = UDim2.new(1,-20,1,-110)
box.Position = UDim2.new(0,10,0,40)
box.MultiLine = true
box.TextXAlignment = Enum.TextXAlignment.Left
box.TextYAlignment = Enum.TextYAlignment.Top
box.ClearTextOnFocus = false
box.Text = "-- escribe tu script aqui"
box.Font = Enum.Font.Code
box.TextSize = 16
box.TextColor3 = Color3.new(1,1,1)
box.BackgroundColor3 = Color3.fromRGB(20,20,20)

-- OUTPUT CONSOLE
local console = Instance.new("TextLabel", main)
console.Size = UDim2.new(1,-20,0,40)
console.Position = UDim2.new(0,10,1,-65)
console.BackgroundColor3 = Color3.fromRGB(15,15,15)
console.TextColor3 = Color3.fromRGB(0,255,120)
console.Font = Enum.Font.Code
console.TextSize = 14
console.Text = "Console ready."
console.TextXAlignment = Enum.TextXAlignment.Left

-- EXECUTE BUTTON
local execute = Instance.new("TextButton", main)
execute.Size = UDim2.new(0,90,0,25)
execute.Position = UDim2.new(0,10,1,-30)
execute.Text = "Execute"
execute.Font = Enum.Font.Code
execute.TextSize = 15
execute.TextColor3 = Color3.new(1,1,1)
execute.BackgroundColor3 = Color3.fromRGB(70,120,70)

-- CLEAR BUTTON
local clear = Instance.new("TextButton", main)
clear.Size = UDim2.new(0,90,0,25)
clear.Position = UDim2.new(0,110,1,-30)
clear.Text = "Clear"
clear.Font = Enum.Font.Code
clear.TextSize = 15
clear.TextColor3 = Color3.new(1,1,1)
clear.BackgroundColor3 = Color3.fromRGB(120,70,70)

-- THEME UBUNTU
local ubuntu = Instance.new("TextButton", main)
ubuntu.Size = UDim2.new(0,120,0,25)
ubuntu.Position = UDim2.new(1,-250,1,-30)
ubuntu.Text = "Ubuntu Style"
ubuntu.Font = Enum.Font.Code
ubuntu.TextSize = 14
ubuntu.TextColor3 = Color3.new(1,1,1)
ubuntu.BackgroundColor3 = Color3.fromRGB(233,84,32)

-- THEME DEFAULT
local default = Instance.new("TextButton", main)
default.Size = UDim2.new(0,120,0,25)
default.Position = UDim2.new(1,-125,1,-30)
default.Text = "Default Style"
default.Font = Enum.Font.Code
default.TextSize = 14
default.TextColor3 = Color3.new(1,1,1)
default.BackgroundColor3 = Color3.fromRGB(60,90,170)

-- MINIMIZE
local mini = Instance.new("TextButton", top)
mini.Size = UDim2.new(0,30,1,0)
mini.Position = UDim2.new(1,-30,0,0)
mini.Text = "-"
mini.Font = Enum.Font.Code
mini.TextSize = 20
mini.BackgroundColor3 = Color3.fromRGB(80,80,80)
mini.TextColor3 = Color3.new(1,1,1)

local minimized = false
mini.MouseButton1Click:Connect(function()
	minimized = not minimized
	box.Visible = not minimized
	execute.Visible = not minimized
	clear.Visible = not minimized
	console.Visible = not minimized
	ubuntu.Visible = not minimized
	default.Visible = not minimized
end)

-- EXECUTE FUNCTION
execute.MouseButton1Click:Connect(function()
	console.Text = "Running..."
	local f,err = loadstring(box.Text)
	if f then
		pcall(f)
		console.Text = "Executed successfully."
	else
		console.Text = "Error: "..err
	end
end)

-- CLEAR
clear.MouseButton1Click:Connect(function()
	box.Text = ""
	console.Text = "Cleared."
end)

-- UBUNTU THEME
ubuntu.MouseButton1Click:Connect(function()
	main.BackgroundColor3 = Color3.fromRGB(48,10,36)
	top.BackgroundColor3 = Color3.fromRGB(90,24,67)
	box.BackgroundColor3 = Color3.fromRGB(30,0,25)
end)

-- DEFAULT THEME
default.MouseButton1Click:Connect(function()
	main.BackgroundColor3 = Color3.fromRGB(35,35,35)
	top.BackgroundColor3 = Color3.fromRGB(45,45,45)
	box.BackgroundColor3 = Color3.fromRGB(20,20,20)
end)
