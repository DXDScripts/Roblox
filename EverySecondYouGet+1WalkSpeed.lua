local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🏃 Every Second You Get +1 WalkSpeed 🏃 | 📜 DXDScripts 📜",
   LoadingTitle = "Every Second You Get +1 WalkSpeed",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Every Second You Get +1 WalkSpeed"
   },
   Discord = {
      Enabled = true,
      Invite = "Ey49Sw8HTp",
      RememberJoins = true
   },
   KeySystem = false,
})

Rayfield:Notify({
   Title = "Every Second You Get +1 WalkSpeed",
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

local AutoWinsEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Wins",
   CurrentValue = AutoWinsEnabled,
   Callback = function(Value)
   AutoWinsEnabled = Value
		if AutoWinsEnabled then
			while AutoWinsEnabled do
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.HeavenStage.CFrame
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
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Wins.HeavenStage.CFrame
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

local PetsTab = Window:CreateTab("🥚 Pets", nil)

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
