local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 The Floor Is LAVA! 🔥 | 📜 DXDScripts 📜",
   LoadingTitle = "The Floor Is LAVA!",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
   },
   Discord = {
      Enabled = true,
      Invite = "Ey49Sw8HTp",
      RememberJoins = true
   },
   KeySystem = false,
})

Rayfield:Notify({
   Title = "The Floor Is LAVA!",
   Content = "Created by DXDScripts",
   Duration = 5,
   Image = 13047715178,
   Actions = {
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local MainTab = Window:CreateTab("🏠 Home", nil)

local MainSection = MainTab:CreateSection("Auto Farm")

local AutoSurvive = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Survive",
    CurrentValue = AutoSurvive,
    Callback = function(Value)
        AutoSurvive = Value
        if AutoSurvive then
            while AutoSurvive do
                local player = game.Players.LocalPlayer
local character = player.Character
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local roof = game.Workspace.Game.Roof

if humanoidRootPart and roof then
    local newCFrame = roof.CFrame + Vector3.new(0, 10, 0)
    humanoidRootPart.CFrame = newCFrame
end
wait(0.1)
            end
        end
    end,
})

local AutoPoints = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Points",
    CurrentValue = AutoPoints,
    Callback = function(Value)
        AutoPoints = Value
        if AutoPoints then
            while AutoPoints do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obby1.Head.CFrame
                wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").ObbyPart.CFrame
            end
        end
    end,
})

local AutoPointSpin = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Spin [POINTS]",
    CurrentValue = AutoPointSpin,
    Callback = function(Value)
        AutoPointSpin = Value
        if AutoPointSpin then
            while AutoPointSpin do
                local args = {
    [1] = "Point"
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinEvent"):FireServer(unpack(args))
            end
        end
    end,
})

local AutoPointTime = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Spin [TIME]",
    CurrentValue = AutoPointTime,
    Callback = function(Value)
        AutoPointTime = Value
        if AutoPointTime then
            while AutoPointTime do
                local args = {
    [1] = "Time"
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SpinEvent"):FireServer(unpack(args))
            end
        end
    end,
})



local UserTab = Window:CreateTab("👽 User", nil)
local MainSection = UserTab:CreateSection("User Settings")

local NoClipActivated = false
local Noclip = nil
local Clip = nil

function noclip()
    Clip = false
    local function Nocl()
        if Clip == false and game.Players.LocalPlayer.Character ~= nil then
            for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA('BasePart') and v.CanCollide then
                    v.CanCollide = false
                end
            end
        end
        wait(0.21)
    end
    Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
    if Noclip then
        Noclip:Disconnect()
    end
    Clip = true
end

local Toggle = UserTab:CreateToggle({
    Name = "NoClip",
    CurrentValue = NoClipActivated,
    Callback = function(Value)
        NoClipActivated = Value
        if NoClipActivated then
            noclip()
        else
            clip()
        end
    end,
})


local Button = UserTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	_G.infinJumpStarted = true
	game.StarterGui:SetCore("SendNotification", {Title="Youtube Hub"; Text="Infinite Jump Activated!"; Duration=5;})
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = UserTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {16, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws",
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = UserTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {16, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp",
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})


local MainSection = UserTab:CreateSection("User Extra's")
local BtoolsActivate = true
local Button = UserTab:CreateButton({
    Name = "B-Tools",
    Callback = function()
        if BtoolsActivate then
backpack = game:GetService("Players").LocalPlayer.Backpack
hammer = Instance.new("HopperBin")
hammer.Name = "Hammer"
hammer.BinType = 4
hammer.Parent = backpack

cloneTool = Instance.new("HopperBin")
cloneTool.Name = "Clone"
cloneTool.BinType = 3
cloneTool.Parent = backpack

grabTool = Instance.new("HopperBin")
grabTool.Name = "Grab"
grabTool.BinType = 2
grabTool.Parent = backpack
		end
    end,
})

local AntiAFKActivate = true
local Button = UserTab:CreateButton({
    Name = "Anti-Afk",
    Callback = function()
        if AntiAFKActivate then
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
		end
    end,
})


local CreditTab = Window:CreateTab("📃 Credit", nil)
local CreditParagraph = CreditTab:CreateParagraph({Title = "Script: DXDScripts", Content = "GUI: Rayfields"})
