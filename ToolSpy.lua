local fruitSheet1 = "http://www.roblox.com/asset/?id=15243506332"
local fruitSheet2 = "http://www.roblox.com/asset/?id=15733674155"
local fruitIcons = {
	Barrier = Vector2.new(0,0),
	Blizzard = Vector2.new(1,0),
	Bomb = Vector2.new(2,0),
	Buddha = Vector2.new(3,0),
	Chop = Vector2.new(4,0),
	Control = Vector2.new(5,0),
	Dark = Vector2.new(0,1),
	Diamond = Vector2.new(1,1),
	Dough = Vector2.new(2,1),
	Falcon = Vector2.new(3,1),
	Flame = Vector2.new(4,1),
	Gravity = Vector2.new(5,1),
	Ice = Vector2.new(0,2),
	Leopard = Vector2.new(1,2),
	Light = Vector2.new(2,2),
	Love = Vector2.new(3,2),
	Magma = Vector2.new(4,2),
	Mammoth = Vector2.new(5,2),
	Pain = Vector2.new(0,3),
	Phoenix = Vector2.new(1,3),
	Portal = Vector2.new(2,3),
	Quake = Vector2.new(3,3),
	Ghost = Vector2.new(4,3),
	Rocket = Vector2.new(5,3),
	Rubber = Vector2.new(0,4),
	Rumble = Vector2.new(1,4),
	Sand = Vector2.new(2,4),
	Shadow = Vector2.new(3,4),
	Smoke = Vector2.new(4,4),
	Sound = Vector2.new(5,4),
	Spider = Vector2.new(0,5),
	Spike = Vector2.new(1,5),
	Spin = Vector2.new(2,5),
	Spirit = Vector2.new(3,5),
	Spring = Vector2.new(4,5),
	Venom = Vector2.new(5,5),
	Kitsune = {Index = Vector2.new(0,1),Image = fruitSheet2},
	["T-Rex"] = {Index = Vector2.new(3,1),Image = fruitSheet2}
}

local gameIds = {
	BloxFruits = 994732206
}

function update(tool,image)
	local showName = tool.TextureId == ""
	if game.GameId == gameIds.BloxFruits then
		if tool.Name:sub(#tool.Name - 5, #tool.Name) == " Fruit" then
			local fruitName = tool.Name:sub(1, #tool.Name - 6)
			local icon = fruitIcons[fruitName]
			if icon then
				if typeof(icon) == "Vector2" then
					image.Image = fruitSheet1
					image.ImageRectSize = Vector2.new(150,150)
					image.ImageRectOffset = icon * 150
				elseif typeof(icon) == "table" then
					image.Image = icon.Image
					image.ImageRectSize = Vector2.new(150,150)
					image.ImageRectOffset = icon.Index * 150
				end
				showName = false
			end
		else
			image.ImageRectSize = tool:GetAttribute("ImageRectSize") or Vector2.zero
			image.ImageRectOffset = tool:GetAttribute("ImageRectOffset") or Vector2.zero
			image.Image = tool.TextureId
			image.ToolName.Text = tool.Name
		end
	else
		image.ImageRectSize = tool:GetAttribute("ImageRectSize") or Vector2.zero
		image.ImageRectOffset = tool:GetAttribute("ImageRectOffset") or Vector2.zero
		image.Image = tool.TextureId
	end
	image.ToolName.Text = tool.Name
	image.ToolName.Visible = showName
end

function added(tool)
	if not tool:IsA("Tool") then return end
	local part = tool:FindFirstChildOfClass("Part") or tool:FindFirstChildOfClass("MeshPart") or tool:FindFirstChildOfClass("UnionOperation")
	if not part or part:FindFirstChild("ToolSpyUI") then return end
	local b = Instance.new("BillboardGui",part)
	b.AlwaysOnTop = true
	b.Name = "ToolSpyUI"
	local image = Instance.new("ImageLabel",b)
	image.Size = UDim2.fromOffset(100,100)
	image.AnchorPoint = Vector2.new(0.5,0.5)
	image.Position = UDim2.fromScale(0.5,0.5)
	image.BackgroundColor3 = Color3.fromRGB(0,0,0)
	image.BackgroundTransparency = 0.5
	local toolName = Instance.new("TextLabel",image)
	toolName.Font = Enum.Font.SourceSansBold
	toolName.TextColor3 = Color3.fromRGB(255,255,255)
	toolName.TextStrokeTransparency = 0.5
	toolName.TextStrokeColor3 = Color3.fromRGB(0,0,0)
	toolName.TextSize = 16
	toolName.TextWrapped = true
	toolName.Size = UDim2.fromScale(1,1)
	toolName.BackgroundTransparency = 1
	toolName.Name = "ToolName"
	local corner = Instance.new("UICorner",image)
	corner.CornerRadius = UDim.new(0,12)
	update(tool,image)
	tool.Changed:Connect(function()
		update(tool,image)
	end)
end

for i,v in pairs(workspace:GetDescendants()) do
	added(v)
end

workspace.DescendantAdded:Connect(added)
