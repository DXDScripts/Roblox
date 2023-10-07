local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🖐 Power Slap Simulator 🖐 | 📜 DXDScripts 📜",
   LoadingTitle = "Power Slap Simulator",
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
   Title = "Power Slap Simulator",
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
local MainSection = MainTab:CreateSection("Max Out")

local Button = MainTab:CreateButton({
    Name = "Infinite Strength",
    Callback = function()
local args = {
    [1] = "ClickStat",
    [2] = math.huge
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Client"):InvokeServer(unpack(args))
    end,
})

local MainSection = MainTab:CreateSection("Auto Farm")

local AutoWinEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Trophies [MUST BE IN BATTLE]",
    CurrentValue = AutoWinEnabled,
    Callback = function(Value)
		AutoWinEnabled = Value
        if AutoWinEnabled then
            while AutoWinEnabled do
				local args = {
				[1] = "Wins"
				}

				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Client"):InvokeServer(unpack(args))
				wait(0.00000000000001)
            end
        end
    end,
})

local Button = MainTab:CreateButton({
    Name = "Auto Trophies Speed Up [WILL CAUSE LAG]",
    Callback = function()
	while AutoWinEnabled do
			local args = {
    [1] = "Wins"
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Client"):InvokeServer(unpack(args))
				wait(0.00000000000001)
				end
    end,
})

local AutoWinLastBossEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Trophies Last Boss [FAST TROPHIES]",
    CurrentValue = AutoWinLastBossEnabled,
    Callback = function(Value)
		AutoWinLastBossEnabled = Value
        if AutoWinLastBossEnabled then
            while AutoWinLastBossEnabled do
			local character = game.Players.LocalPlayer.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local targetTeleport = game:GetService("Workspace").Battles:FindFirstChild("Battle50")
		
		humanoidRootPart.CFrame = targetTeleport.Top.CFrame
		
			local player = game:GetService("Players").LocalPlayer
				local leaderstats = player:FindFirstChild("leaderstats")
				local battleValue = leaderstats:FindFirstChild("Battle")
				if battleValue.Value == nil then
					local proximityPrompt = game:GetService("Workspace").Battles.Battle50.Top.ProximityPrompt
                    fireproximityprompt(proximityPrompt, player, true)
				end
				local args = {
				[1] = "Wins"
				}
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Client"):InvokeServer(unpack(args))
				wait(0.00000000000001)
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
				game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Rebirth"):FireServer()
				wait(0.00000000000001)
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("Extra's")

local Button = MainTab:CreateButton({
    Name = "Free VIP",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
    local leaderstats = player:FindFirstChild("leaderstats")
    local gamepasses = leaderstats:FindFirstChild("Gamepasses")
    local vipValue = gamepasses:FindFirstChild("VIP")
        vipValue.Value = true
    end,
})

local TeleportTab = Window:CreateTab("💻 Teleport", nil)

local MainSection = TeleportTab:CreateSection("Island Teleports")

local function FetchTeleportNames()
    local portals = game:GetService("Workspace").Portals:GetChildren()
    
	local teleportNames = {}
	
    for _, portal in pairs(portals) do
            local name = portal.Name
            if not string.find(name, "Back") then
                table.insert(teleportNames, name)
        end
    end
    
    return teleportNames
end

local selectedTeleport = FetchTeleportNames()[1]

local Dropdown = TeleportTab:CreateDropdown({
    Name = "Teleport Selection",
    Options = FetchTeleportNames(),
    CurrentOption = selectedTeleport,
    MultipleOptions = false,
    Callback = function(Option)
        -- Teleport the character to the selected teleport's TP MeshPart
        local character = game.Players.LocalPlayer.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local targetTeleport = game:GetService("Workspace").Portals:FindFirstChild(selectedTeleport)
        
        if targetTeleport and targetTeleport:IsA("Model") then
            local tpMeshPart = targetTeleport:FindFirstChild("TP")
            if tpMeshPart and tpMeshPart:IsA("BasePart") then
                humanoidRootPart.CFrame = tpMeshPart.CFrame
            end
        end
    end,
})

local MainSection = TeleportTab:CreateSection("Boss Teleports")

local function FetchBossNames()
    local battles = game:GetService("Workspace").Battles:GetChildren()
	
    local bossNames = {}
    
    for _, battle in pairs(battles) do
            local name = battle.Name
            table.insert(bossNames, name)
    end
    
    return bossNames
end

local selectedBoss = FetchBossNames()[1]

local Dropdown = TeleportTab:CreateDropdown({
    Name = "Teleport Selection",
    Options = FetchBossNames(),
    CurrentOption = selectedBoss,
    MultipleOptions = false,
    Callback = function(Option)
	selectedOption = Option
		local selectedOptionName = selectedOption[1]
        local character = game.Players.LocalPlayer.Character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local targetBoss = game:GetService("Workspace").Battles:FindFirstChild(selectedOptionName)
        
        if targetBoss and targetBoss:IsA("Model") then
            local topPart = targetBoss:FindFirstChild("Top")
            if topPart and topPart:IsA("BasePart") then
                humanoidRootPart.CFrame = topPart.CFrame
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