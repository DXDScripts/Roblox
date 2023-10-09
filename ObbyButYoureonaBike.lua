local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🚴 Obby But You're on a Bike 🚴 | 📜 DXDScripts 📜",
   LoadingTitle = "Obby But You're on a Bike v1.1.1",
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
local MainSection = MainTab:CreateSection("SUPER OP (Timer must be above 30:00)")
local BestTime = true
local Button = MainTab:CreateButton({
    Name = "30:00 Leaderboard Timer Cheat [NON-BIKE]",
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
    [1] = 30
}

game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ReportTimer"):FireServer(unpack(args))

			end
    end,
})

local MainSection = MainTab:CreateSection("WORLD 4 is best for 2 Trophies per Win")
local AutoWinResetLoopEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Trophy Farm [Runs every 30 seconds]",
   CurrentValue = AutoWinResetLoop,
   Callback = function(Value)
   AutoWinResetLoop = Value
		if AutoWinResetLoop then
			while AutoWinResetLoop do
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
			wait(29)
			end
		end
   end,
})


local MainSection = MainTab:CreateSection("Auto Farm")

local Button = MainTab:CreateButton({
Name = "Auto Checkpoints",
    Callback = function()
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
    end,
})

local Button = MainTab:CreateButton({
Name = "Auto Checkpoints [FAST]",
    Callback = function()
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
    end,
})

local Button = MainTab:CreateButton({
Name = "Auto Checkpoints [FAST] + Reset",
    Callback = function()
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
   end,
})

local AutoSpinWheelEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Spin Wheel",
   CurrentValue = AutoSpinWheelEnabled,
   Callback = function(Value)
   AutoSpinWheelEnabled = Value
		if AutoSpinWheelEnabled then
		game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing All Objects"; Duration=5;})
			while AutoSpinWheelEnabled do
			game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SpinWheel"):FireServer()
			end
		end
   end,
})

local RemoveTab = Window:CreateTab("❌ Remove", nil)
local MainSection = RemoveTab:CreateSection("Remove Options")


local RemoveAll = true
local FoldersToRemoveAll = {"SwingingBalls", "KillBricks", "SwingingBalls", "SpinningBars", "SpinningHammers", "Ads", "ImmersiveAds", "Knives", "Boxing Gloves", "Bouncers", "SpearTraps"}
local Button = RemoveTab:CreateButton({
    Name = "Remove All",
    Callback = function()
	if RemoveAll then
	game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing All Objects"; Duration=5;})
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
			game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="All Objects Removed"; Duration=5;})
		end
    end,
})

local RemoveKillBricks = true
local Button = RemoveTab:CreateButton({
    Name = "Remove KillBricks",
    Callback = function()
        if RemoveKillBricks then
		game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing KillBricks"; Duration=5;})
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("KillBricks")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
			game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="KillBricks Removed"; Duration=5;})
		end
    end,
})

local RemoveKnives = true
local Button = RemoveTab:CreateButton({
    Name = "Remove Knives",
    Callback = function()
        if RemoveKnives then
				game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing Knives"; Duration=5;})
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("Knives")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
					game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Knives Removed"; Duration=5;})
		end
    end,
})

local RemoveSpears = true
local Button = RemoveTab:CreateButton({
    Name = "Remove Spear Traps",
    Callback = function()
        if RemoveSpears then
		game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing Spear Traps"; Duration=5;})
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("SpearTraps")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
			game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removed Spear Traps"; Duration=5;})
		end
    end,
})

local RemoveBouncers = true
local Button = RemoveTab:CreateButton({
    Name = "Remove Bouncers",
    Callback = function()
        if RemoveBouncers then
				game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing Bouncers"; Duration=5;})
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("Bouncers")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
					game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Bouncers Removed"; Duration=5;})
		end
    end,
})

local RemoveSwingBalls = true
local Button = RemoveTab:CreateButton({
    Name = "Remove SwingBalls",
    Callback = function()
        if RemoveSwingBalls then
		game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing SwingBalls"; Duration=5;})
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("SwingingBalls")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
			game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Swinging Balls Removed"; Duration=5;})
		end
    end,
})

local RemoveBoxingGloves = true
local Button = RemoveTab:CreateButton({
    Name = "Remove Boxing Gloves",
    Callback = function()
        if RemoveBoxingGloves then
				game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing Boxing Gloves"; Duration=5;})
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("BoxingGloves")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
			game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Boxing Gloves Removed"; Duration=5;})
		end
    end,
})

local RemoveSpinningBars = true
local Button = RemoveTab:CreateButton({
    Name = "Remove Spinning Bars",
    Callback = function()
        if RemoveSpinningBars then
		game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing Spinning Bars"; Duration=5;})
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("SpinningBars")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
			game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Spinning Bars Removed"; Duration=5;})
		end
    end,
})

local RemoveSpinningHammers = true
local Button = RemoveTab:CreateButton({
    Name = "Remove Spinning Hammers",
    Callback = function()
        if RemoveSpinningHammers then
		game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing Spinning Hammers"; Duration=5;})
            local folderToClear = game:GetService("Workspace").WorldMap:FindFirstChild("SpinningHammers")
				if folderToClear then
				for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
				end
					else
					warn("Folder not found")
			end
			game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Spinning Hammers Removed"; Duration=5;})
		end
    end,
})

local FoldersToRemoveAds = {"Ads", "ImmersiveAds"}
local Button = RemoveTab:CreateButton({
    Name = "Remove Ads",
    Callback = function()
		game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Removing Ads"; Duration=5;})
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
			game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Ads Removed"; Duration=5;})
    end,
})

local TeleportTab = Window:CreateTab("💻 Teleport", nil)

local MainSection = TeleportTab:CreateSection("Worlds")
local Button = TeleportTab:CreateButton({
    Name = "WORLD 1",
    Callback = function()
	game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Teleporating  to WORLD 1"; Duration=5;})
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorldMap.WorldPortals.World1.Teleport.CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "WORLD 2",
    Callback = function()
	game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Teleporting  to WORLD 2"; Duration=5;})
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorldMap.WorldPortals.World2.Teleport.CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "WORLD 3",
    Callback = function()
	game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Teleporting  to WORLD 3"; Duration=5;})
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorldMap.WorldPortals.World3.Teleport.CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "WORLD 4",
    Callback = function()
	game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Teleporting  to WORLD 4"; Duration=5;})
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorldMap.WorldPortals.World4.Teleport.CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "WORLD 5",
    Callback = function()
	game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Teleporting  to WORLD 5"; Duration=5;})
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorldMap.WorldPortals.World5.Teleport.CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "WORLD 6",
    Callback = function()
	game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Teleporting  to WORLD 6"; Duration=5;})
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").WorldMap.WorldPortals.World6.Teleport.CFrame
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
	game.StarterGui:SetCore("SendNotification", {Title="DXDSCRIPTS"; Text="Infinite Jump Activated!"; Duration=5;})
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
