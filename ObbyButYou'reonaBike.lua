local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🚴 Obby But You're on a Bike 🚴| 📜 DXDScripts 📜",
   LoadingTitle = "Obby But You're on a Bike",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Obby But You're on a Bike"
   },
   Discord = {
      Enabled = true,
      Invite = "us2eVmuTCq",
      RememberJoins = true 
   },
   KeySystem = false,
})

Rayfield:Notify({
   Title = "Obby But You're on a Bike",
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

local MainSection = MainTab:CreateSection("SUPER OP (Timer must be above 1:00.00)")

local BestTime = true
local Button = MainTab:CreateButton({
    Name = "1:00.00 Leaderboard Timer Cheat",
    Callback = function()
        if BestTime then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorldMap.RestartPortal.Teleport.CFrame
		
           
local player = game.Players.LocalPlayer
                local checkpointsFolder = game:GetService("Workspace").WorldMap.Checkpoints

                for i = 1, 99 do
                    local checkpointName = tostring(i)
                    local checkpoint = checkpointsFolder:FindFirstChild(checkpointName)

                    if checkpoint and checkpoint:IsA("Model") then
                        local checkpointHitbox = checkpoint:FindFirstChild("Hitbox")

                        if checkpointHitbox and checkpointHitbox:IsA("BasePart") then
                            player.Character.HumanoidRootPart.CFrame = checkpointHitbox.CFrame

                            wait(0.0001)
                        end
                    else
                        break
                    end

                end
				wait(1)
				local args = {
    [1] = 60
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ReportTimer"):FireServer(unpack(args))

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
                local checkpointsFolder = game:GetService("Workspace").WorldMap.Checkpoints

                for i = 1, 99 do  
                    local checkpointName = tostring(i)
                    local checkpoint = checkpointsFolder:FindFirstChild(checkpointName)

                    if checkpoint and checkpoint:IsA("Model") then
                        local checkpointHitbox = checkpoint:FindFirstChild("Hitbox")

                        if checkpointHitbox and checkpointHitbox:IsA("BasePart") then
                            player.Character.HumanoidRootPart.CFrame = checkpointHitbox.CFrame

                            wait(2)
                        end
                    else
                        break
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
                local checkpointsFolder = game:GetService("Workspace").WorldMap.Checkpoints

                for i = 1, 99 do
                    local checkpointName = tostring(i)
                    local checkpoint = checkpointsFolder:FindFirstChild(checkpointName)

                    if checkpoint and checkpoint:IsA("Model") then
                        local checkpointHitbox = checkpoint:FindFirstChild("Hitbox")

                        if checkpointHitbox and checkpointHitbox:IsA("BasePart") then
                            player.Character.HumanoidRootPart.CFrame = checkpointHitbox.CFrame

                            wait(0.0001)
                        end
                    else
                        break
                    end
                end
            end
        end
    end,
})

local AutoCheckpointFastResetEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Checkpoints [FAST]+ Reset",
   CurrentValue = AutoCheckpointFastResetEnabled,
   Callback = function(Value)
   AutoCheckpointFastResetEnabled = Value
		if AutoCheckpointFastResetEnabled then
			while AutoCheckpointFastResetEnabled do
				local player = game.Players.LocalPlayer
                local checkpointsFolder = game:GetService("Workspace").WorldMap.Checkpoints

                for i = 1, 99 do
                    local checkpointName = tostring(i)
                    local checkpoint = checkpointsFolder:FindFirstChild(checkpointName)

                    if checkpoint and checkpoint:IsA("Model") then
                        local checkpointHitbox = checkpoint:FindFirstChild("Hitbox")

                        if checkpointHitbox and checkpointHitbox:IsA("BasePart") then
                            player.Character.HumanoidRootPart.CFrame = checkpointHitbox.CFrame

                            wait(0.0001)
                        end
                    else
                        break
                    end
                end
wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorldMap.RestartPortal.Teleport.CFrame
			end
		end
   end,
})

local MainSection = MainTab:CreateSection("Remove Objects")

local RemoveAll = true
local FoldersToRemoveAll = {"SwingingBalls", "KillBricks", "SwingingBalls", "SpinningBars", "Ads", "ImmersiveAds"}
local Button = MainTab:CreateButton({
    Name = "Remove All",
    Callback = function()
	if RemoveAll then
        for _, folderName in ipairs(FoldersToRemoveAll) do
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild(folderName)
            if folderToClear then
                for _, child in pairs(folderToClear:GetChildren()) do
						child:Destroy()
					end
				else
					warn("Folder '" .. folderName .. "' not found")
				end
			end
		end
    end,
})

local RemoveKillBricks = true
local Button = MainTab:CreateButton({
    Name = "Remove KillBricks",
    Callback = function()
        if RemoveKillBricks then
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("KillBricks")
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

local RemoveSwingBalls = true
local Button = MainTab:CreateButton({
    Name = "Remove SwingBalls",
    Callback = function()
        if RemoveSwingBalls then
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("SwingingBalls")
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

local RemoveSpinningBars = true
local Button = MainTab:CreateButton({
    Name = "Remove Spinning Bars",
    Callback = function()
        if RemoveSpinningBars then
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("SpinningBars")
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
local RemoveAds = true
local FoldersToRemoveAds = {"Ads", "ImmersiveAds"}
local Button = MainTab:CreateButton({
    Name = "Remove Ads",
    Callback = function()
	if RemoveAds then
        for _, folderName in ipairs(FoldersToRemoveAds) do
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild(folderName)
            if folderToClear then
                for _, child in pairs(folderToClear:GetChildren()) do
						child:Destroy()
					end
				else
					warn("Folder '" .. folderName .. "' not found")
				end
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
