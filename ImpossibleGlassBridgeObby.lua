local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🏃 Impossible Glass Bridge Obby 🏃 | 📜 DXDScripts 📜",
   LoadingTitle = "Impossible Glass Bridge Obby",
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

local Button = MainTab:CreateButton({
    Name = "Spin Wheel",
    Callback = function()
	game:GetService("ReplicatedStorage"):WaitForChild("SpinEvent"):WaitForChild("Request"):InvokeServer()
    end,
})


local RemovePaidItems = true
local Button = MainTab:CreateButton({
    Name = "Remove Paid Items",
    Callback = function()
        if RemovePaidItems then
            local folderToClear = game:GetService("Workspace"):FindFirstChild("Pads")
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
