local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🙆 Every second you get +1 🙆 | 📜 DXDScripts 📜",
   LoadingTitle = "Every second you get +1",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
   },
   Discord = {
      Enabled = true,
      Invite = "us2eVmuTCq",
      RememberJoins = true
   },
   KeySystem = false,
})

Rayfield:Notify({
   Title = "Every second you get +1",
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

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Rebirth")
local AutoRebirthEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Rebirth",
   CurrentValue = AutoRebirthEnabled,
   Callback = function(Value)
	AutoRebirthEnabled = Value
		if AutoRebirthEnabled then
			while AutoRebirthEnabled do
			game:GetService("ReplicatedStorage"):WaitForChild("RebirthEvent"):FireServer()
			wait(0.0001)
			end
		end
   end,
})

local MainSection = MainTab:CreateSection("Auto Farm Jump")

local AutoWinsJumpEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins",
   CurrentValue = AutoWinsJumpEnabled,
   Callback = function(Value)
   AutoWinsJumpEnabled = Value
		if AutoWinsJumpEnabled then
			while AutoWinsJumpEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.Jump3.CFrame
			wait(1)
			end
		end
   end,
})

local AutoWinJumpFastEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins [FAST]",
   CurrentValue = AutoWinJumpFastEnabled,
   Callback = function(Value)
   AutoWinJumpFastEnabled = Value
		if AutoWinJumpFastEnabled then
			while AutoWinJumpFastEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.Jump3.CFrame
			wait(0.001)
			end
		end
   end,
})

local MainSection = MainTab:CreateSection("Auto Farm Speed")
local AutoWinsSpeedEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins",
   CurrentValue = AutoWinsSpeedEnabled,
   Callback = function(Value)
   AutoWinsSpeedEnabled = Value
		if AutoWinsSpeedEnabled then
			while AutoWinsSpeedEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.Speed3.CFrame
			wait(1)
			end
		end
   end,
})

local AutoWinSpeedFastEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins [FAST]",
   CurrentValue = AutoWinSpeedFastEnabled,
   Callback = function(Value)
   AutoWinSpeedFastEnabled = Value
		if AutoWinSpeedFastEnabled then
			while AutoWinSpeedFastEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.Speed3.CFrame
			wait(0.001)
			end
		end
   end,
})

local MainSection = MainTab:CreateSection("Auto Farm Health")
local AutoWinsHealthEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins",
   CurrentValue = AutoWinsHealthEnabled,
   Callback = function(Value)
   AutoWinsHealthEnabled = Value
		if AutoWinsHealthEnabled then
			while AutoWinsHealthEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.Health3.CFrame
			wait(1)
			end
		end
   end,
})

local AutoWinHealthFastEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins [FAST]",
   CurrentValue = AutoWinHealthFastEnabled,
   Callback = function(Value)
   AutoWinHealthFastEnabled = Value
		if AutoWinHealthFastEnabled then
			while AutoWinHealthFastEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.Health3.CFrame
			wait(0.001)
			end
		end
   end,
})

local MainSection = MainTab:CreateSection("Auto Farm Damage")
local AutoDamageNoobEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Noob",
   CurrentValue = AutoDamageNoobEnabled,
   Callback = function(Value)
   AutoDamageNoobEnabled = Value
		if AutoDamageNoobEnabled then
			while AutoDamageNoobEnabled do
			local player = game.Players.LocalPlayer
local character = player.Character

if character then
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    
    if humanoidRootPart then
        local targetCFrame = game:GetService("Workspace").Npc.Noob.Torso.CFrame
        local offset = CFrame.new(0, 0, 3)

        humanoidRootPart.CFrame = targetCFrame * offset
    end
end
			wait(0.001)
			local args = {
		[1] = true
}
game:GetService("ReplicatedStorage"):WaitForChild("AutoDamage"):FireServer(unpack(args))
			end
		end
   end,
})

local AutoDamageZombieEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Zombie",
   CurrentValue = AutoDamageZombieEnabled,
   Callback = function(Value)
   AutoDamageZombieEnabled = Value
		if AutoDamageZombieEnabledd then
			while AutoDamageZombieEnabled do
			local player = game.Players.LocalPlayer
local character = player.Character

if character then
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    
    if humanoidRootPart then
        local targetCFrame = game:GetService("Workspace").Npc.Zombie.Torso.CFrame
        local offset = CFrame.new(0, 0, 3)

        humanoidRootPart.CFrame = targetCFrame * offset
    end
end
			wait(0.001)
			local args = {
		[1] = true
}
game:GetService("ReplicatedStorage"):WaitForChild("AutoDamage"):FireServer(unpack(args))
			end
		end
   end,
})

local AutoDamageDoombringerEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Doombringer",
   CurrentValue = AutoDamageDoombringerEnabled,
   Callback = function(Value)
   AutoDamageDoombringerEnabled = Value
		if AutoDamageDoombringerEnabled then
			while AutoDamageDoombringerEnabled do
			local player = game.Players.LocalPlayer
local character = player.Character

if character then
    local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
    
    if humanoidRootPart then
        local targetCFrame = game:GetService("Workspace").Npc.Doombringer.Torso.CFrame
        local offset = CFrame.new(0, 0, 3)

        humanoidRootPart.CFrame = targetCFrame * offset
    end
end
			wait(0.001)
			local args = {
		[1] = true
}
game:GetService("ReplicatedStorage"):WaitForChild("AutoDamage"):FireServer(unpack(args))
			end
		end
   end,
})

local MainSection = MainTab:CreateSection("Extra")
local AutoAllObbyEnabled = true

local NoPaidButtons = true
local Button = MainTab:CreateButton({
    Name = "Delete Paid Buttons",
    Callback = function()
        if NoPaidButtons then
            local folderToClear = game:GetService("Workspace"):FindFirstChild("Products")
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

local PetsTab = Window:CreateTab("🥚 Pets", nil) -- Title, Image

local CraftAllPets = true
local Button = PetsTab:CreateButton({
    Name = "Craft All pets",
    Callback = function()
        if CraftAllPets then
            local args = {
				[1] = "MaxCraft",
				[2] = false
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PetActionRequest"):InvokeServer(unpack(args))

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
