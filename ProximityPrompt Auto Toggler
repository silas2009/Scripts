local plr = game:GetService("Players").LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local humRootPart = char:WaitForChild("HumanoidRootPart")
plr.CharacterAdded:Connect(function(character)
	char = character
	humRootPart = character:WaitForChild("HumanoidRootPart")
end)
local proximityPrompts = {}

for _,obj:Instance in pairs(workspace:GetDescendants()) do
	if obj:IsA("ProximityPrompt") then
		table.insert(proximityPrompts, obj)
	end
end
workspace.DescendantAdded:Connect(function(obj)
	if obj:IsA("ProximityPrompt") then
		table.insert(proximityPrompts, obj)
	end
end)

function getDistance(part1, part2)
	local distance = (part1.Position - part2.Position).Magnitude
	
	return distance
end

function getNearest(range, part)
	local closest

	for _,obj:ProximityPrompt in ipairs(proximityPrompts) do
		local distance = getDistance(obj.Parent, part)

		if distance < range then
			range = distance

			closest = obj
		end
	end

	return closest
end

local alpha = 0

game:GetService("RunService").RenderStepped:Connect(function(delta)
	local roundedAlpha = math.round(alpha*10)/10
	local nearest:ProximityPrompt = getNearest(10, humRootPart)
	if nearest then
		if getDistance(nearest.Parent, humRootPart) <= 10 then
			alpha += delta
			nearest:InputHoldBegin()
			if roundedAlpha == nearest.HoldDuration + 0.1 then
				alpha = 0
				nearest:InputHoldEnd()
			else
				nearest:InputHoldBegin()
			end
		end
	else
		alpha = 0
	end
end)
