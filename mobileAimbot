function createUI()
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	ScreenGui.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
	ScreenGui.IgnoreGuiInset = true

	local Range = Instance.new("Frame")
	Range.Name = "Range"
	Range.AnchorPoint = Vector2.new(0.5, 0.5)
	Range.Size = UDim2.new(0, 100, 0, 100)
	Range.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Range.BackgroundTransparency = 1
	Range.Position = UDim2.new(0.5, 0, 0.5, 0)
	Range.BorderSizePixel = 0
	Range.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Range.Parent = ScreenGui

	local UICorner = Instance.new("UICorner")
	UICorner.CornerRadius = UDim.new(0.5, 0)
	UICorner.Parent = Range

	local UIStroke = Instance.new("UIStroke")
	UIStroke.Thickness = 2
	UIStroke.Parent = Range

	local Cursor = Instance.new("Frame")
	Cursor.Name = "Cursor"
	Cursor.AnchorPoint = Vector2.new(0.5, 0.5)
	Cursor.Size = UDim2.new(0, 75, 0, 75)
	Cursor.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Cursor.BackgroundTransparency = 1
	Cursor.Position = UDim2.new(0.5, 0, 0.5, 0)
	Cursor.BorderSizePixel = 0
	Cursor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Cursor.Parent = ScreenGui

	local Frame = Instance.new("Frame")
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.Size = UDim2.new(1, 0, 0, 2)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.BorderSizePixel = 0
	Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame.Parent = Cursor

	local Frame1 = Instance.new("Frame")
	Frame1.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame1.Size = UDim2.new(0, 2, 1, 0)
	Frame1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame1.BorderSizePixel = 0
	Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame1.Parent = Cursor

	local AimbotToggle = Instance.new("TextButton")
	AimbotToggle.Name = "AimbotToggle"
	AimbotToggle.AnchorPoint = Vector2.new(0, 0.5)
	AimbotToggle.Size = UDim2.new(0, 100, 0, 100)
	AimbotToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	AimbotToggle.Position = UDim2.new(0, 12, 0.5, 0)
	AimbotToggle.BorderSizePixel = 0
	AimbotToggle.BackgroundColor3 = Color3.fromRGB(95, 241, 100)
	AimbotToggle.FontSize = Enum.FontSize.Size24
	AimbotToggle.TextStrokeTransparency = 0.5
	AimbotToggle.TextSize = 24
	AimbotToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
	AimbotToggle.TextWrapped = true
	AimbotToggle.TextWrap = true
	AimbotToggle.Font = Enum.Font.SourceSansBold
	AimbotToggle.TextScaled = true
	AimbotToggle.Parent = ScreenGui

	local UICorner1 = Instance.new("UICorner")
	UICorner1.CornerRadius = UDim.new(0.5, 0)
	UICorner1.Parent = AimbotToggle

	local UIStroke1 = Instance.new("UIStroke")
	UIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke1.Transparency = 0.75
	UIStroke1.Thickness = 2
	UIStroke1.Parent = AimbotToggle

	local UIPadding = Instance.new("UIPadding")
	UIPadding.PaddingTop = UDim.new(0.25, 0)
	UIPadding.PaddingBottom = UDim.new(0.25, 0)
	UIPadding.PaddingLeft = UDim.new(0.25, 0)
	UIPadding.PaddingRight = UDim.new(0.25, 0)
	UIPadding.Parent = AimbotToggle

	ScreenGui.Parent = game:GetService("CoreGui")
	
	return ScreenGui
end

local gui = createUI()
script = {Parent = gui}

local players = game:GetService("Players")
local camera = workspace.CurrentCamera

local colors = {
	on = Color3.fromRGB(95, 241, 100),
	off = Color3.fromRGB(248, 109, 124)
}

function getCharacters()
	local chars = {}
	for _,plrObject in pairs(players:GetPlayers()) do
		if plrObject ~= players.LocalPlayer then
			if plrObject.Team then
				if plrObject.Team ~= players.LocalPlayer.Team then
					table.insert(chars,plrObject.Character)
				end
			else
				table.insert(chars,plrObject.Character)
			end
		end
	end
	return chars
end

function closestToCursor(range)
	local lastDistance = range
	local lastChar
	for _,char in pairs(getCharacters()) do
		if char then
			local primaryPart = char:FindFirstChild("Head") or char:FindFirstChild("HumanoidRootPart") or char.PrimaryPart
			local hum = char:FindFirstChildOfClass("Humanoid")
			if (hum and hum.Health > 0) and primaryPart then
				local worldPoint = primaryPart.Position
				local vector = camera:WorldToScreenPoint(worldPoint)
				local origin = camera.ViewportSize / 2
				local distance = (origin - Vector2.new(vector.X,vector.Y)).Magnitude
				if vector.Z > 0 and distance < lastDistance then
					lastDistance = distance
					lastChar = char
				end
			end
		end
	end
	return lastChar
end

local uis = game:GetService("UserInputService")

local aimbotToggle = script.Parent:WaitForChild("AimbotToggle")
local aimbotEnabled = false

function updateButton()
	if aimbotEnabled then
		aimbotToggle.BackgroundColor3 = colors.on
		aimbotToggle.Text = "Enabled"
	else
		aimbotToggle.BackgroundColor3 = colors.off
		aimbotToggle.Text = "Disabled"
	end
end

aimbotToggle.MouseButton1Click:Connect(function()
	aimbotEnabled = not aimbotEnabled
	updateButton()
end)

updateButton()

game:GetService("RunService").RenderStepped:Connect(function()
	local range = 200
	script.Parent.Range.Size = UDim2.fromOffset(range,range)
	if not aimbotEnabled then return end
	local target = closestToCursor(range)
	if not target then return end
	local cam = workspace.CurrentCamera
	local zoom = (cam.CFrame.Position - cam.Focus.Position).Magnitude
	cam.CFrame = cam.Focus * CFrame.lookAt(cam.Focus.Position,target.Head.Position).Rotation * CFrame.new(0,0,zoom)

	if game.PlaceId == 2788229376 then
		local x = math.random(0,1) == 0 and -0.25 or 0.25
		local y = math.random(0,1) == 0 and -0.25 or 0.25
		local z = math.random(0,1) == 0 and -0.25 or 0.25
		game:GetService("ReplicatedStorage").MainEvent:FireServer("UpdateMousePos", target.Head.Position + Vector3.new(x,y,z))
	end
end)
