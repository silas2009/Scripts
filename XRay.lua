-- silas_4008

local Players = game:GetService("Players")
local highlights = Instance.new("Folder",Players.LocalPlayer)

function highlight(Plr,Adornee,Color)
	local highlight = Instance.new("Highlight", highlights)
	highlight.FillTransparency = 1
	highlight.OutlineColor = Color
	highlight.Adornee = Adornee
	if Plr then
		Plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
			highlight.OutlineColor = Plr.TeamColor.Color
		end)
		highlight.OutlineColor = Plr.TeamColor.Color
	end
end

function makeNameTag(Parent, Color)
	if Parent:IsA("Model") and Parent.PrimaryPart then
		local Hum = Parent:FindFirstChildOfClass("Humanoid")

		local NameTag = Instance.new("BillboardGui")
		NameTag.AlwaysOnTop = true
		NameTag.ExtentsOffsetWorldSpace = Vector3.new(0, 3, 0)
		NameTag.MaxDistance = math.huge
		NameTag.Name = "Name"
		NameTag.Size = UDim2.fromOffset(50, 25)
		NameTag.MaxDistance = 10000

		local TextLabel = Instance.new("TextLabel", NameTag)
		TextLabel.AnchorPoint = Vector2.new(0.5, 0)
		TextLabel.AutomaticSize = Enum.AutomaticSize.X
		TextLabel.BackgroundTransparency = 1
		TextLabel.Position = UDim2.fromScale(0.5, 0)
		TextLabel.Size = UDim2.fromScale(0, 1)
		TextLabel.Font = Enum.Font.GothamMedium
		TextLabel.TextColor3 = Color
		TextLabel.TextScaled = true
		TextLabel.TextSize = 24
		TextLabel.TextWrapped = true
		
		local padding = Instance.new("UIPadding", TextLabel)
		padding.PaddingTop = UDim.new(0,2)
		padding.PaddingBottom = UDim.new(0,2)
		padding.PaddingLeft = UDim.new(0,2)
		padding.PaddingRight = UDim.new(0,2)

		local function getName()
			if Hum then
				TextLabel.Text = string.format("%s (@%s)", Hum.DisplayName, Parent.Name)
				if Hum.DisplayName == Parent.Name or Hum.DisplayName == "" then
					TextLabel.Text = Parent.Name
				end
			else
				TextLabel.Text = Parent.Name
			end
		end
		getName()
		Parent:GetPropertyChangedSignal("Name"):Connect(function()
			getName()
		end)
		if Hum then
			Hum:GetPropertyChangedSignal("DisplayName"):Connect(function()
				getName()
			end)
		end
		NameTag.Parent = Parent.PrimaryPart or Parent:FindFirstChild("Head")
		Parent:GetPropertyChangedSignal("PrimaryPart"):Connect(function()
			NameTag.Parent = Parent:FindFirstChild("Head") or Parent.PrimaryPart
		end)

		if Parent and Players:GetPlayerFromCharacter(Parent) then
			local plr = Players:GetPlayerFromCharacter(Parent)
			local function teamColor()
				if plr.Team then
					TextLabel.TextColor3 = plr.TeamColor.Color
				else
					TextLabel.TextColor3 = Color
				end
				if plr.Neutral then
					TextLabel.TextColor3 = Color
				end
			end
			teamColor()
			plr:GetPropertyChangedSignal("TeamColor"):Connect(function()
				teamColor()
			end)
			plr:GetPropertyChangedSignal("Team"):Connect(function()
				teamColor()
			end)
			plr:GetPropertyChangedSignal("Neutral"):Connect(function()
				teamColor()
			end)
		end
	end
end

local xRayColor = Color3.fromRGB(0,128,255)
local nameTagColor = xRayColor

workspace.DescendantAdded:Connect(function(obj)
	if obj:IsA("Humanoid") and obj.Parent:IsA("Model") then
		spawn(function()
			wait(0.1)
			makeNameTag(obj.Parent,nameTagColor)
			highlight(Players:GetPlayerFromCharacter(obj.Parent), obj.Parent, xRayColor)
		end)
	end
end)
for _,obj in pairs(workspace:GetDescendants()) do
	if obj:IsA("Humanoid") and obj.Parent:IsA("Model") then
		makeNameTag(obj.Parent,nameTagColor)
		highlight(Players:GetPlayerFromCharacter(obj.Parent), obj.Parent, xRayColor)
	end
end
