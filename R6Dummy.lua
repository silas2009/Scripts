local a=Instance.new"Model"
a.Name=game.Players.LocalPlayer.Name
a.WorldPivot=CFrame.new(-484.079833984375,225.27359008789062,-234.5030517578125)
local b=Instance.new"Part"
b.Name="Head"
b.TopSurface=0
b.Color=Color3.fromRGB(127,127,127)
b.Size=Vector3.new(2,1,1)
b.CFrame=CFrame.new(0,501.5,0)
b.PivotOffset=CFrame.new(0,-4.5,0)
b.formFactor=0
b.Parent=a
local c=Instance.new"SpecialMesh"
c.Scale=Vector3.new(1.25,1.25,1.25)
c.Parent=b
local d=Instance.new"Decal"
d.Name="face"
d.Texture="rbxasset://textures/face.png"
d.Parent=b
local e=Instance.new"Part"
e.Name="Torso"
e.RightParamB=0
e.RightParamA=0
e.Color=Color3.fromRGB(127,127,127)
e.RightSurface=2
e.Size=Vector3.new(2,2,1)
e.LeftSurface=2
e.LeftParamB=0
e.CFrame=CFrame.new(0,500,0)
e.LeftParamA=0
e.formFactor=0
e.Parent=a
local f=Instance.new"Motor6D"
f.Name="Right Shoulder"
f.C1=CFrame.new(-0.5,0.5,0,0,0,1,0,1,0,-1,-0,-0)
f.C0=CFrame.new(1,0.5,0,0,0,1,0,1,0,-1,-0,-0)
f.MaxVelocity=0.1
f.Parent=e
local g=Instance.new"Motor6D"
g.Name="Left Shoulder"
g.C1=CFrame.new(0.5,0.5,0,-0,-0,-1,0,1,0,1,0,0)
g.C0=CFrame.new(-1,0.5,0,-0,-0,-1,0,1,0,1,0,0)
g.MaxVelocity=0.1
g.Parent=e
local h=Instance.new"Motor6D"
h.Name="Right Hip"
h.C1=CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
h.C0=CFrame.new(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
h.MaxVelocity=0.1
h.Parent=e
local i=Instance.new"Motor6D"
i.Name="Left Hip"
i.C1=CFrame.new(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
i.C0=CFrame.new(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
i.MaxVelocity=0.1
i.Parent=e
local j=Instance.new"Motor6D"
j.Name="Neck"
j.C1=CFrame.new(0,-0.5,0,-1,-0,-0,0,0,1,0,1,0)
j.C0=CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)
j.MaxVelocity=0.1
j.Parent=e
local k=Instance.new"Part"
k.Name="Left Arm"
k.CanCollide=false
k.Color=Color3.fromRGB(127,127,127)
k.Size=Vector3.new(1,2,1)
k.CFrame=CFrame.new(-1.5,500,0)
k.formFactor=0
k.Parent=a
local l=Instance.new"Part"
l.Name="Right Arm"
l.CanCollide=false
l.Color=Color3.fromRGB(127,127,127)
l.Size=Vector3.new(1,2,1)
l.CFrame=CFrame.new(1.5,500,0)
l.formFactor=0
l.Parent=a
local m=Instance.new"Part"
m.Name="Left Leg"
m.BottomSurface=0
m.CanCollide=false
m.Color=Color3.fromRGB(127,127,127)
m.Size=Vector3.new(1,2,1)
m.CFrame=CFrame.new(-0.5,498,0)
m.formFactor=0
m.Parent=a
local n=Instance.new"Part"
n.Name="Right Leg"
n.BottomSurface=0
n.CanCollide=false
n.Color=Color3.fromRGB(127,127,127)
n.Size=Vector3.new(1,2,1)
n.CFrame=CFrame.new(0.5,498,0)
n.formFactor=0
n.Parent=a
local o=Instance.new"Humanoid"
o.Parent=a
local q=Instance.new"Animator"
q.Parent=o
local r=Instance.new"HumanoidDescription"
r.ProportionScale=0
r.TorsoColor=Color3.fromRGB(128,128,128)
r.RightLegColor=Color3.fromRGB(128,128,128)
r.LeftLegColor=Color3.fromRGB(128,128,128)
r.BodyTypeScale=0
r.LeftArmColor=Color3.fromRGB(128,128,128)
r.HeadColor=Color3.fromRGB(128,128,128)
r.RightArmColor=Color3.fromRGB(128,128,128)
r.Parent=o
local s=Instance.new"BodyPartDescription"
s.Color=Color3.fromRGB(128,128,128)
s.Parent=r
local t=Instance.new"BodyPartDescription"
t.Color=Color3.fromRGB(128,128,128)
t.BodyPart=2
t.Parent=r
local u=Instance.new"BodyPartDescription"
u.Color=Color3.fromRGB(128,128,128)
u.BodyPart=4
u.Parent=r
local v=Instance.new"BodyPartDescription"
v.Color=Color3.fromRGB(128,128,128)
v.BodyPart=3
v.Parent=r
local w=Instance.new"BodyPartDescription"
w.Color=Color3.fromRGB(128,128,128)
w.BodyPart=5
w.Parent=r
local x=Instance.new"BodyPartDescription"
x.Color=Color3.fromRGB(128,128,128)
x.BodyPart=1
x.Parent=r
local y=Instance.new"Part"
y.Name="HumanoidRootPart"
y.RightParamB=0
y.BottomSurface=0
y.CanCollide=false
y.Transparency=1
y.TopSurface=0
y.RightParamA=0
y.Size=Vector3.new(2,2,1)
y.LeftParamB=0
y.CFrame=CFrame.new(0,500,0)
y.LeftParamA=0
y.formFactor=0
y.Parent=a
local z=Instance.new"Motor6D"
z.Name="RootJoint"
z.C1=CFrame.new(0,0,0,-1,-0,-0,0,0,1,0,1,0)
z.C0=CFrame.new(0,0,0,-1,-0,-0,0,0,1,0,1,0)
z.MaxVelocity=0.1
z.Parent=y
local A=Instance.new"LocalScript"
A.Name="Animate"
A.Parent=a
local B=Instance.new"StringValue"
B.Name="idle"
B.Parent=A
local C=Instance.new"Animation"
C.Name="Animation1"
C.AnimationId="http://www.roblox.com/asset/?id=180435571"
C.Parent=B
local D=Instance.new"NumberValue"
D.Name="Weight"
D.Value=9
D.Parent=C
local E=Instance.new"Animation"
E.Name="Animation2"
E.AnimationId="http://www.roblox.com/asset/?id=180435792"
E.Parent=B
local F=Instance.new"NumberValue"
F.Name="Weight"
F.Value=1
F.Parent=E
local G=Instance.new"StringValue"
G.Name="walk"
G.Parent=A
local H=Instance.new"Animation"
H.Name="WalkAnim"
H.AnimationId="http://www.roblox.com/asset/?id=180426354"
H.Parent=G
local I=Instance.new"StringValue"
I.Name="run"
I.Parent=A
local J=Instance.new"Animation"
J.Name="RunAnim"
J.AnimationId="http://www.roblox.com/asset/?id=180426354"
J.Parent=I
local K=Instance.new"StringValue"
K.Name="jump"
K.Parent=A
local L=Instance.new"Animation"
L.Name="JumpAnim"
L.AnimationId="http://www.roblox.com/asset/?id=125750702"
L.Parent=K
local M=Instance.new"StringValue"
M.Name="climb"
M.Parent=A
local N=Instance.new"Animation"
N.Name="ClimbAnim"
N.AnimationId="http://www.roblox.com/asset/?id=180436334"
N.Parent=M
local O=Instance.new"StringValue"
O.Name="toolnone"
O.Parent=A
local P=Instance.new"Animation"
P.Name="ToolNoneAnim"
P.AnimationId="http://www.roblox.com/asset/?id=182393478"
P.Parent=O
local Q=Instance.new"StringValue"
Q.Name="fall"
Q.Parent=A
local R=Instance.new"Animation"
R.Name="FallAnim"
R.AnimationId="http://www.roblox.com/asset/?id=180436148"
R.Parent=Q
local S=Instance.new"StringValue"
S.Name="sit"
S.Parent=A
local T=Instance.new"Animation"
T.Name="SitAnim"
T.AnimationId="http://www.roblox.com/asset/?id=178130996"
T.Parent=S
local U=Instance.new"BindableFunction"
U.Name="PlayEmote"
U.Parent=A
local V=Instance.new"NumberValue"
V.Name="ScaleDampeningPercent"
V.Value=1
V.Parent=A
local W=Instance.new"BodyColors"
W.LeftArmColor3=Color3.fromRGB(128,128,128)
W.HeadColor3=Color3.fromRGB(128,128,128)
W.TorsoColor3=Color3.fromRGB(128,128,128)
W.LeftLegColor3=Color3.fromRGB(128,128,128)
W.RightLegColor3=Color3.fromRGB(128,128,128)
W.RightArmColor3=Color3.fromRGB(128,128,128)
W.Parent=a
f.Part1=l
f.Part0=e
g.Part1=k
g.Part0=e
h.Part1=n
h.Part0=e
i.Part1=m
i.Part0=e
j.Part1=b
j.Part0=e
o.Torso=y
o.RightLeg=n
o.LeftLeg=m
z.Part1=e
z.Part0=y
a.PrimaryPart=b
a.Parent=workspace

spawn(function()
	script = A
	-- humanoidAnimatePlayEmote.lua

	local Figure = script.Parent
	local Torso = Figure:WaitForChild("Torso")
	local RightShoulder = Torso:WaitForChild("Right Shoulder")
	local LeftShoulder = Torso:WaitForChild("Left Shoulder")
	local RightHip = Torso:WaitForChild("Right Hip")
	local LeftHip = Torso:WaitForChild("Left Hip")
	local Neck = Torso:WaitForChild("Neck")
	local Humanoid = Figure:WaitForChild("Humanoid")
	local pose = "Standing"

	local EMOTE_TRANSITION_TIME = 0.1

	local userAnimateScaleRunSuccess, userAnimateScaleRunValue = pcall(function() return UserSettings():IsUserFeatureEnabled("UserAnimateScaleRun") end)
	local userAnimateScaleRun = userAnimateScaleRunSuccess and userAnimateScaleRunValue

	local function getRigScale()
		if userAnimateScaleRun then
			return Figure:GetScale()
		else
			return 1
		end
	end

	local currentAnim = ""
	local currentAnimInstance = nil
	local currentAnimTrack = nil
	local currentAnimKeyframeHandler = nil
	local currentAnimSpeed = 1.0
	local animTable = {}
	local animNames = { 
		idle = 	{	
			{ id = "http://www.roblox.com/asset/?id=180435571", weight = 9 },
			{ id = "http://www.roblox.com/asset/?id=180435792", weight = 1 }
		},
		walk = 	{ 	
			{ id = "http://www.roblox.com/asset/?id=180426354", weight = 10 } 
		}, 
		run = 	{
			{ id = "run.xml", weight = 10 } 
		}, 
		jump = 	{
			{ id = "http://www.roblox.com/asset/?id=125750702", weight = 10 } 
		}, 
		fall = 	{
			{ id = "http://www.roblox.com/asset/?id=180436148", weight = 10 } 
		}, 
		climb = {
			{ id = "http://www.roblox.com/asset/?id=180436334", weight = 10 } 
		}, 
		sit = 	{
			{ id = "http://www.roblox.com/asset/?id=178130996", weight = 10 } 
		},	
		toolnone = {
			{ id = "http://www.roblox.com/asset/?id=182393478", weight = 10 } 
		},
		toolslash = {
			{ id = "http://www.roblox.com/asset/?id=129967390", weight = 10 } 
			--				{ id = "slash.xml", weight = 10 } 
		},
		toollunge = {
			{ id = "http://www.roblox.com/asset/?id=129967478", weight = 10 } 
		},
		wave = {
			{ id = "http://www.roblox.com/asset/?id=128777973", weight = 10 } 
		},
		point = {
			{ id = "http://www.roblox.com/asset/?id=128853357", weight = 10 } 
		},
		dance1 = {
			{ id = "http://www.roblox.com/asset/?id=182435998", weight = 10 }, 
			{ id = "http://www.roblox.com/asset/?id=182491037", weight = 10 }, 
			{ id = "http://www.roblox.com/asset/?id=182491065", weight = 10 } 
		},
		dance2 = {
			{ id = "http://www.roblox.com/asset/?id=182436842", weight = 10 }, 
			{ id = "http://www.roblox.com/asset/?id=182491248", weight = 10 }, 
			{ id = "http://www.roblox.com/asset/?id=182491277", weight = 10 } 
		},
		dance3 = {
			{ id = "http://www.roblox.com/asset/?id=182436935", weight = 10 }, 
			{ id = "http://www.roblox.com/asset/?id=182491368", weight = 10 }, 
			{ id = "http://www.roblox.com/asset/?id=182491423", weight = 10 } 
		},
		laugh = {
			{ id = "http://www.roblox.com/asset/?id=129423131", weight = 10 } 
		},
		cheer = {
			{ id = "http://www.roblox.com/asset/?id=129423030", weight = 10 } 
		},
	}
	local dances = {"dance1", "dance2", "dance3"}

	-- Existance in this list signifies that it is an emote, the value indicates if it is a looping emote
	local emoteNames = { wave = false, point = false, dance1 = true, dance2 = true, dance3 = true, laugh = false, cheer = false}

	function configureAnimationSet(name, fileList)
		if (animTable[name] ~= nil) then
			for _, connection in pairs(animTable[name].connections) do
				connection:disconnect()
			end
		end
		animTable[name] = {}
		animTable[name].count = 0
		animTable[name].totalWeight = 0	
		animTable[name].connections = {}

		-- check for config values
		local config = script:FindFirstChild(name)
		if (config ~= nil) then
			--		print("Loading anims " .. name)
			table.insert(animTable[name].connections, config.ChildAdded:connect(function(child) configureAnimationSet(name, fileList) end))
			table.insert(animTable[name].connections, config.ChildRemoved:connect(function(child) configureAnimationSet(name, fileList) end))
			local idx = 1
			for _, childPart in pairs(config:GetChildren()) do
				if (childPart:IsA("Animation")) then
					table.insert(animTable[name].connections, childPart.Changed:connect(function(property) configureAnimationSet(name, fileList) end))
					animTable[name][idx] = {}
					animTable[name][idx].anim = childPart
					local weightObject = childPart:FindFirstChild("Weight")
					if (weightObject == nil) then
						animTable[name][idx].weight = 1
					else
						animTable[name][idx].weight = weightObject.Value
					end
					animTable[name].count = animTable[name].count + 1
					animTable[name].totalWeight = animTable[name].totalWeight + animTable[name][idx].weight
					--			print(name .. " [" .. idx .. "] " .. animTable[name][idx].anim.AnimationId .. " (" .. animTable[name][idx].weight .. ")")
					idx = idx + 1
				end
			end
		end

		-- fallback to defaults
		if (animTable[name].count <= 0) then
			for idx, anim in pairs(fileList) do
				animTable[name][idx] = {}
				animTable[name][idx].anim = Instance.new("Animation")
				animTable[name][idx].anim.Name = name
				animTable[name][idx].anim.AnimationId = anim.id
				animTable[name][idx].weight = anim.weight
				animTable[name].count = animTable[name].count + 1
				animTable[name].totalWeight = animTable[name].totalWeight + anim.weight
				--			print(name .. " [" .. idx .. "] " .. anim.id .. " (" .. anim.weight .. ")")
			end
		end
	end

	-- Setup animation objects
	function scriptChildModified(child)
		local fileList = animNames[child.Name]
		if (fileList ~= nil) then
			configureAnimationSet(child.Name, fileList)
		end	
	end

	script.ChildAdded:connect(scriptChildModified)
	script.ChildRemoved:connect(scriptChildModified)

	-- Clear any existing animation tracks
	-- Fixes issue with characters that are moved in and out of the Workspace accumulating tracks
	local animator = if Humanoid then Humanoid:FindFirstChildOfClass("Animator") else nil
	if animator then
		local animTracks = animator:GetPlayingAnimationTracks()
		for i,track in ipairs(animTracks) do
			track:Stop(0)
			track:Destroy()
		end
	end


	for name, fileList in pairs(animNames) do 
		configureAnimationSet(name, fileList)
	end	

	-- ANIMATION

	-- declarations
	local toolAnim = "None"
	local toolAnimTime = 0

	local jumpAnimTime = 0
	local jumpAnimDuration = 0.3

	local toolTransitionTime = 0.1
	local fallTransitionTime = 0.3
	local jumpMaxLimbVelocity = 0.75

	-- functions

	function stopAllAnimations()
		local oldAnim = currentAnim

		-- return to idle if finishing an emote
		if (emoteNames[oldAnim] ~= nil and emoteNames[oldAnim] == false) then
			oldAnim = "idle"
		end

		currentAnim = ""
		currentAnimInstance = nil
		if (currentAnimKeyframeHandler ~= nil) then
			currentAnimKeyframeHandler:disconnect()
		end

		if (currentAnimTrack ~= nil) then
			currentAnimTrack:Stop()
			currentAnimTrack:Destroy()
			currentAnimTrack = nil
		end
		return oldAnim
	end

	function setAnimationSpeed(speed)
		if speed ~= currentAnimSpeed then
			currentAnimSpeed = speed
			currentAnimTrack:AdjustSpeed(currentAnimSpeed)
		end
	end

	function keyFrameReachedFunc(frameName)
		if (frameName == "End") then

			local repeatAnim = currentAnim
			-- return to idle if finishing an emote
			if (emoteNames[repeatAnim] ~= nil and emoteNames[repeatAnim] == false) then
				repeatAnim = "idle"
			end

			local animSpeed = currentAnimSpeed
			playAnimation(repeatAnim, 0.0, Humanoid)
			setAnimationSpeed(animSpeed)
		end
	end

	-- Preload animations
	function playAnimation(animName, transitionTime, humanoid) 

		local roll = math.random(1, animTable[animName].totalWeight) 
		local origRoll = roll
		local idx = 1
		while (roll > animTable[animName][idx].weight) do
			roll = roll - animTable[animName][idx].weight
			idx = idx + 1
		end
		--		print(animName .. " " .. idx .. " [" .. origRoll .. "]")
		local anim = animTable[animName][idx].anim

		-- switch animation		
		if (anim ~= currentAnimInstance) then

			if (currentAnimTrack ~= nil) then
				currentAnimTrack:Stop(transitionTime)
				currentAnimTrack:Destroy()
			end

			currentAnimSpeed = 1.0

			-- load it to the humanoid; get AnimationTrack
			currentAnimTrack = humanoid:LoadAnimation(anim)
			currentAnimTrack.Priority = Enum.AnimationPriority.Core

			-- play the animation
			currentAnimTrack:Play(transitionTime)
			currentAnim = animName
			currentAnimInstance = anim

			-- set up keyframe name triggers
			if (currentAnimKeyframeHandler ~= nil) then
				currentAnimKeyframeHandler:disconnect()
			end
			currentAnimKeyframeHandler = currentAnimTrack.KeyframeReached:connect(keyFrameReachedFunc)

		end

	end

	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------

	local toolAnimName = ""
	local toolAnimTrack = nil
	local toolAnimInstance = nil
	local currentToolAnimKeyframeHandler = nil

	function toolKeyFrameReachedFunc(frameName)
		if (frameName == "End") then
			--		print("Keyframe : ".. frameName)	
			playToolAnimation(toolAnimName, 0.0, Humanoid)
		end
	end


	function playToolAnimation(animName, transitionTime, humanoid, priority)	 

		local roll = math.random(1, animTable[animName].totalWeight) 
		local origRoll = roll
		local idx = 1
		while (roll > animTable[animName][idx].weight) do
			roll = roll - animTable[animName][idx].weight
			idx = idx + 1
		end
		--		print(animName .. " * " .. idx .. " [" .. origRoll .. "]")
		local anim = animTable[animName][idx].anim

		if (toolAnimInstance ~= anim) then

			if (toolAnimTrack ~= nil) then
				toolAnimTrack:Stop()
				toolAnimTrack:Destroy()
				transitionTime = 0
			end

			-- load it to the humanoid; get AnimationTrack
			toolAnimTrack = humanoid:LoadAnimation(anim)
			if priority then
				toolAnimTrack.Priority = priority
			end

			-- play the animation
			toolAnimTrack:Play(transitionTime)
			toolAnimName = animName
			toolAnimInstance = anim

			currentToolAnimKeyframeHandler = toolAnimTrack.KeyframeReached:connect(toolKeyFrameReachedFunc)
		end
	end

	function stopToolAnimations()
		local oldAnim = toolAnimName

		if (currentToolAnimKeyframeHandler ~= nil) then
			currentToolAnimKeyframeHandler:disconnect()
		end

		toolAnimName = ""
		toolAnimInstance = nil
		if (toolAnimTrack ~= nil) then
			toolAnimTrack:Stop()
			toolAnimTrack:Destroy()
			toolAnimTrack = nil
		end


		return oldAnim
	end

	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------


	function onRunning(speed)
		speed /= getRigScale()

		if speed > 0.01 then
			playAnimation("walk", 0.1, Humanoid)
			if currentAnimInstance and currentAnimInstance.AnimationId == "http://www.roblox.com/asset/?id=180426354" then
				setAnimationSpeed(speed / 14.5)
			end
			pose = "Running"
		else
			if emoteNames[currentAnim] == nil then
				playAnimation("idle", 0.1, Humanoid)
				pose = "Standing"
			end
		end
	end

	function onDied()
		pose = "Dead"
	end

	function onJumping()
		playAnimation("jump", 0.1, Humanoid)
		jumpAnimTime = jumpAnimDuration
		pose = "Jumping"
	end

	function onClimbing(speed)
		speed /= getRigScale()

		playAnimation("climb", 0.1, Humanoid)
		setAnimationSpeed(speed / 12.0)
		pose = "Climbing"
	end

	function onGettingUp()
		pose = "GettingUp"
	end

	function onFreeFall()
		if (jumpAnimTime <= 0) then
			playAnimation("fall", fallTransitionTime, Humanoid)
		end
		pose = "FreeFall"
	end

	function onFallingDown()
		pose = "FallingDown"
	end

	function onSeated()
		pose = "Seated"
	end

	function onPlatformStanding()
		pose = "PlatformStanding"
	end

	function onSwimming(speed)
		if speed > 0 then
			pose = "Running"
		else
			pose = "Standing"
		end
	end

	function getTool()	
		for _, kid in ipairs(Figure:GetChildren()) do
			if kid.className == "Tool" then return kid end
		end
		return nil
	end

	function getToolAnim(tool)
		for _, c in ipairs(tool:GetChildren()) do
			if c.Name == "toolanim" and c.className == "StringValue" then
				return c
			end
		end
		return nil
	end

	function animateTool()

		if (toolAnim == "None") then
			playToolAnimation("toolnone", toolTransitionTime, Humanoid, Enum.AnimationPriority.Idle)
			return
		end

		if (toolAnim == "Slash") then
			playToolAnimation("toolslash", 0, Humanoid, Enum.AnimationPriority.Action)
			return
		end

		if (toolAnim == "Lunge") then
			playToolAnimation("toollunge", 0, Humanoid, Enum.AnimationPriority.Action)
			return
		end
	end

	function moveSit()
		RightShoulder.MaxVelocity = 0.15
		LeftShoulder.MaxVelocity = 0.15
		RightShoulder:SetDesiredAngle(3.14 /2)
		LeftShoulder:SetDesiredAngle(-3.14 /2)
		RightHip:SetDesiredAngle(3.14 /2)
		LeftHip:SetDesiredAngle(-3.14 /2)
	end

	local lastTick = 0

	function move(time)
		local amplitude = 1
		local frequency = 1
		local deltaTime = time - lastTick
		lastTick = time

		local climbFudge = 0
		local setAngles = false

		if (jumpAnimTime > 0) then
			jumpAnimTime = jumpAnimTime - deltaTime
		end

		if (pose == "FreeFall" and jumpAnimTime <= 0) then
			playAnimation("fall", fallTransitionTime, Humanoid)
		elseif (pose == "Seated") then
			playAnimation("sit", 0.5, Humanoid)
			return
		elseif (pose == "Running") then
			playAnimation("walk", 0.1, Humanoid)
		elseif (pose == "Dead" or pose == "GettingUp" or pose == "FallingDown" or pose == "Seated" or pose == "PlatformStanding") then
			--		print("Wha " .. pose)
			stopAllAnimations()
			amplitude = 0.1
			frequency = 1
			setAngles = true
		end

		if (setAngles) then
			local desiredAngle = amplitude * math.sin(time * frequency)

			RightShoulder:SetDesiredAngle(desiredAngle + climbFudge)
			LeftShoulder:SetDesiredAngle(desiredAngle - climbFudge)
			RightHip:SetDesiredAngle(-desiredAngle)
			LeftHip:SetDesiredAngle(-desiredAngle)
		end

		-- Tool Animation handling
		local tool = getTool()
		if tool and tool:FindFirstChild("Handle") then

			local animStringValueObject = getToolAnim(tool)

			if animStringValueObject then
				toolAnim = animStringValueObject.Value
				-- message recieved, delete StringValue
				animStringValueObject.Parent = nil
				toolAnimTime = time + .3
			end

			if time > toolAnimTime then
				toolAnimTime = 0
				toolAnim = "None"
			end

			animateTool()		
		else
			stopToolAnimations()
			toolAnim = "None"
			toolAnimInstance = nil
			toolAnimTime = 0
		end
	end

	-- connect events
	Humanoid.Died:connect(onDied)
	Humanoid.Running:connect(onRunning)
	Humanoid.Jumping:connect(onJumping)
	Humanoid.Climbing:connect(onClimbing)
	Humanoid.GettingUp:connect(onGettingUp)
	Humanoid.FreeFalling:connect(onFreeFall)
	Humanoid.FallingDown:connect(onFallingDown)
	Humanoid.Seated:connect(onSeated)
	Humanoid.PlatformStanding:connect(onPlatformStanding)
	Humanoid.Swimming:connect(onSwimming)

	---- setup emote chat hook
	game:GetService("Players").LocalPlayer.Chatted:connect(function(msg)
		local emote = ""
		if msg == "/e dance" then
			emote = dances[math.random(1, #dances)]
		elseif (string.sub(msg, 1, 3) == "/e ") then
			emote = string.sub(msg, 4)
		elseif (string.sub(msg, 1, 7) == "/emote ") then
			emote = string.sub(msg, 8)
		end

		if (pose == "Standing" and emoteNames[emote] ~= nil) then
			playAnimation(emote, 0.1, Humanoid)
		end

	end)

	-- emote bindable hook
	script:WaitForChild("PlayEmote").OnInvoke = function(emote)
		-- Only play emotes when idling
		if pose ~= "Standing" then
			return
		end
		if emoteNames[emote] ~= nil then
			-- Default emotes
			playAnimation(emote, EMOTE_TRANSITION_TIME, Humanoid)

			return true, currentAnimTrack
		end

		-- Return false to indicate that the emote could not be played
		return false
	end
	-- main program

	-- initialize to idle
	playAnimation("idle", 0.1, Humanoid)
	pose = "Standing"

	while Figure.Parent ~= nil do
		local _, time = wait(0.1)
		move(time)
	end



end)

game.Players.LocalPlayer.Character:Destroy()
game.Players.LocalPlayer.Character = a
workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
