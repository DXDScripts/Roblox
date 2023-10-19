local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🏃 Impossible Glass Bridge Obby v1.0.1🏃 | 📜 DXDScripts 📜",
   LoadingTitle = "Impossible Glass Bridge Obby v1.0.1",
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
   Title = "Impossible Glass Bridge Obby",
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
local Players = game:GetService("Players")
local LocalPlayer

repeat
    LocalPlayer = Players.LocalPlayer
    wait()
until LocalPlayer
print("LocalPlayer is ready")
local MainTab = Window:CreateTab("🏠 Home", nil)

local MainSection = MainTab:CreateSection("Auto Farm")

local AutoWin = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Win",
    CurrentValue = AutoWin,
    Callback = function(Value)
        AutoWin = Value
        if AutoWin then
            while AutoWin do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Glass Bridge"].Finish["Money Pig"].Part.CFrame
                wait(1)
            end
        end
    end,
})

local AutoSpinWheel = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Spin Wheel",
    CurrentValue = AutoSpinWheel,
    Callback = function(Value)
        AutoSpinWheel = Value
        if AutoSpinWheel then
            while AutoSpinWheel do
                game:GetService("ReplicatedStorage"):WaitForChild("SpinEvent"):WaitForChild("Request"):InvokeServer()
                wait(1)
            end
        end
    end,
})


local MainSection = MainTab:CreateSection("Make it easy")

local ClearGlassEnabled = false
local Toggle = MainTab:CreateButton({
   Name = "Clear Glass",
   Callback = function()
        while true and task.wait() do
			for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
				if v.Name == 'TouchInterest' then
				v.Parent.Transparency = 1
				end
			end
		end
   end,
})


local Toggle = MainTab:CreateButton({
   Name = "Instant Win",
   Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Glass Bridge"].Finish["Money Pig"].Part.CFrame
   end,
})

local MainSection = MainTab:CreateSection("Extra's")

local Button = MainTab:CreateButton({
    Name = "Spin Wheel",
    Callback = function()
	game:GetService("ReplicatedStorage"):WaitForChild("SpinEvent"):WaitForChild("Request"):InvokeServer()
    end,
})

local Button = MainTab:CreateButton({
    Name = "Teleport to VIP",
    Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Glass Bridge"].Start.Sus.CFrame
    end,
})


local Button = MainTab:CreateButton({
    Name = "Remove Paid Items",
    Callback = function()
        local workspace = game:GetService("Workspace")

        local function removeIfFound(objectName)
            local object = workspace:FindFirstChild(objectName)
            if object then
                object:Remove()
            else
                warn("Object '" .. objectName .. "' not found in Workspace.")
            end
        end

        removeIfFound("Become Squid Game Guard")
        removeIfFound("Become Squid Front Man")

        local folderToClear = workspace:FindFirstChild("Pads")
        if folderToClear then
            for _, child in pairs(folderToClear:GetChildren()) do
                child:Destroy()
            end
        else
            warn("Folder 'Pads' not found")
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
        wait(0.1)
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
