local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⛏ Mine Block Tycoon! ⛏ | 📜 DXDScripts 📜",
   LoadingTitle = "Mine Block Tycoon",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
   },
   Discord = {
      Enabled = false,
      Invite = "Ey49Sw8HTp", 
      RememberJoins = true 
   },
   KeySystem = false,
})

Rayfield:Notify({
   Title = "Mine Block Tycoon!",
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
local MainSection = MainTab:CreateSection("AutoFarm")

local AutoMergeEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Merge",
   CurrentValue = AutoMergeEnabled,
   Callback = function(Value)
   AutoMergeEnabled = Value
		if AutoMergeEnabled then
			while AutoMergeEnabled do
			game:GetService("ReplicatedStorage").Remotes.Merge:InvokeServer()
			wait(0.0001)
			end
		end
   end,
})

local AutoDropperEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Buy Dropper",
   CurrentValue = AutoDropperEnabled,
   Callback = function(Value)
	AutoDropperEnabled = Value
		if AutoDropperEnabled then
			while AutoDropperEnabled do
			game:GetService("ReplicatedStorage").Remotes.BuyDropper:InvokeServer()
			wait(0.0001)
			end
		end
   end,
})

local AutoDepositEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Deposit Blocks",
   CurrentValue = false,
   Callback = function(Value)
   AutoDepositEnabled = Value
   if AutoDepositEnabled then
   while AutoDepositEnabled do
   game:GetService("ReplicatedStorage").Remotes.Deposit:InvokeServer()
   wait(0.0001)
   end
   end
   end,
})

local MainSection = MainTab:CreateSection("Auto Obby")
local AutoAllObbyEnabled = true

local Button = MainTab:CreateButton({
    Name = "All Obbies",
    Callback = function()
        if AutoAllObbyEnabled then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obbies.Easy.RewardPart.CFrame
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obbies.Medium.RewardPart.CFrame
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obbies.Hard.RewardPart.CFrame
            wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obbies["Extra Hard"].RewardPart.CFrame
            
            AutoAllObbyEnabled = false
        end
    end,
})

local AutoEasyObbyEnabled = true

local Button = MainTab:CreateButton({
    Name = "Easy Obbies",
    Callback = function()
        if AutoEasyObbyEnabled then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obbies.Easy.RewardPart.CFrame
            wait(1)
            AutoEasyObbyEnabled = false
        end
    end,
})

local AutoMediumObbyEnabled = true

local Button = MainTab:CreateButton({
    Name = "Medium Obbies",
    Callback = function()
        if AutoMediumObbyEnabled then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obbies.Medium.RewardPart.CFrame
            wait(1)
            AutoMediumObbyEnabled = false
        end
    end,
})

local AutoHardObbyEnabled = true

local Button = MainTab:CreateButton({
    Name = "Hard Obbies",
    Callback = function()
        if AutoHardObbyEnabled then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obbies.Hard.RewardPart.CFrame
            wait(1)
            AutoHardObbyEnabled = false
        end
    end,
})

local AutoExtraHardObbyEnabled = true

local Button = MainTab:CreateButton({
    Name = "Extra Hard Obbies",
    Callback = function()
        if AutoExtraHardObbyEnabled then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Obbies["Extra Hard"].RewardPart.CFrame
            wait(1)
            AutoExtraHardObbyEnabled = false
        end
    end,
})

local UserTab = Window:CreateTab("👽 User", nil)
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


local CreditTab = Window:CreateTab("📃 Credit", nil)
local CreditParagraph = CreditTab:CreateParagraph({Title = "Script: DXDScripts", Content = "GUI: Rayfields"})
