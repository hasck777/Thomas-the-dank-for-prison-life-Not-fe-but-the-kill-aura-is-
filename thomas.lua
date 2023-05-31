-- Objects

local Idk = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local Nigger = Instance.new("Frame")
local Idk_2 = Instance.new("TextLabel")

-- Properties

Idk.Name = "Idk"
Idk.Parent = game.CoreGui
Idk.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageLabel.Parent = Idk
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.Position = UDim2.new(0.0158730168, 0, 0.783132553, 0)
ImageLabel.Size = UDim2.new(0, 67, 0, 61)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6403436054"

Nigger.Name = "Nigger"
Nigger.Parent = ImageLabel
Nigger.BackgroundColor3 = Color3.new(1, 1, 1)
Nigger.Position = UDim2.new(1.19402981, 0, 0.0819672123, 0)
Nigger.Size = UDim2.new(0, 158, 0, 50)

Idk_2.Name = "Idk"
Idk_2.Parent = Nigger
Idk_2.BackgroundColor3 = Color3.new(1, 1, 1)
Idk_2.BackgroundTransparency = 1
Idk_2.Position = UDim2.new(0.408440173, 0, 0.359999985, 0)
Idk_2.Size = UDim2.new(0, 25, 0, 15)
Idk_2.Font = Enum.Font.Unknown
Idk_2.Text = "RickRoll Scripts Community"
Idk_2.TextColor3 = Color3.new(0, 0, 0)
Idk_2.TextSize = 8

local p = game.Players.LocalPlayer.Character
local weld = Instance.new("Weld",p.Torso)
weld.Part0 = p.Torso

local train = Instance.new("Part",p.Torso)
train.Anchored = true
train.CanCollide = false
train.Size = Vector3.new(3,2,6)
train.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld.Part1 = train
weld.C1 = CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(180),0)
train.Anchored = false
local TrainMesh = Instance.new("SpecialMesh",train)
TrainMesh.MeshType = Enum.MeshType.FileMesh
TrainMesh.Scale = Vector3.new(0.020,0.020,0.015)
TrainMesh.MeshId = "rbxassetid://431017802"
TrainMesh.TextureId = "rbxassetid://431017809"


local weld2 = Instance.new("Weld",p.Torso)
weld2.Part0 = p.Torso
local Smoke = Instance.new("Part",p.Torso)
Smoke.Anchored = true
Smoke.CanCollide = false
Smoke.Size = Vector3.new(1,1,1)
Smoke.CustomPhysicalProperties = PhysicalProperties.new(0,0,0,0,0)
weld2.Part1 = Smoke
weld2.C1 = CFrame.new(0,-4,3.5)-- * CFrame.Angles(0,math.rad(180),0)
Smoke.Anchored = false
Smoke.Transparency = 1;

local Particle = Instance.new("ParticleEmitter",Smoke)
Particle.Rate = 50;
Particle.Speed = NumberRange.new(30,60);
Particle.VelocitySpread = 4;
Particle.Texture = "rbxassetid://133619974"

local Light = Instance.new("SpotLight",train)
Light.Angle = 45;
Light.Brightness = 100;
Light.Face = Enum.NormalId.Back;
Light.Range = 30;

p.Humanoid.WalkSpeed = 60;

local function SFX(id) local s=Instance.new("Sound",p.Torso); s.SoundId = "rbxassetid://"..id; s.Volume = 1; return s; end
train.Touched:connect(function(p)
	if p.Parent then
		if p.Parent:IsA("Model") then
			if game.Players:FindFirstChild(p.Parent.Name) then
				if p.Parent.Name ~= game.Players.LocalPlayer.Name then
					game.Players:FindFirstChild(p.Parent.Name).Character:BreakJoints()
					local Whistle = SFX(475073913)
					Whistle:Play()
				end
			end
		end
	end
end)

local Music = SFX(9120223723)
Music.Looped = true;
wait(1)
Music:Play();
-- ~CL 2016


loadstring(game:HttpGet('https://raw.githubusercontent.com/CyberStudioUnited/KILL-AURA-PRISON-LIFE/main/script_main.lua'))()
