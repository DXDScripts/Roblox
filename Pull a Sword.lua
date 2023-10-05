local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚔ Pull a Sword ⚔ | 📜 DXDScripts 📜",
   LoadingTitle = "Pull a Sword",
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
   Title = "Pull a Sword",
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
local AutoTrain = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Train",
    CurrentValue = AutoTrain,
    Callback = function(Value)
        AutoTrain = Value
        if AutoTrain then
            while AutoTrain do
                local eventName = "Click"
				local clickEvent = game:GetService("ReplicatedStorage"):WaitForChild("ClickEvent")
				clickEvent:FireServer(eventName)
                wait(0.0001)
            end
        end
    end,
})

local AutoRebirth = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = AutoRebirth,
    Callback = function(Value)
        AutoRebirth = Value
        if AutoRebirth then
            while AutoRebirth do
                game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteEvent"):WaitForChild("RebirthEvent"):FireServer()
                wait(1)
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("Auto Win (Need to be strong enough)")
local selectedOption = "1"

local optionToNumber1 = {
    ["1"] = 1,
    ["2"] = 2,
    ["3"] = 3,
    ["4"] = 4,
    ["5"] = 5,
    ["6"] = 6,
    ["7"] = 7,
    ["8"] = 8,
    ["9"] = 9,
	["10"] = 10,
	["11"] = 11,
	["12"] = 12,
	["13"] = 13,
	["14"] = 14,
	["15"] = 15,
	["16"] = 16,
	["17"] = 17,
	["18"] = 18,
	["19"] = 19,
	["20"] = 20,
}

local Dropdown = MainTab:CreateDropdown({
   Name = "Mobs to Fight",
   Options = {"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"},
   CurrentOption = selectedOption,
   MultiSelection = false,
   Callback = function(Option)
       selectedOption = Option[1]
   end,
})

local AutoWinEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Win",
    CurrentValue = AutoWinEnabled,
    Callback = function(Value)
        AutoWinEnabled = Value
        if AutoWinEnabled then
			local selectedOptionNumber = optionToNumber1[selectedOption]
			local players = game:GetService("Players")
			local replicatedStorage = game:GetService("ReplicatedStorage")
			while AutoWinEnabled do
				if not players.LocalPlayer:FindFirstChild("Won") then
					local args = {
					[1] = selectedOptionNumber
					}
					local winEvent = replicatedStorage:WaitForChild("WinEvent")
    winEvent:FireServer(unpack(args))
				end  
				wait(0.1)
			end
        end
    end,
})

local MainSection = MainTab:CreateSection("Auto Extra's")

local AutoClaimGifts = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Free Gifts",
    CurrentValue = AutoClaimGifts,
    Callback = function(Value)
        AutoClaimGifts = Value
        if AutoClaimGifts then
            while AutoClaimGifts do
                for i = 1, 12 do
    local eventName = "Reward" .. i

    local remoteEvent = game:GetService("ReplicatedStorage")
        :WaitForChild("GameClient")
        :WaitForChild("Events")
        :WaitForChild("RemoteEvent")
        :WaitForChild("ClaimGift")

    remoteEvent:FireServer(eventName)
end
                wait(0.0001)
            end
        end
    end,
})

local AutoClaimSpins = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Spins",
    CurrentValue = AutoClaimSpins,
    Callback = function(Value)
        AutoClaimSpins = Value
        if AutoClaimSpins then
            while AutoClaimSpins do
                game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteEvent"):WaitForChild("SpaceEggEvent"):FireServer()
				wait(1)
            end
        end
    end,
})

local AutoClaimEventEgg = false
local Toggle = MainTab:CreateToggle({
    Name = "AutoClaimEventEgg",
    CurrentValue = AutoClaimEventEgg,
    Callback = function(Value)
        AutoClaimEventEgg = Value
        if AutoClaimEventEgg then
            while AutoClaimEventEgg do
                game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteEvent"):WaitForChild("EventEggEvent"):FireServer()

				wait(1)
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("Extra's")
local Button = MainTab:CreateButton({
    Name = "Claim All Codes",
    Callback = function()
          local replicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = replicatedStorage:WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteEvent"):WaitForChild("CodeEventSR")

for i = 1, 17 do
    local folderName = tostring(i)
    local configuration = replicatedStorage.Codes:FindFirstChild(folderName)

    if configuration and configuration.ClassName == "Configuration" then
        local codeValue = configuration:FindFirstChild("Code")

        if codeValue and codeValue:IsA("StringValue") then
            local codeValueString = codeValue.Value

            -- Use codeValueString to fire the RemoteEvent
            local args = {
                [1] = codeValueString
            }

            remoteEvent:FireServer(unpack(args))
			wait(0.1)
        end
    end
end

    end,
})

local Button = MainTab:CreateButton({
    Name = "Claim Daily Reward",
    Callback = function()
          local replicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = replicatedStorage:WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteEvent"):WaitForChild("CodeEventSR")

for i = 1, 17 do
    local folderName = tostring(i)
    local codeValueObject = replicatedStorage.Codes:FindFirstChild(folderName)

    if codeValueObject and codeValueObject:IsA("Folder") then
        local codeValue = codeValueObject:FindFirstChild("Code")

        if codeValue and codeValue:IsA("StringValue") then
            local args = {
                [1] = codeValue.Value
            }

            remoteEvent:FireServer(unpack(args))
        end
    end
end

    end,
})

local TrailOptions = {
    "Blue",
    "Pink",
    "Yellow",
    "Red",
    "Paste",
    "Green Fade",
    "Pink Fade",
    "Blue Fade",
    "Red fade",
    "Fire",
    "Christmas",
    "Pastel2",
    "Rainbow",
}

local currentIndex = 1

local function sendNextTrail()
    if currentIndex <= #TrailOptions then
        local args = {
            [1] = "Buy",
            [2] = TrailOptions[currentIndex]
        }

        game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteEvent"):WaitForChild("TrailEventStatus"):FireServer(unpack(args))

        currentIndex = currentIndex + 1
    end
end

local Button = MainTab:CreateButton({
    Name = "Buy all Trails",
    Callback = function()
        while currentIndex <= #TrailOptions do
sendNextTrail()
end
    end,
})

local BossTab = Window:CreateTab("🤖 Bosses", nil)
local MainSection = BossTab:CreateSection("Auto Bosses")
local MainSection = BossTab:CreateSection("Rules: You need to be strong enough to win, in the world of that boss")

local MainSection = BossTab:CreateSection("Boss 1")
local AutoWinBoss1 = false
local Toggle = BossTab:CreateToggle({
    Name = "Auto Win Boss 1",
    CurrentValue = AutoWinBoss1,
    Callback = function(Value)
        AutoWinBoss1 = Value
        if AutoWinBoss1 then
            while AutoWinBoss1 do
                
local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")

if not players.LocalPlayer:FindFirstChild("Won") then
    local args = {
        [1] = "Boss1"
    }

    local winBossEvent = replicatedStorage:WaitForChild("WinBossEvent")
    winBossEvent:FireServer(unpack(args))
end
wait(0.1)
            end
        end
    end,
})

local AutoCraftBoss1 = false
local Toggle = BossTab:CreateToggle({
    Name = "Auto Craft Boss 1 Pets",
    CurrentValue = AutoCraftBoss1,
    Callback = function(Value)
        AutoCraftBoss1 = Value
        if AutoCraftBoss1 then
            while AutoCraftBoss1 do
             local replicatedStorage = game:GetService("ReplicatedStorage")
local craftingEventS = replicatedStorage:WaitForChild("CraftingEventS")

for i = 1, 3 do
    craftingEventS:FireServer(tostring(i))
end
wait(1)
            end
        end
    end,
})

local MainSection = BossTab:CreateSection("Boss 2")
local AutoWinBoss2 = false
local Toggle = BossTab:CreateToggle({
    Name = "Auto Win Boss 2",
    CurrentValue = AutoWinBoss2,
    Callback = function(Value)
        AutoWinBoss2 = Value
        if AutoWinBoss2 then
            while AutoWinBoss2 do
                
local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")

if not players.LocalPlayer:FindFirstChild("Won") then
    local args = {
        [1] = "Boss2"
    }

    local winBossEvent = replicatedStorage:WaitForChild("WinBossEvent")
    winBossEvent:FireServer(unpack(args))
end
wait(0.1)
            end
        end
    end,
})

local AutoCraftBoss2 = false
local Toggle = BossTab:CreateToggle({
    Name = "Auto Craft Boss 2 Pets",
    CurrentValue = AutoCraftBoss2,
    Callback = function(Value)
        AutoCraftBoss2 = Value
        if AutoCraftBoss2 then
            while AutoCraftBoss2 do
             local replicatedStorage = game:GetService("ReplicatedStorage")
local craftingEventS = replicatedStorage:WaitForChild("CraftingEventS")

for i = 3, 6 do
    craftingEventS:FireServer(tostring(i))
end
wait(1)
            end
        end
    end,
})

local MainSection = BossTab:CreateSection("Boss 3")
local AutoWinBoss3 = false
local Toggle = BossTab:CreateToggle({
    Name = "Auto Win Boss 3",
    CurrentValue = AutoWinBoss3,
    Callback = function(Value)
        AutoWinBoss3 = Value
        if AutoWinBoss3 then
            while AutoWinBoss3 do
                
local players = game:GetService("Players")
local replicatedStorage = game:GetService("ReplicatedStorage")

if not players.LocalPlayer:FindFirstChild("Won") then
    local args = {
        [1] = "Boss3"
    }

    local winBossEvent = replicatedStorage:WaitForChild("WinBossEvent")
    winBossEvent:FireServer(unpack(args))
end
wait(0.1)
            end
        end
    end,
})

local AutoCraftBoss3 = false
local Toggle = BossTab:CreateToggle({
    Name = "Auto Craft Boss 3 Pets",
    CurrentValue = AutoCraftBoss3,
    Callback = function(Value)
        AutoCraftBoss3 = Value
        if AutoCraftBoss3 then
            while AutoCraftBoss3 do
             local replicatedStorage = game:GetService("ReplicatedStorage")
local craftingEventS = replicatedStorage:WaitForChild("CraftingEventS")

for i = 6, 9 do
    craftingEventS:FireServer(tostring(i))
end
wait(1)
            end
        end
    end,
})

local TeleportTab = Window:CreateTab("💻 Teleport", nil)

local MainSection = TeleportTab:CreateSection("Worlds")

local Button = TeleportTab:CreateButton({
    Name = "Castle [WORLD 1]",
    Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portalers["2"].CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Hell [WORLD 2]",
    Callback = function()
          game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portalers["1"].Part.CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Frozen Island [WORLD 3]",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portalers["3"].Part.CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Desert [WORLD 4]",
    Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Portalers["5"].Part.CFrame
    end,
})


local PetsTab = Window:CreateTab("🥚 Pets", nil)
local MainSection = PetsTab:CreateSection("Extra Pet Options")

local EquipBestPet = false
local Button = PetsTab:CreateButton({
    Name = "Equip Best Pet",
    Callback = function()
        if EquipBestPet then
            local eventName = "EquipBest"
			local args = {}
			game:GetService("ReplicatedStorage")
				:WaitForChild("GameClient")
				:WaitForChild("Events")
				:WaitForChild("RemoteFunction")
				:WaitForChild("HandlePet")
				:InvokeServer(eventName, args)
        end
    end,
})

local MainSection = PetsTab:CreateSection("Castle Eggs")

local optionToNumber1 = {
    ["1"] = "Common Egg",
    ["2"] = "W2E1",
    ["3"] = "W3E1",
    ["4"] = "W4E1",
}

local AutoBuy1Enabled = false
local selectedOption = "1"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Pets [Castle World]",
    Options = {"1", "2", "3", "4"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [Castle World]",
    CurrentValue = AutoBuy1Enabled,
    Callback = function(Value)
        AutoBuy1Enabled = Value
        if AutoBuy1Enabled then
            while AutoBuy1Enabled do
                local selectedOptionNumber = optionToNumber1[selectedOption]
                if selectedOptionNumber then
                    local args = {
                        [1] = selectedOptionNumber,
                        [2] = "Buy1",
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))
                    wait(0.1)
                end
            end
        end
    end,
})

local MainSection = PetsTab:CreateSection("Hell Eggs")

local optionToNumber2 = {
    ["1"] = "W5E1",
    ["2"] = "W6E1",
    ["3"] = "W7E1",
    ["4"] = "W8E1",
	["5"] = "W9E1",
	["6"] = "W10E1",
}

local AutoBuy2Enabled = false
local selectedOption = "1"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Eggs [Hell World]",
    Options = {"1", "2", "3", "4", "5", "6"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [Hell World]",
    CurrentValue = AutoBuy2Enabled,
    Callback = function(Value)
        AutoBuy2Enabled = Value
        if AutoBuy2Enabled then
            while AutoBuy2Enabled do
                local selectedOptionNumber = optionToNumber2[selectedOption]
                if selectedOptionNumber then
                    local args = {
                        [1] = selectedOptionNumber,
                        [2] = "Buy1",
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))
                    wait(0.1)
                end
            end
        end
    end,
})

local MainSection = PetsTab:CreateSection("Frozen Island Eggs")

local optionToNumber2 = {
    ["1"] = "W11E1",
    ["2"] = "W12E1",
    ["3"] = "W13E1",
    ["4"] = "W14E1",
	["5"] = "W15E1",
	["6"] = "W16E1",
}

local AutoBuy2Enabled = false
local selectedOption = "1"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Eggs [Frozen World]",
    Options = {"1", "2", "3", "4", "5", "6"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [Frozen World]",
    CurrentValue = AutoBuy2Enabled,
    Callback = function(Value)
        AutoBuy2Enabled = Value
        if AutoBuy2Enabled then
            while AutoBuy2Enabled do
                local selectedOptionNumber = optionToNumber2[selectedOption]
                if selectedOptionNumber then
                    local args = {
                        [1] = selectedOptionNumber,
                        [2] = "Buy1",
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))
                    wait(0.1)
                end
            end
        end
    end,
})

local MainSection = PetsTab:CreateSection("Desert Eggs")

local optionToNumber2 = {
    ["1"] = "W17E1",
    ["2"] = "W18E1",
    ["3"] = "W19E1",
    ["4"] = "W20E1",
	["5"] = "W21E1",
	["6"] = "W22E1",
}

local AutoBuy2Enabled = false
local selectedOption = "1"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Eggs [Desert World]",
    Options = {"1", "2", "3", "4", "5", "6"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [Desert World]",
    CurrentValue = AutoBuy2Enabled,
    Callback = function(Value)
        AutoBuy2Enabled = Value
        if AutoBuy2Enabled then
            while AutoBuy2Enabled do
                local selectedOptionNumber = optionToNumber2[selectedOption]
                if selectedOptionNumber then
                    local args = {
                        [1] = selectedOptionNumber,
                        [2] = "Buy1",
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteFunction"):WaitForChild("BuyEgg"):InvokeServer(unpack(args))
                    wait(0.1)
                end
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