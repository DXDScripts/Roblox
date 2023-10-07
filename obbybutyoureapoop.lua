local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "💩 Obby But you're a poop 💩 | DXDScripts 💩",
   LoadingTitle = "Obby But you're a poop",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
   },
   Discord = {
      Enabled = true,
      Invite = "us2eVmuTCq", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
})

Rayfield:Notify({
   Title = "Obby But you're a poop",
   Content = "Created by DXDScripts",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local MainTab = Window:CreateTab("🏠 Home", nil)

local MainSection = MainTab:CreateSection("SUPER OP")
local AutoPrestigeEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Prestige [FAST]",
    CurrentValue = AutoPrestigeEnabled,
    Callback = function(Value)
        AutoPrestigeEnabled = Value
        if AutoPrestigeEnabled then
            while AutoPrestigeEnabled do
                local player = game.Players.LocalPlayer
                player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Stages["121"].CFrame
                wait(0.1)
                wait(0.1)
                game:GetService("ReplicatedStorage"):WaitForChild("Prestige"):FireServer()
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("Auto Farm")

local AutoCheckpointEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Checkpoints",
    CurrentValue = AutoCheckpointEnabled,
    Callback = function(Value)
        AutoCheckpointEnabled = Value
		if AutoCheckpointEnabled then
		 while AutoCheckpointEnabled do
        local player = game.Players.LocalPlayer
        local checkpointsFolder = game:GetService("Workspace").Stages

        local function teleportToCheckpoint(checkpointName)
            local checkpoint = checkpointsFolder:FindFirstChild(checkpointName)
            if checkpoint then
                player.Character.HumanoidRootPart.CFrame = checkpoint.CFrame
                wait(2)
            end
        end

        if AutoCheckpointEnabled then
            for i = 1, 150 do -- Adjust the range as needed
                local checkpointName = tostring(i)
                teleportToCheckpoint(checkpointName)
            end
        end
		end
		end
    end,
})

local AutoCheckpointFastEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Checkpoints [FAST]",
    CurrentValue = AutoCheckpointFastEnabled,
    Callback = function(Value)
        AutoCheckpointFastEnabled = Value
		if AutoCheckpointFastEnabled then
		while AutoCheckpointFastEnabled do
        local player = game.Players.LocalPlayer
        local checkpointsFolder = game:GetService("Workspace").Stages

        local function teleportToCheckpoint(checkpointName)
            local checkpoint = checkpointsFolder:FindFirstChild(checkpointName)
            if checkpoint then
                player.Character.HumanoidRootPart.CFrame = checkpoint.CFrame
                wait(0.01)
            end
        end

            for i = 1, 150 do -- Adjust the range as needed
                local checkpointName = tostring(i)
                teleportToCheckpoint(checkpointName)
        end
		end
		end
    end,
})

local AutoCheckpointFastResetEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Checkpoints [FAST+PRESTIGE]",
    CurrentValue = AutoCheckpointFastResetEnabled,
    Callback = function(Value)
        AutoCheckpointFastResetEnabled = Value
		if AutoCheckpointFastResetEnabled then
		while AutoCheckpointFastEnabled do
        local player = game.Players.LocalPlayer
        local checkpointsFolder = game:GetService("Workspace").Stages

        local function teleportToCheckpoint(checkpointName)
            local checkpoint = checkpointsFolder:FindFirstChild(checkpointName)
            if checkpoint then
                player.Character.HumanoidRootPart.CFrame = checkpoint.CFrame
                wait(0.01)
            end
        end

            for i = 1, 150 do -- Adjust the range as needed
                local checkpointName = tostring(i)
                teleportToCheckpoint(checkpointName)
        end
		wait(1)
		game:GetService("ReplicatedStorage"):WaitForChild("Prestige"):FireServer()
		end
		end
    end,
})

local MainSection = MainTab:CreateSection("Give")
local GiveLuckyBlockItem = true
local Button = MainTab:CreateButton({
    Name = "Give Lucky Box Item",
    Callback = function()
        if GiveLuckyBlockItem then
           game:GetService("ReplicatedStorage"):WaitForChild("LuckyBlock"):FireServer()
		end
    end,
})

local GiveFreeSkip = true
local Button = MainTab:CreateButton({
    Name = "Give Free Skip",
    Callback = function()
        if GiveFreeSkip then
           game:GetService("ReplicatedStorage"):WaitForChild("GiveFreeSkip"):FireServer()
		end
    end,
})

local GiveTeleportGun = true
local Button = MainTab:CreateButton({
    Name = "Give TeleportGun",
    Callback = function()
        if GiveTeleportGun then
           local args = {
    [1] = "GiveGun",
    [2] = "TeleportGun"
}

game:GetService("Players").LocalPlayer:WaitForChild("RemoteEvent"):FireServer(unpack(args))

		end
    end,
})

local MainSection = MainTab:CreateSection("Remove Objects")

local RemoveKillBricks = true
local Button = MainTab:CreateButton({
    Name = "Remove KillBricks",
    Callback = function()
        if RemoveKillBricks then
            local folderToClear = game:GetService("Workspace"):FindFirstChild("KillParts")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
		end
    end,
})

local RemoveKillBricks = true
local Button = MainTab:CreateButton({
    Name = "Remove GamePass Adverts",
    Callback = function()
        if RemoveKillBricks then
            local folderToClear = game:GetService("Workspace"):FindFirstChild("PhyisicalGamepasses")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
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
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
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
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
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


local CreditTab = Window:CreateTab("📃 Credit", nil) -- Title, Image
local CreditParagraph = CreditTab:CreateParagraph({Title = "Script: DXDScripts", Content = "GUI: Rayfields"})
