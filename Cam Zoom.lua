-- Doge Such Wow#8955

--[[
Default activation keycode is is Left Ctrl.
Change the activation keycode by changing the "ActivationKeycode" variable.
To Activate press the activation keycode on your keyboard.
To Zoom in and out use the scroll wheel on your Mouse while pressing the activation keycode.
--]]

local ActivationKeycode = Enum.KeyCode.LeftControl
local UIS = game:GetService("UserInputService")
local zooming = false
local scrolling = false
local FOV = 15
local Player = game.Players.LocalPlayer

function IsFirstPerson()
	if Player.CameraMode == Enum.CameraMode.LockFirstPerson then
		return true
	else
		return false
	end
end

UIS.InputBegan:Connect(function(input, gameProccesed)
	local UGS = UserSettings():GetService("UserGameSettings")
	if input.KeyCode == ActivationKeycode then
		zooming = true
		game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0),
			{FieldOfView = FOV}
		):Play()
		if FOV <= 0 then
			game.TweenService:Create(UIS, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0),
				{MouseDeltaSensitivity = 0.01}
			):Play()
		else
			game.TweenService:Create(UIS, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0),
				{MouseDeltaSensitivity = FOV / 60 / UGS.MouseSensitivity}
			):Play()
		end
	end
end)

UIS.InputEnded:Connect(function(input, gameProccesed)
	local UGS = UserSettings():GetService("UserGameSettings")
	if input.KeyCode == ActivationKeycode then
		zooming = false
		game.TweenService:Create(workspace.CurrentCamera, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0),
			{FieldOfView = 70}
		):Play()
		game.TweenService:Create(UIS, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0),
			{MouseDeltaSensitivity = UGS.MouseSensitivity}
		):Play()
	end
end)

UIS.InputChanged:Connect(function(input)
	local UGS = UserSettings():GetService("UserGameSettings")
	local FirstPerson = IsFirstPerson()
	if zooming == true then
		if input.UserInputType == Enum.UserInputType.MouseWheel then
			scrolling = true
			if input.Position.Z > 0 then
				Player.CameraMode = Enum.CameraMode.LockFirstPerson
				if FOV <= 0 then
					FOV = 0
					UIS.MouseDeltaSensitivity = 0.01
				else
					FOV = FOV - 5
					UIS.MouseDeltaSensitivity = FOV / 60 / UGS.MouseSensitivity
				end
				workspace.CurrentCamera.FieldOfView = FOV
				if FirstPerson == false then
					game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic
				end
			else
				Player.CameraMode = Enum.CameraMode.LockFirstPerson
				if FOV >= 120 then
					FOV = 120
				else
					FOV = FOV + 5
				end
				workspace.CurrentCamera.FieldOfView = FOV
				UIS.MouseDeltaSensitivity = FOV / 60 / UGS.MouseSensitivity
				if FirstPerson == false then
					spawn(function()
						wait(0.1)
						if scrolling == false then
							Player.CameraMode = Enum.CameraMode.Classic
						end
					end)
				end
			end
			scrolling = false
		end
	end
end)