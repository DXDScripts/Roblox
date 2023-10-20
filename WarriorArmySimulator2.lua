local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚔️ Warrior Army Simulator 2 ⚔️ | 📜 DXDScripts 📜 ",
   LoadingTitle = "Warrior Army Simulator 2",
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
   Title = "Warrior Army Simulator 2",
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

local workspace = game:GetService("Workspace")
local monstersFolder = workspace:WaitForChild("Monsters")

local uniqueNames = {}

for _, model in pairs(monstersFolder:GetChildren()) do
    if model:IsA("Model") then
        local modelName = model.Name
        if not uniqueNames[modelName] then
            uniqueNames[modelName] = true
        end
    end
end

local uniqueNamesList = {}
for name, _ in pairs(uniqueNames) do
    table.insert(uniqueNamesList, name)
end

table.sort(uniqueNamesList)

local selectedOption = uniqueNamesList[1] 

local Dropdown = MainTab:CreateDropdown({
    Name = "Monster Names",
    Options = uniqueNamesList,
    CurrentOption = {uniqueNamesList[1]},
    MultipleOptions = false,
    Flag = "MonsterDropdown",
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local autoAttack = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Attack",
    CurrentValue = autoAttack,
    Callback = function(Value)
        autoAttack = Value

        if autoAttack then
		 local Players = game:GetService("Players")
                local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local Workspace = game:GetService("Workspace")
            while autoAttack do

                    local localPlayer = Players.LocalPlayer

                    if localPlayer then
                        local localPlayerName = localPlayer.Name

                        local plrsWarriors = Workspace:WaitForChild("PlrsWarriors")
                        local playerFolder = plrsWarriors:FindFirstChild(localPlayerName)

                        if playerFolder then
                            local modelList = {}

                            for _, child in ipairs(playerFolder:GetChildren()) do
                                if child:IsA("Model") then
                                    table.insert(modelList, child.Name)
                                end
                            end

                            if #modelList == 0 then
                                wait(0.1)
                            else
                                local monstersFolder = Workspace:WaitForChild("Monsters")
                                local selectedMonster = monstersFolder:FindFirstChild(selectedOption)

                                if selectedMonster then
                                    local args = {
                                        [1] = "SendWarrior",
                                        [2] = true,
                                        [3] = selectedMonster,
                                        [4] = {}
                                    }

                                    ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("WarriorsControllerRF"):InvokeServer(unpack(args))
                                end
                            end
                        end
					end

                    wait(0.1)
                end
            end
    end,
})

local AutoRecoverWarrior = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Recover Warriors",
    CurrentValue = AutoRecoverWarrior,
    Callback = function(Value)
        AutoRecoverWarrior = Value

        if AutoRecoverWarrior then
            while AutoRecoverWarrior do
                local args = {
                    [1] = "RecoverWarriors"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("WarriorsControllerRE"):FireServer(unpack(args))

                wait(1)
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("Auto Extra's")
local AutoClaimGifts = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Timed Gifts",
    CurrentValue = AutoClaimGifts,
    Callback = function(Value)
        AutoClaimGifts = Value

        if AutoClaimGifts then
            while AutoClaimGifts do
                for numbertoloop = 1, 15 do
                    local args = {
                        [1] = "ClaimPlayTimeReward",
                        [2] = tostring(numbertoloop)
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRE"):FireServer(unpack(args))
                wait(1)
				end

                wait(1)
            end
        end
    end,
})

local AutoClaimDaily = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Daily",
    CurrentValue = AutoClaimDaily,
    Callback = function(Value)
        AutoClaimDaily = Value

        if AutoClaimDaily then
            while AutoClaimDaily do
                local remote = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRE")

                for numbertoloop = 1, 7 do
                    local args = {
                        [1] = "ClaimDailyReward",
                        [2] = numbertoloop
                    }

                    remote:FireServer(unpack(args))
                    wait(1)
                end
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
                local args = {
                    [1] = "SpinWheel"
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRF"):InvokeServer(unpack(args))
				wait(1)
            end
        end
    end,
})

local AutoClaimAchievements = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Achievements",
    CurrentValue = AutoClaimAchievements,
    Callback = function(Value)
        AutoClaimAchievements = Value

        if AutoClaimAchievements then
            while AutoClaimAchievements do
                local achievements = {
                    { "Rebirth", 4 },
                    { "Play Time", 8 },
                    { "Defeat Monsters", 8 }
                }

                for _, achievementData in ipairs(achievements) do
                    local achievementName = achievementData[1]
                    local maxCount = achievementData[2]

                    for numbertoloop = 1, maxCount do
                        local args = {
                            [1] = "ClaimAchievment",
                            [2] = achievementName,
                            [3] = numbertoloop
                        }

                        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRE"):FireServer(unpack(args))

                        wait(1)
                    end
                end

                wait(1)
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("Extra's")
local Button = MainTab:CreateButton({
    Name = "Claim All Codes",
    Callback = function()
        local codesToClaim = {"Release", "200Likes", "1000Likes", "5000Likes"}

        for _, code in ipairs(codesToClaim) do
            local args = {
                [1] = "ClaimCode",
                [2] = code
            }

            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRE"):FireServer(unpack(args))
			wait(5)
        end
    end,
})


local Button = MainTab:CreateButton({
    Name = "Delete Gamepass Ads",
    Callback = function()
        local Workspace = game:GetService("Workspace")
        local gamePassesAdsFolder = Workspace:FindFirstChild("GamePassesAds")

        if gamePassesAdsFolder then
            gamePassesAdsFolder:Remove()
        else
            warn("The 'GamePassesAds' folder does not exist in Workspace.")
        end
    end,
})



local TeleportTab = Window:CreateTab("💻 Tele", nil)
local MainSection = TeleportTab:CreateSection("Teleport to worlds")
local teleportsFolder = game:GetService("Workspace").Teleports.Main

local teleportNames = {
    [0] = "Lobby",
    [1] = "Farm",
    [2] = "Jungle",
	[3] = "Dragon's Palace",
	[4] = "Wolves Den",
	[5] = "Frost Land",
	[6] = "Desert",
	[7] = "Erupted Volcano"
}

for number, name in pairs(teleportNames) do
    local teleport = teleportsFolder:FindFirstChild(tostring(number))
    if teleport then
        local Button = TeleportTab:CreateButton({
            Name = "" .. name,
            Callback = function()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = teleport.CFrame
            end,
        })
    end
end

local CastleTab = Window:CreateTab("🏰 Castle", nil)
local MainSection = CastleTab:CreateSection("Castle Upgrade")

local AutoCastleUpgrade = false

local Toggle = CastleTab:CreateToggle({
    Name = "Auto Upgrade Castle",
    CurrentValue = AutoCastleUpgrade,
    Callback = function(Value)
        AutoCastleUpgrade = Value
        if AutoCastleUpgrade then
            while AutoCastleUpgrade do
                local args = {
                    [1] = "UpgradeCastle"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CastleStuffRF"):InvokeServer(unpack(args))
                wait(1)
            end
        end
    end,
})

local MainSection = CastleTab:CreateSection("Castle Stone Upgrades")

local function AutoUpgradeResource(resourceType, workerType)
    local autoToggle = false

    local Toggle = CastleTab:CreateToggle({
        Name = "Auto Upgrade " .. resourceType .. " [" .. workerType .. "]",
        CurrentValue = autoToggle,
        Callback = function(Value)
            autoToggle = Value
            if autoToggle then
                while autoToggle do
                    local args = {
                        [1] = "UpgradeWarehouse",
                        [2] = resourceType,
                        [3] = workerType
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRE"):FireServer(unpack(args))
                    wait(1)
                end
            end
        end,
    })
end

AutoUpgradeResource("Stone", "Workers")
AutoUpgradeResource("Stone", "Speed")
AutoUpgradeResource("Stone", "Bag")


local MainSection = CastleTab:CreateSection("Castle Wood Upgrades")

local function AutoUpgradeWood(resourceType, workerType)
    local autoToggle = false

    local Toggle = CastleTab:CreateToggle({
        Name = "Auto Upgrade " .. resourceType .. " [" .. workerType .. "]",
        CurrentValue = autoToggle,
        Callback = function(Value)
            autoToggle = Value
            if autoToggle then
                while autoToggle do
                    local args = {
                        [1] = "UpgradeWarehouse",
                        [2] = resourceType,
                        [3] = workerType
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRE"):FireServer(unpack(args))
                    wait(1)
                end
            end
        end,
    })
end

AutoUpgradeWood("Wood", "Workers")
AutoUpgradeWood("Wood", "Speed")
AutoUpgradeWood("Wood", "Bag")

local UpgradesTab = Window:CreateTab("⬆️️ Extra", nil)
local MainSection = UpgradesTab:CreateSection("Player Upgrades")

local AutoPlayerUpgrade = false

local upgrades = {
    { Name = "Walk Speed", Type = "WalkSpeed" },
    { Name = "Storage", Type = "Storage" },
    { Name = "Attack Speed", Type = "AttackSpeed" },
    { Name = "Gems", Type = "Gems" }
}

local currentIndex = 1

local Toggle = UpgradesTab:CreateToggle({
    Name = "Auto Upgrade Player [ALL]",
    CurrentValue = AutoPlayerUpgrade,
    Callback = function(Value)
        AutoPlayerUpgrade = Value

        if AutoPlayerUpgrade then
            while AutoPlayerUpgrade do
                local currentUpgrade = upgrades[currentIndex]
                local args = {
                    [1] = "PlayerUpgrade",
                    [2] = currentUpgrade.Type
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRE"):FireServer(unpack(args))

                wait(1)

                currentIndex = currentIndex % #upgrades + 1
            end
        end
    end,
})

local function CreateAutoUpgradeToggle(name, upgradeType)
    local autoUpgradeEnabled = false

    local toggle = UpgradesTab:CreateToggle({
        Name = "Auto Upgrade " .. name,
        CurrentValue = autoUpgradeEnabled,
        Callback = function(Value)
            autoUpgradeEnabled = Value

            if autoUpgradeEnabled then
                while autoUpgradeEnabled do
                    local args = {
                        [1] = "PlayerUpgrade",
                        [2] = upgradeType
                    }

                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RandomsRE"):FireServer(unpack(args))

                    wait(1)
                end
            end
        end,
    })
end

CreateAutoUpgradeToggle("Walk Speed", "WalkSpeed")
CreateAutoUpgradeToggle("Storage", "Storage")
CreateAutoUpgradeToggle("Attack Speed", "AttackSpeed")
CreateAutoUpgradeToggle("Gems", "Gems")

local MainSection = UpgradesTab:CreateSection("Auto Buy Chests")
local AutoChests = {}

local function ToggleChestAutomation(chestType, chestNumber, toggleValue)
    if toggleValue then
        local args = {
            [1] = "OpenChest",
            [2] = string.format("%sWoodenChest%d", chestType, chestNumber),
            [3] = 1
        }
        AutoChests[string.format("%s%d", chestType, chestNumber)] = true
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ItemsController"):InvokeServer(unpack(args))
		wait(1)
    else
        AutoChests[string.format("%s%d", chestType, chestNumber)] = false
		wait(1)
    end
end

local chestData = {
    { type = "Armor", number = 1 },
    { type = "Armor", number = 2 },
    { type = "Sword", number = 1 },
    { type = "Sword", number = 2 },
}

for _, data in pairs(chestData) do
    UpgradesTab:CreateToggle({
        Name = string.format("Auto Chest %s - %d", data.type, data.number),
        CurrentValue = false,
        Callback = function(Value)
            ToggleChestAutomation(data.type, data.number, Value)
        end,
    })
end

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
        wait(0.1)
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
