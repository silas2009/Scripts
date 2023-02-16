-- silas_4008

local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()

local speed = 20
local speedAdd = 0.5
local currentSpeed = speed

local uis = game:GetService("UserInputService")
local flying = false

uis.InputBegan:Connect(function(input)
	local KeyCode = input.KeyCode
	if KeyCode == Enum.KeyCode.E then
		flying = not flying
	end
end)

function fly(char)
	local humRootPart = char:WaitForChild("HumanoidRootPart")
	local hum = char:WaitForChild("Humanoid")
	local bodyVelocity = Instance.new("BodyVelocity",humRootPart)
	bodyVelocity.MaxForce = Vector3.new(1000000, 1000000, 1000000)
	local bodyGyro = Instance.new("BodyGyro")
	bodyGyro.MaxTorque = Vector3.new(1000000, 1000000, 1000000)
	game:GetService("RunService").RenderStepped:Connect(function()
	    if uis:GetFocusedTextBox() then return end
	    if char and char.Parent then
			if flying then
				bodyVelocity.Parent = humRootPart
				bodyGyro.Parent = humRootPart
				local pos = workspace.CurrentCamera.CFrame.Rotation
				local keyClick = false
				if uis:IsKeyDown(Enum.KeyCode.W) then
					keyClick = true
					currentSpeed += speedAdd
					pos *= CFrame.new(0,0,-currentSpeed)
				end
				if uis:IsKeyDown(Enum.KeyCode.A) then
					keyClick = true
					currentSpeed += speedAdd
					pos *= CFrame.new(-currentSpeed,0,0)
				end
				if uis:IsKeyDown(Enum.KeyCode.S) then
					keyClick = true
					currentSpeed += speedAdd
					pos *= CFrame.new(0,0,currentSpeed)
				end
				if uis:IsKeyDown(Enum.KeyCode.D) then
					keyClick = true
					currentSpeed += speedAdd
					pos *= CFrame.new(currentSpeed,0,0)
				end
				if uis:IsKeyDown(Enum.KeyCode.Space) then
					keyClick = true
					currentSpeed += speedAdd
					pos *= CFrame.new(0,currentSpeed,0)
				end
				if uis:IsKeyDown(Enum.KeyCode.LeftControl) or uis:IsKeyDown(Enum.KeyCode.RightControl) then
					keyClick = true
					currentSpeed += speedAdd
					pos *= CFrame.new(0,-currentSpeed,0)
				end
				if not keyClick then
					currentSpeed = speed
				end
				bodyVelocity.Velocity = bodyVelocity.Velocity:Lerp(pos.Position,0.5)
				bodyGyro.CFrame = workspace.CurrentCamera.CFrame.Rotation
			else
				bodyVelocity.Parent = nil
				bodyVelocity.Velocity = Vector3.zero
				bodyGyro.Parent = nil
				currentSpeed = speed
			end
			if not hum.Sit then
				hum.PlatformStand = flying
			end
		end
	end)
end

plr.CharacterAdded:Connect(function(character)
	fly(character)
end)

fly(char)
