local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🙆 Every second you get +1 Jump Speed 🙆| DXDScripts ⛏",
   LoadingTitle = "Every second you get +1 Jump Speed",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Every second you get +1 Jump Speed!"
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
   Title = "Every second you get +1 Jump Speed",
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
local MainSection = MainTab:CreateSection("Auto Farm")

local AutoWinsEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins",
   CurrentValue = AutoWinsEnabled,
   Callback = function(Value)
   AutoWinsEnabled = Value
		if AutoWinsEnabled then
			while AutoWinsEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.World14.CFrame
			wait(1)
			end
		end
   end,
})

local AutoWinFastEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins [FAST]",
   CurrentValue = AutoWinFastEnabled,
   Callback = function(Value)
   AutoWinFastEnabled = Value
		if AutoWinFastEnabled then
			while AutoWinFastEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.World14.CFrame
			wait(0.001)
			end
		end
   end,
})

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

local MainSection = MainTab:CreateSection("Auto Obby")
local AutoAllObbyEnabled = true

local SpinWheel = true
local Button = MainTab:CreateButton({
    Name = "Spin Wheel",
    Callback = function()
        if SpinWheel then
            game:GetService("ReplicatedStorage"):WaitForChild("SpinRemote"):InvokeServer()

        end
    end,
})

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