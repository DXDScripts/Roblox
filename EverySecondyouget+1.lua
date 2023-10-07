local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🙆 Every second you get +1 🙆 | 📜 DXDScripts 📜",
   LoadingTitle = "Every second you get +1",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Every second you get +1"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | Youtube Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "YoutubeHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/AtgzSPWK"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
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


local UserTab = Window:CreateTab("👽 User", nil) -- Title, Image
local Button = UserTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="Youtube Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
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


local CreditTab = Window:CreateTab("📃 Credit", nil) -- Title, Image
local CreditParagraph = CreditTab:CreateParagraph({Title = "Script: DXDScripts", Content = "GUI: Rayfields"})