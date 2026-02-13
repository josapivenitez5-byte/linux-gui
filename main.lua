-- Esperar a que cargue el juego
if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- Evitar duplicados
pcall(function()
    player.PlayerGui:FindFirstChild("LinuxExecutor"):Destroy()
end)

-- GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "LinuxExecutor"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = player:WaitForChild("PlayerGui")

-- Botón abrir/cerrar
local Toggle = Instance.new("TextButton")
Toggle.Parent = ScreenGui
Toggle.Size = UDim2.new(0,40,0,40)
Toggle.Position = UDim2.new(0,10,0.4,0)
Toggle.Text = "☰"
Toggle.BackgroundColor3 = Color3.fromRGB(40,40,40)
Toggle.TextColor3 = Color3.new(1,1,1)
Toggle.BorderSizePixel = 0

-- Ventana principal
local Main = Instance.new("Frame")
Main.Parent = ScreenGui
Main.Size = UDim2.new(0,450,0,300)
Main.Position = UDim2.new(0.5,-225,0.5,-150)
Main.BackgroundColor3 = Color3.fromRGB(35,35,35)
Main.Visible = true
Main.BorderSizePixel = 0

-- Barra superior
local Top = Instance.new("Frame")
Top.Parent = Main
Top.Size = UDim2.new(1,0,0,30)
Top.BackgroundColor3 = Color3.fromRGB(55,55,55)
Top.BorderSizePixel = 0

local Title = Instance.new("TextLabel")
Title.Parent = Top
Title.Size = UDim2.new(1,0,1,0)
Title.Text = "Linux Executor"
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.Code
Title.TextSize = 16

-- Caja de texto (donde pegas scripts)
local Box = Instance.new("TextBox")
Box.Parent = Main
Box.Size = UDim2.new(1,-20,1,-90)
Box.Position = UDim2.new(0,10,0,40)
Box.MultiLine = true
Box.ClearTextOnFocus = false
Box.Text = "-- pega tu script aqui"
Box.TextXAlignment = Enum.TextXAlignment.Left
Box.TextYAlignment = Enum.TextYAlignment.Top
Box.Font = Enum.Font.Code
Box.TextSize = 14
Box.BackgroundColor3 = Color3.fromRGB(25,25,25)
Box.TextColor3 = Color3.new(1,1,1)
Box.BorderSizePixel = 0

-- Botón ejecutar
local Execute = Instance.new("TextButton")
Execute.Parent = Main
Execute.Size = UDim2.new(0.3,0,0,30)
Execute.Position = UDim2.new(0.02,0,1,-40)
Execute.Text = "Execute"
Execute.BackgroundColor3 = Color3.fromRGB(60,140,70)
Execute.TextColor3 = Color3.new(1,1,1)
Execute.BorderSizePixel = 0

-- Botón limpiar
local Clear = Instance.new("TextButton")
Clear.Parent = Main
Clear.Size = UDim2.new(0.3,0,0,30)
Clear.Position = UDim2.new(0.35,0,1,-40)
Clear.Text = "Clear"
Clear.BackgroundColor3 = Color3.fromRGB(140,60,60)
Clear.TextColor3 = Color3.new(1,1,1)
Clear.BorderSizePixel = 0

-- Ubuntu Style
local Ubuntu = Instance.new("TextButton")
Ubuntu.Parent = Main
Ubuntu.Size = UDim2.new(0.28,0,0,30)
Ubuntu.Position = UDim2.new(0.68,0,1,-40)
Ubuntu.Text = "Ubuntu Style"
Ubuntu.BackgroundColor3 = Color3.fromRGB(255,110,40)
Ubuntu.TextColor3 = Color3.new(1,1,1)
Ubuntu.BorderSizePixel = 0

-- Toggle abrir/cerrar
Toggle.MouseButton1Click:Connect(function()
    Main.Visible = not Main.Visible
end)

-- Ejecutar script
Execute.MouseButton1Click:Connect(function()
    local s = Box.Text
    pcall(function()
        loadstring(s)()
    end)
end)

-- Limpiar texto
Clear.MouseButton1Click:Connect(function()
    Box.Text = ""
end)

-- Tema Ubuntu
Ubuntu.MouseButton1Click:Connect(function()
    Main.BackgroundColor3 = Color3.fromRGB(45,30,30)
    Top.BackgroundColor3 = Color3.fromRGB(90,40,20)
    Box.BackgroundColor3 = Color3.fromRGB(30,20,20)
end)

