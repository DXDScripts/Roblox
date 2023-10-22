local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🖱 Rebirth Champions 🖱 | 📜 DXDScripts 📜",
   LoadingTitle = "Rebirth Champions",
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
   Title = "Rebirth Champions",
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

local AutoClickEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Click",
    CurrentValue = AutoClickEnabled,
    Callback = function(Value)
		AutoClickEnabled = Value
        if AutoClickEnabled then
            while AutoClickEnabled do
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Click3"):FireServer()
				wait(0.00000000000001)
            end
        end
    end,
})

local AutoBuyPotionsEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Buy all Potions",
    CurrentValue = AutoBuyPotionsEnabled,
    Callback = function(Value)
		AutoBuyPotionsEnabled = Value
        if AutoBuyPotionsEnabled then
            while AutoBuyPotionsEnabled do
				local potionTypes = {
    "x2Gems",
    "x2HatchSpeed",
    "x2PetXP",
    "x2Rebirths",
    "x2Luck",
    "x2Clicks"
}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PotionEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("Potion")

for _, potionType in ipairs(potionTypes) do
    local args = {
        [1] = potionType,
        [2] = 1
    }
    
    PotionEvent:FireServer(unpack(args))
end
wait(0.1)
            end
        end
    end,
})

local AutoBuyUpgradesEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Buy Upgrades",
    CurrentValue = AutoBuyUpgradesEnabled,
    Callback = function(Value)
		AutoBuyUpgradesEnabled = Value
        if AutoBuyUpgradesEnabled then
            while AutoBuyUpgradesEnabled do
				local upgradeTypes = {
    "ClickMultiplier",
    "RebirthButtons",
    "WalkSpeed",
    "GemsMultiplier",
    "PetEquip",
    "PetStorage",
    "LuckMultiplier"
}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UpgradeFunction = ReplicatedStorage:WaitForChild("Functions"):WaitForChild("Upgrade")

for _, upgradeType in ipairs(upgradeTypes) do
    local args = {
        [1] = upgradeType
    }
    
    UpgradeFunction:InvokeServer(unpack(args))
end

				wait(0.00000000000001)
            end
        end
    end,
})

local AutoWelcomeBackEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Welcome back Gift",
    CurrentValue = AutoWelcomeBackEnabled,
    Callback = function(Value)
		AutoWelcomeBackEnabled = Value
        if AutoWelcomeBackEnabled then
            while AutoWelcomeBackEnabled do
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClaimWelcomeBackRewardFunction = ReplicatedStorage:WaitForChild("Functions"):WaitForChild("ClaimWelcomeBackReward")

for i = 1, 2 do
    local args = {
        [1] = i
    }

    ClaimWelcomeBackRewardFunction:InvokeServer(unpack(args))
    wait(1) -- Wait for a second between each invocation (adjust as needed)
end

            end
        end
    end,
})

local AutoPlayTimeEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Playtime Reward",
    CurrentValue = AutoPlayTimeEnabled,
    Callback = function(Value)
		AutoPlayTimeEnabled = Value
        if AutoPlayTimeEnabled then
            while AutoPlayTimeEnabled do
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ClaimPlaytimeRewardFunction = ReplicatedStorage:WaitForChild("Functions"):WaitForChild("ClaimPlaytimeReward")

for i = 1, 12 do
    local args = {
        [1] = i
    }

    ClaimPlaytimeRewardFunction:InvokeServer(unpack(args))
    wait(1)
end
            end
        end
    end,
})

local AutoTapSkinsEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Tap Skins",
    CurrentValue = AutoTapSkinsEnabled,
    Callback = function(Value)
		AutoTapSkinsEnabled = Value
        if AutoTapSkinsEnabled then
            while AutoTapSkinsEnabled do
				game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("TapSkin"):InvokeServer()
wait(1)
            end
        end
    end,
})

local AutoAchievementsEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Achievement Awards",
    CurrentValue = AutoAchievementsEnabled,
    Callback = function(Value)
		AutoAchievementsEnabled = Value
        if AutoAchievementsEnabled then
            while AutoAchievementsEnabled do
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AchievementsFunction = ReplicatedStorage:WaitForChild("Functions"):WaitForChild("Achievements")

for i = 1, 50 do
    local args = {
        [1] = i
    }

    AchievementsFunction:InvokeServer(unpack(args))
    wait(1)
end

wait(1)
            end
        end
    end,
})

local GamePassesTab = Window:CreateTab("🎫 GamePass", nil)
local MainSection = GamePassesTab:CreateSection("Unlock GamePasses for Free")

local Button = GamePassesTab:CreateButton({
    Name = "VIP",
    Callback = function()
local player = game.Players.LocalPlayer
    local dataFolder = player:FindFirstChild("Data")
        local vipValue = dataFolder:FindFirstChild("VIP")
            vipValue.Value = true
    end,
})

local Button = GamePassesTab:CreateButton({
    Name = "Auto Hatch",
    Callback = function()
    local player = game.Players.LocalPlayer
    local dataFolder = player:FindFirstChild("Data")
        local autoHatchValue = dataFolder:FindFirstChild("AutoHatch")
            autoHatchValue.Value = true
    end,
})

local Button = GamePassesTab:CreateButton({
    Name = "Triple Hatch",
    Callback = function()
	local player = game.Players.LocalPlayer
    local dataFolder = player:FindFirstChild("Data")
        local tripleHatchValue = dataFolder:FindFirstChild("x2Eggs")
            tripleHatchValue.Value = true
    end,
})

local Button = GamePassesTab:CreateButton({
    Name = "Super Luck",
    Callback = function()
	local player = game.Players.LocalPlayer
    local dataFolder = player:FindFirstChild("Data")
        local superLuckValue = dataFolder:FindFirstChild("SuperLuck")
            superLuckValue.Value = true
    end,
})

local Button = GamePassesTab:CreateButton({
    Name = "Luck2X",
    Callback = function()
	local player = game.Players.LocalPlayer
    local dataFolder = player:FindFirstChild("Data")
        local luck2xValue = dataFolder:FindFirstChild("Luck2X")
            luck2XValue.Value = true
    end,
})

local Button = GamePassesTab:CreateButton({
    Name = "Double Jump",
    Callback = function()
	local player = game.Players.LocalPlayer
    local dataFolder = player:FindFirstChild("Data")
        local doubleJumpValue = dataFolder:FindFirstChild("DoubleJump")
            doubleJumpValue.Value = true
    end,
})

local PetsTab = Window:CreateTab("🥚 Pets", nil)
local MainSection = PetsTab:CreateSection("Extra Pet Options")

local AutoCraftPetsEnabled = false
local Toggle = PetsTab:CreateToggle({
    Name = "Auto Craft Pets",
    CurrentValue = AutoCraftPetsEnabled,
    Callback = function(Value)
		AutoCraftPetsEnabled = Value
        if AutoCraftPetsEnabled then
            while AutoCraftPetsEnabled do
				local args = {
    [1] = "CraftAll",
    [2] = {}
}
game:GetService("ReplicatedStorage"):WaitForChild("Functions"):WaitForChild("Request"):InvokeServer(unpack(args))
wait(1)
            end
        end
    end,
})


local function FetchEggNames()
    local PetEggs = game:GetService("Workspace").Scripts:FindFirstChild("Eggs")
    if not PetEggs then
        warn("PetEggs not found in ReplicatedStorage.")
        return {}
    end
    
    local eggNames = {}
    
    for _, egg in pairs(PetEggs:GetChildren()) do
        if egg:IsA("Model") then
            table.insert(eggNames, tostring(egg.Name))  -- Convert the name to a string
        end
    end
    
    return eggNames
end

local selectedOption = FetchEggNames()[1]

local Dropdown = PetsTab:CreateDropdown({
    Name = "Egg Selection",
    Options = FetchEggNames(),
    CurrentOption = selectedOption,
    MultipleOptions = false,
    Callback = function(Option)
        selectedOption = Option[1]  
		print(selectedOption)
    end,
})

local AutoBuy1EggEnabled = false
local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Egg [SINGLE HATCH]",
    CurrentValue = AutoBuy1EggEnabled,
    Callback = function(Value)
        AutoBuy1EggEnabled = Value
        if AutoBuy1EggEnabled then
            while AutoBuy1EggEnabled do
                local args = {
                    [1] = selectedOption,
                    [2] = "Single"
                }
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local Events = ReplicatedStorage:FindFirstChild("Functions")
                local OpenEgg = Events:FindFirstChild("Unbox")
                    OpenEgg:InvokeServer(unpack(args))

                wait(1)
            end
        end
    end,
})

local AutoBuy3EggEnabled = false
local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Egg [TRIPLE HATCH]",
    CurrentValue = AutoBuy3EggEnabled,
    Callback = function(Value)
        AutoBuy3EggEnabled = Value
        if AutoBuy3EggEnabled then
            while AutoBuy3EggEnabled do
                local args = {
                    [1] = selectedOption,
                    [2] = "Triple"
                }
				local ReplicatedStorage = game:GetService("ReplicatedStorage")
                local Events = ReplicatedStorage:FindFirstChild("Functions")
                local OpenEgg = Events:FindFirstChild("Unbox")
                    OpenEgg:InvokeServer(unpack(args))

                wait(1)
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
