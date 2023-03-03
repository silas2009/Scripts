local players = game:GetService("Players")
local camera = workspace.CurrentCamera

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
game:GetService("RunService").RenderStepped:Connect(function()
    if not uis:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) then return end
    local target = closestToCursor(100)
    if not target then return end
    local cam = workspace.CurrentCamera
    local zoom = (cam.CFrame.Position - cam.Focus.Position).Magnitude
    cam.CFrame = cam.Focus * CFrame.lookAt(cam.Focus.Position,target.Head.Position).Rotation * CFrame.new(0,0,zoom)
end)
