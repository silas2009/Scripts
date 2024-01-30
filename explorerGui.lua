local plr = game:GetService("Players").LocalPlayer
local uis = game:GetService("UserInputService")

local gui = Instance.new("ScreenGui",plr.PlayerGui)
local mainFrame = Instance.new("Frame",gui)
mainFrame.Name = "Main"
mainFrame.Size = UDim2.new(0.2,0,1,0)

local ClassIcons = {
	Nil = Vector2.new(0,0),
	Part = Vector2.new(16,0),
	CornerWedgePart = Vector2.new(16,0),
	WedgePart = Vector2.new(16,0),
	TrussPart = Vector2.new(16,0),
	Model = Vector2.new(32,0),
	Status = Vector2.new(32,0),
	ValueBase = Vector2.new(64,0),
	BoolValue = Vector2.new(64,0),
	BrickColorValue = Vector2.new(64,0),
	CFrameValue = Vector2.new(64,0),
	Color3Value = Vector2.new(64,0),
	IntValue = Vector2.new(64,0),
	NumberValue = Vector2.new(64,0),
	ObjectValue = Vector2.new(64,0),
	RayValue = Vector2.new(64,0),
	StringValue = Vector2.new(64,0),
	Vector3Value = Vector2.new(64,0),
	DoubleConstrainedValue = Vector2.new(64,0),
	IntConstrainedValue = Vector2.new(64,0),
	FloorWire = Vector2.new(64,0),
	Camera = Vector2.new(80,0),
	Script = Vector2.new(96,0),
	Decal = Vector2.new(112,0),
	SpecialMesh = Vector2.new(128,0),
	BlockMesh = Vector2.new(128,0),
	CylinderMesh = Vector2.new(128,0),
	Humanoid = Vector2.new(144,0),
	Texture = Vector2.new(160,0),
	SurfaceAppearance = Vector2.new(160,0),
	Sound = Vector2.new(176,0),
	Player = Vector2.new(192,0),
	Light = Vector2.new(208,0),
	PointLight = Vector2.new(208,0),
	SurfaceLight = Vector2.new(208,0),
	SpotLight = Vector2.new(208,0),
	Lighting = Vector2.new(208,0),
	BodyGyro = Vector2.new(224,0),
	BodyPosition = Vector2.new(224,0),
	BodyVelocity = Vector2.new(224,0),
	BodyForce = Vector2.new(224,0),
	BodyThrust = Vector2.new(224,0),
	BodyAngularVelocity = Vector2.new(224,0),
	NetworkServer = Vector2.new(240,0),
	NetworkClient = Vector2.new(256,0),
	Tool = Vector2.new(272,0),
	LocalScript = Vector2.new(288,0),
	["Workspace"] = Vector2.new(304,0),
	WorldModel = Vector2.new(304,0),
	StarterPack = Vector2.new(320,0),
	StarterGear = Vector2.new(320,0),
	Backpack = Vector2.new(320,0),
	Players = Vector2.new(336,0),
	HopperBin = Vector2.new(352,0),
	Teams = Vector2.new(368,0),
	Team = Vector2.new(384,0),
	SpawnLocation = Vector2.new(400,0),
	UIAspectRatioConstraint = Vector2.new(416,0),
	UICorner = Vector2.new(416,0),
	UIGradient = Vector2.new(416,0),
	UIGridLayout = Vector2.new(416,0),
	UIListLayout = Vector2.new(416,0),
	UIPadding = Vector2.new(416,0),
	UIPageLayout = Vector2.new(416,0),
	UIScale = Vector2.new(416,0),
	UISizeConstraint = Vector2.new(416,0),
	UIStroke = Vector2.new(416,0),
	UITableLayout = Vector2.new(416,0),
	UITextSizeConstraint = Vector2.new(416,0),
	Sky = Vector2.new(448,0),
	Atmosphere = Vector2.new(448,0),
	Clouds = Vector2.new(448,0),
	Debris = Vector2.new(480,0),
	SoundService = Vector2.new(496,0),
	Accoutrement = Vector2.new(512,0),
	Accessory = Vector2.new(512,0),
	Chat = Vector2.new(528,0),
	Message = Vector2.new(528,0),
	Hint = Vector2.new(528,0),
	JointInstance = Vector2.new(544,0),
	Weld = Vector2.new(544,0),
	Snap = Vector2.new(544,0),
	Seat = Vector2.new(560,0),
	VehicleSeat = Vector2.new(560,0),
	Platform = Vector2.new(560,0),
	SkateboardPlatform = Vector2.new(560,0),
	Explosion = Vector2.new(576,0),
	ForceField = Vector2.new(592,0),
	TouchTransmitter = Vector2.new(592,0),
	Flag = Vector2.new(608,0),
	FlagStand = Vector2.new(624,0),
	ShirtGraphic = Vector2.new(640,0),
	ClickDetector = Vector2.new(656,0),
	Sparkles = Vector2.new(672,0),
	Shirt = Vector2.new(688,0),
	Pants = Vector2.new(704,0),
	Hat = Vector2.new(720,0),
	CoreGui = Vector2.new(736,0),
	StarterGui = Vector2.new(736,0),
	PlayerGui = Vector2.new(736,0),
	MarketplaceService = Vector2.new(736,0),
	PluginDebugService = Vector2.new(736,0),
	PluginGuiService = Vector2.new(736,0),
	RobloxPluginGuiService = Vector2.new(736,0),
	ScreenGui = Vector2.new(752,0),
	GuiMain = Vector2.new(752,0),
	Frame = Vector2.new(768,0),
	ScrollingFrame = Vector2.new(768,0),
	CanvasGroup = Vector2.new(768,0),
	ImageLabel = Vector2.new(784,0),
	TextLabel = Vector2.new(800,0),
	TextButton = Vector2.new(816,0),
	TextBox = Vector2.new(816,0),
	ImageButton = Vector2.new(832,0),
	GuiButton = Vector2.new(832,0),
	ViewportFrame = Vector2.new(832,0),
	Handles = Vector2.new(848,0),
	IKControl = Vector2.new(848,0),
	SelectionBox = Vector2.new(864,0),
	SelectionSphere = Vector2.new(864,0),
	SurfaceSelection = Vector2.new(880,0),
	ArcHandles = Vector2.new(896,0),
	SelectionPartLasso = Vector2.new(912,0),
	SelectionPointLasso = Vector2.new(912,0),
	Configuration = Vector2.new(928,0),
	Smoke = Vector2.new(944,0),
	CharacterMesh = Vector2.new(960,0),
	Animation = Vector2.new(960,0),
	AnimationTrack = Vector2.new(960,0),
	Animator = Vector2.new(960,0),
	Keyframe = Vector2.new(960,0),
	KeyframeMarker = Vector2.new(960,0),
	PoseBase = Vector2.new(960,0),
	NumberPose = Vector2.new(960,0),
	Pose = Vector2.new(960,0),
	Fire = Vector2.new(976,0),
	Dialog = Vector2.new(992,0),
	DialogChoice = Vector2.new(1008,0),
	BillboardGui = Vector2.new(1024,0),
	SurfaceGui = Vector2.new(1024,0),
	Terrain = Vector2.new(1040,0),
	TerrainRegion = Vector2.new(1040,0),
	BindableFunction = Vector2.new(1056,0),
	BindableEvent = Vector2.new(1072,0),
	TestService = Vector2.new(1088,0),
	ServerStorage = Vector2.new(1104,0),
	ReplicatedFirst = Vector2.new(1120,0),
	ReplicatedStorage = Vector2.new(1120,0),
	ServerScriptService = Vector2.new(1136,0),
	NegateOperation = Vector2.new(1152,0),
	MeshPart = Vector2.new(1168,0),
	UnionOperation = Vector2.new(1168,0),
	RemoteFunction = Vector2.new(1184,0),
	RemoteEvent = Vector2.new(1200,0),
	ModuleScript = Vector2.new(1216,0),
	Folder = Vector2.new(1232,0),
	PlayerScripts = Vector2.new(1248,0),
	StandalonePluginScripts = Vector2.new(1248,0),
	StarterPlayer = Vector2.new(1264,0),
	StarterCharacterScripts = Vector2.new(1264,0),
	StarterPlayerScripts = Vector2.new(1264,0),
	ParticleEmitter = Vector2.new(1280,0),
	Attachment = Vector2.new(1296,0),
	BloomEffect = Vector2.new(1328,0),
	BlurEffect = Vector2.new(1328,0),
	ColorCorrectionEffect = Vector2.new(1328,0),
	DepthOfFieldEffect = Vector2.new(1328,0),
	SunRaysEffect = Vector2.new(1328,0),
	ChorusSoundEffect = Vector2.new(1344,0),
	CompressorSoundEffect = Vector2.new(1344,0),
	ChannelSelectorSoundEffect = Vector2.new(1344,0),
	DistortionSoundEffect = Vector2.new(1344,0),
	EchoSoundEffect = Vector2.new(1344,0),
	EqualizerSoundEffect = Vector2.new(1344,0),
	FlangeSoundEffect = Vector2.new(1344,0),
	PitchShiftSoundEffect = Vector2.new(1344,0),
	ReverbSoundEffect = Vector2.new(1344,0),
	TremoloSoundEffect = Vector2.new(1344,0),
	SoundGroup = Vector2.new(1360,0),
	BallSocketConstraint = Vector2.new(1376,0),
	Plugin = Vector2.new(1376,0),
	HingeConstraint = Vector2.new(1392,0),
	SlidingBallConstraint = Vector2.new(1408,0),
	PrismaticConstraint = Vector2.new(1408,0),
	RopeConstraint = Vector2.new(1424,0),
	RodConstraint = Vector2.new(1440,0),
	SpringConstraint = Vector2.new(1456,0),
	Trail = Vector2.new(1488,0),
	WeldConstraint = Vector2.new(1504,0),
	CylindricalConstraint = Vector2.new(1520,0),
	Beam = Vector2.new(1536,0),
	AlignPosition = Vector2.new(1584,0),
	AlignOrientation = Vector2.new(1600,0),
	LineForce = Vector2.new(1616,0),
	VectorForce = Vector2.new(1632,0),
	AngularVelocity = Vector2.new(1648,0),
	HumanoidDescription = Vector2.new(1664,0),
	NoCollisionConstraint = Vector2.new(1680,0),
	Motor6D = Vector2.new(1696,0),
	LineHandleAdornment = Vector2.new(1712,0),
	ImageHandleAdornment = Vector2.new(1728,0),
	CylinderHandleAdornment = Vector2.new(1744,0),
	ConeHandleAdornment = Vector2.new(1760,0),
	BoxHandleAdornment = Vector2.new(1776,0),
	SphereHandleAdornment = Vector2.new(1792,0),
	WireframeHandleAdornment = Vector2.new(1808,0),
	Actor = Vector2.new(1808,0),
	Bone = Vector2.new(1824,0),
	VideoFrame = Vector2.new(1920,0),
	UniversalConstraint = Vector2.new(1968,0),
	ProximityPrompt = Vector2.new(1984,0),
	TorsionSpringConstraint = Vector2.new(2000,0),
	WrapLayer = Vector2.new(2016,0),
	WrapTarget = Vector2.new(2032,0),
	PathfindingModifier = Vector2.new(2048,0),
	FaceControls = Vector2.new(2064,0),
	MaterialVariant = Vector2.new(2080,0),
	MaterialService = Vector2.new(2096,0),
	LinearVelocity = Vector2.new(2112,0),
	Highlight = Vector2.new(2128,0),
	PlaneConstraint = Vector2.new(2144,0),
	Plane = Vector2.new(2144,0),
	RigidConstraint = Vector2.new(2160,0),
	VoiceChatService = Vector2.new(2176,0),
	PathfindingLink = Vector2.new(2192,0),
	TextChatCommand = Vector2.new(2208,0),
	TextSource = Vector2.new(2224,0),
	TextChannel = Vector2.new(2240,0),
	ChatWindowConfiguration = Vector2.new(2256,0),
	ChatInputBarConfiguration = Vector2.new(2272,0),
	TextChatService = Vector2.new(2288,0),
	TerrainDetail = Vector2.new(2304,0),
	AdGui = Vector2.new(2320,0),
	AdPortal = Vector2.new(2336,0)
}
local properties = {
	["Instance"] = {
		"Name",
		"Parent",
		"Archivable"
	},
	["Workspace"] = {
		"CurrentCamera",
		"DistributedGameTime",
		"Gravity",
		"FallenPartsDestroyHeight",
	},
	Lighting = {
		"Ambient",
		"Brightness",
		"ColorShift_Bottom",
		"ColorShift_Top",
		"EnvironmentDiffuseScale",
		"EnvironmentSpecularScale",
		"GlobalShadows",
		"OutdoorAmbient",
		"ShadowSoftness",
		"ClockTime",
		"GeographicLatitude",
		"TimeOfDay",
		"ExposureCompensation"
	},
	Model = {
		"PrimaryPart"
	},
	BasePart = {
		"Material",
		"Anchored",
		"CanCollide",
		"Position",
		"Orientation",
		"Size",
		"AssemblyLinearVelocity",
		"AssemblyAngularVelocity",
		"Transparency"
	},
	Part = {
		"Shape"
	},
	Decal = {
		"Color3",
		"Texture",
		"Transparency",
		"ZIndex",
		"Face"
	},
	Texture = {
		"OffsetStudsU",
		"OffsetStudsV",
		"StudsPerTileU",
		"StudsPerTileV"
	},
	Sound = {
		"PlayOnRemove",
		"SoundId",
		"RollOffMaxDistance",
		"RollOffMinDistance",
		"RollOffMode",
		"Looped",
		"PlaybackSpeed",
		"Playing",
		"TimePosition",
		"Volume",
		"SoundGroup"
	},
	Script = {
		"Enabled"
	},
	WedgePart = {}
}

function makeWindow(name,size,position)
	local windowFrame = Instance.new("Frame",mainFrame)
	windowFrame.Size = size
	windowFrame.Position = position or UDim2.new()
	windowFrame.Name = name or "Window"
	local title = Instance.new("TextLabel",windowFrame)
	title.Text = name
	title.Size = UDim2.new(1,0,0,24)
	title.Font = Enum.Font.SourceSansBold
	title.TextSize = 16
	title.Name = "Title"
	local container = Instance.new("ScrollingFrame",windowFrame)
	container.AutomaticCanvasSize = Enum.AutomaticSize.Y
	container.CanvasSize = UDim2.new()
	container.Size = UDim2.new(1,0,1,-24)
	container.Position = UDim2.fromOffset(0,24)
	container.Name = "Container"
	container.BackgroundTransparency = 1
	return windowFrame
end

local explorerWindow = makeWindow("Explorer",UDim2.fromScale(1,0.5))
explorerWindow.Container.Size = UDim2.new(1,0,1,-48)
explorerWindow.Container.Position = UDim2.fromOffset(0,48)
local explorerButtons = Instance.new("Frame",explorerWindow)
explorerButtons.Size = UDim2.new(1,0,0,24)
explorerButtons.BackgroundTransparency = 1
explorerButtons.Position = UDim2.fromOffset(0,24)
local backButton = Instance.new("TextButton",explorerButtons)
backButton.Text = "<"
backButton.TextSize = 16
backButton.Font = Enum.Font.SourceSansBold
backButton.Size = UDim2.fromOffset(24,24)
local propertiesWindow = makeWindow("Properties",UDim2.fromScale(1,0.5),UDim2.fromScale(0,0.5))

local listlayoutexplorer = Instance.new("UIListLayout",explorerWindow.Container)
local listlayoutproperties = Instance.new("UIListLayout",propertiesWindow.Container)

local currentlyOpened = game
local currentlySelected = nil

local connections = {explorer={},properties={}}

local selectionBox = Instance.new("SelectionBox",gui)
selectionBox.LineThickness = 0.05
selectionBox.Color3 = Color3.fromRGB(25, 153, 255)

function selectionChanged()
	if currentlySelected:IsA("BasePart") or currentlySelected:IsA("Model") then
		selectionBox.Adornee = currentlySelected
	else
		selectionBox.Adornee = nil
	end
end

function createObjectButton(instance:Instance)
	local button = Instance.new("TextButton",explorerWindow.Container)
	button.Size = UDim2.new(1,0,0,18)
	button.Text = ""
	button.Selected = currentlySelected == instance
	local instanceName = Instance.new("TextLabel",button)
	instanceName.Size = UDim2.fromScale(0,1)
	instanceName.Position = UDim2.new(0,23,0,0)
	instanceName.TextXAlignment = Enum.TextXAlignment.Left
	instanceName.Font = Enum.Font.SourceSansBold
	instanceName.TextSize = 15
	instanceName.BackgroundTransparency = 1
	local icon = Instance.new("ImageLabel",button)
	icon.Size = UDim2.fromOffset(16,16)
	icon.Position = UDim2.fromOffset(1,1)
	icon.Image = "rbxasset://textures/ClassImages.PNG"
	icon.ImageRectOffset = ClassIcons[instance.ClassName] or ClassIcons.Nil
	icon.ImageRectSize = Vector2.new(16,16)
	icon.BackgroundTransparency = 1
	local function updateButton()
		instanceName.Text = instance.Name
		if button.Selected then
			button.BackgroundColor3 = Color3.fromRGB(25, 153, 255)
		else
			button.BackgroundColor3 = Color3.fromRGB(163, 162, 165)
		end
	end
	button.MouseButton1Click:Connect(function()
		if currentlySelected == instance then
			currentlyOpened = instance
			reloadExplorer()
			return
		end
		currentlySelected = instance
		selectionChanged()
		reloadProperties()
		for i,v in pairs(explorerWindow.Container:GetChildren()) do
			if v:IsA("GuiButton") then
				v.Selected = false
			end
		end
		button.Selected = true
		updateButton()
	end)
	button:GetPropertyChangedSignal("Selected"):Connect(updateButton)
	local changed = instance:GetPropertyChangedSignal("Name"):Connect(updateButton)
	local destroyed
	local reparented
	destroyed = instance.Destroying:Connect(function()
		reparented:Disconnect()
		destroyed:Disconnect()
		changed:Disconnect()
		button:Destroy()
	end)
	reparented = instance:GetPropertyChangedSignal("Parent"):Connect(function()
		reparented:Disconnect()
		destroyed:Disconnect()
		changed:Disconnect()
		button:Destroy()
	end)
	table.insert(connections.explorer,changed)
	table.insert(connections.explorer,destroyed)
	table.insert(connections.explorer,reparented)
	updateButton()
	return button
end

function createPropertyGui(name,instance:Instance)
	local propertyFrame = Instance.new("Frame",propertiesWindow.Container)
	propertyFrame.Size = UDim2.new(1,0,0,22)
	local propertyName = Instance.new("TextLabel",propertyFrame)
	propertyName.Text = name
	propertyName.Size = UDim2.fromScale(0.5,1)
	propertyName.TextXAlignment = Enum.TextXAlignment.Left
	propertyName.Font = Enum.Font.SourceSansBold
	propertyName.TextSize = 15
	local propertyValue = Instance.new("TextBox",propertyFrame)
	propertyValue.ClearTextOnFocus = false
	propertyValue.TextEditable = false
	propertyValue.Text = ValueToString(instance[name])
	propertyValue.Size = UDim2.fromScale(0.5,1)
	propertyValue.Position = UDim2.fromScale(0.5,0)
	propertyValue.TextXAlignment = Enum.TextXAlignment.Left
	propertyValue.Font = Enum.Font.SourceSansBold
	propertyValue.TextSize = 15
	table.insert(connections.properties,instance:GetPropertyChangedSignal(name):Connect(function()
		propertyValue.Text = ValueToString(instance[name])
	end))
end

function reloadProperties()
	for i,v in pairs(connections.properties) do
		v:Disconnect()
	end
	connections.properties = {}
	for i,v in pairs(propertiesWindow.Container:GetChildren())do if v:IsA("GuiObject")then v:Destroy()end end
	if not currentlySelected then return end
	for className,props in pairs(properties) do
		if currentlySelected:IsA(className) then
			for _,propName in pairs(props) do
				createPropertyGui(propName,currentlySelected)
			end
		end
	end
end

function reloadExplorer()
	for i,v in pairs(connections.explorer) do
		v:Disconnect()
	end
	connections.explorer = {}
	for i,v in pairs(explorerWindow.Container:GetChildren())do if v:IsA("GuiObject")then v:Destroy()end end
	for i,v in pairs(currentlyOpened:GetChildren()) do
		createObjectButton(v)
	end
	table.insert(connections.explorer,currentlyOpened.ChildAdded:Connect(function(child)
		createObjectButton(child)
	end))
end

backButton.MouseButton1Click:Connect(function()
	if currentlyOpened ~= game then
		currentlyOpened = currentlyOpened.Parent
		reloadExplorer()
	end
end)

function ValueToString(value)
	if typeof(value) == "Vector3" then
		return ("%s, %s, %s"):format(math.round(value.X*10000)/10000,math.round(value.Y*10000)/10000,math.round(value.Z*10000)/10000)
	elseif typeof(value) == "Color3" then
		return ("%s, %s, %s"):format(math.round((value.R*255)*10)/10,math.round((value.G*255)*10)/10,math.round((value.B*255)*10)/10)
	elseif typeof(value) == "Instance" then
		local fullName = ""
		local lastInstance = value
		repeat
			local name = lastInstance.Name
			if lastInstance == game then
				fullName = ".game" .. fullName
				break
			elseif lastInstance == workspace then
				fullName = ".workspace" .. fullName
				break
			elseif name:find(" ") or name:find("\t") or name:find("\n") or name:find("\"") or name:find("'") then
				fullName = "[\"" .. name .. "\"]" .. fullName
			else
				fullName = "." .. name .. fullName
			end
			lastInstance = lastInstance.Parent
		until lastInstance == nil
		fullName = fullName:sub(2,#fullName)
		return fullName
	else
		return tostring(value)
	end
end

local resizing = false

local resizeButton = Instance.new("TextButton",mainFrame)
resizeButton.Size = UDim2.fromOffset(12,12)
resizeButton.Text = ""
resizeButton.Position = UDim2.fromScale(1,0)
resizeButton.AnchorPoint = Vector2.new(0.5,0.5)
resizeButton.BackgroundColor3 = Color3.fromRGB(255,255,255)

resizeButton.MouseButton1Click:Connect(function()
	resizing = not resizing
end)

game:GetService("RunService").RenderStepped:Connect(function()
	if not resizing then return end
	local mousePosition = uis:GetMouseLocation()
	mainFrame.Size = UDim2.new(0,mousePosition.X,1,0)
end)

local plrMouse = plr:GetMouse()

uis.InputBegan:Connect(function(input,gpe)
	if gpe then return end
	if input.KeyCode == Enum.KeyCode.Return then
		currentlyOpened = currentlySelected
		reloadExplorer()
	elseif input.UserInputType == Enum.UserInputType.MouseButton1 then
		if plrMouse.Target then
			currentlyOpened = plrMouse.Target.Parent
			currentlySelected = plrMouse.Target
			selectionChanged()
			reloadExplorer()
		end
	end
end)

reloadExplorer()
