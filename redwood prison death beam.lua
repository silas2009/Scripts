local tool = Instance.new("Tool",game.Players.LocalPlayer.Backpack)
tool.RequiresHandle = false
tool.Name = "DEATH BEAM"

local remoteEvent = workspace.resources.RemoteEvent

local laser = Instance.new("Part")
laser.Material = Enum.Material.SmoothPlastic
laser.BrickColor = BrickColor.new("Mid gray")
laser.Anchored = true
laser.CanCollide = false

function drawLaser(pos1, pos2, props)
	local magnitude = (pos1 - pos2).Magnitude;
	local laserClone = laser:Clone();
	laserClone.Parent = workspace.ignore;
	laserClone.Size = Vector3.new(0.2, 0.2, magnitude)
	laserClone.CFrame = CFrame.new(pos1, pos2) * CFrame.new(0, 0, -magnitude / 2) * CFrame.Angles(0, 0, 2 * math.pi * math.random())
	if props then
		for i,v in pairs(props) do
			laserClone[i] = v
		end
	end
	laserClone.CanCollide = false
	laserClone.Parent = workspace.ignore
	return laserClone
end

function createPart(Pos1,Pos2,Props)
	local newLaser = drawLaser(Pos1 or Vector3.new(),Pos2 or Vector3.new(),Props)
	spawn(function()
		while wait() do
			newLaser.Transparency += 0.25
			if newLaser.Transparency >= 1 then
				newLaser:Destroy()
				break
			end
		end
	end)

	remoteEvent:FireServer("FireOtherClients", "drawLaser", Pos1 or Vector3.new(), Pos2 or Vector3.new(), Props)
	return newLaser
end

function dealDamage(Character, GunType, Pos1, Pos2)
	remoteEvent:FireServer("dealBulletDamage", Character:FindFirstChildOfClass("Humanoid"), GunType, Pos1, Pos2)
end
local colors = {
	Color3.fromRGB(255,0,0),
	Color3.fromRGB(0,255,0),
}
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
tool.Activated:Connect(function()
	local target = mouse.Hit.Position
	local size = Vector3.new(400,40,40)
	local explosionSize = Vector3.new(1,10,10)
	local posOffset = Vector3.new()
	for i = 1,20 do
		task.wait()
		size += Vector3.new(0,-2,-2)
		explosionSize += Vector3.new(0,4,4)
		local pos = target - Vector3.new(0,400,0)
		local newLaser = createPart(nil,nil,{
			CFrame = CFrame.new(target + Vector3.new(0,(size.X/2) - 10,0)) * CFrame.Angles(0,0,math.rad(90)),
			Color = colors[math.random(1,#colors)],
			Material=Enum.Material.Neon,
			Size = size,
			Shape = "Cylinder",
			CanCollide = true,
			RotVelocity=Vector3.new(10000,10000,10000),
			Transparency = 0.5
		})
		createPart(nil,nil,{
			CFrame = CFrame.new(target) * CFrame.Angles(0,0,math.rad(90)),
			Color = Color3.fromRGB(128,128,128),
			Material=Enum.Material.Concrete,
			Size = explosionSize,
			Shape = "Cylinder",
			Velocity = Vector3.new(math.random(-500,500),1000,math.random(-500,500)),
			CanCollide = true,
			
			Transparency = 0.5
		})
		for i,v in pairs(workspace:GetPartsInPart(newLaser)) do
			if v.Parent:FindFirstChildOfClass("Humanoid") then
				local pos1 = v.Position + Vector3.new(0,10,0)
				dealDamage(v.Parent,"AK47",pos1,v.Position)
			end
		end
	end
end)
