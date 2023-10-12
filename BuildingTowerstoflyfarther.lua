local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🏢 Building Towers to fly farther 🏢 | 📜 DXDScripts 📜",
   LoadingTitle = "Building Towers to fly farther",
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
   Title = "Building Towers to fly farther",
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


local AutoFloorBuyEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Buy Floor",
    CurrentValue = AutoFloorBuyEnabled,
    Callback = function(Value)
        AutoFloorBuyEnabled = Value
        if AutoFloorBuyEnabled then
            while AutoFloorBuyEnabled do
			local args = {
    [1] = "\233\135\145\229\184\129\232\180\173\228\185\176\230\165\188\229\177\130"
}

game:GetService("ReplicatedStorage"):WaitForChild("Msg"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
wait(0.1)
			end
        end
    end,
})

local AutoMoneyEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Money",
    CurrentValue = AutoMoneyEnabled,
    Callback = function(Value)
        AutoMoneyEnabled = Value
        if AutoMoneyEnabled then
            while AutoMoneyEnabled do
			local args = {
    [1] = "\233\163\158\232\161\140\231\187\147\230\157\159"
}

game:GetService("ReplicatedStorage"):WaitForChild("Msg"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
wait(0.1)
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
			local args = {
    [1] = "\233\135\141\231\148\159"
}

game:GetService("ReplicatedStorage"):WaitForChild("Msg"):WaitForChild("RemoteEvent"):FireServer(unpack(args))
wait(1)
			end
        end
    end,
})

local MainSection = MainTab:CreateSection("Auto Extra's")

local AutoGiftsEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Gifts",
    CurrentValue = AutoGiftsEnabled,
    Callback = function(Value)
        AutoGiftsEnabled = Value
        if AutoGiftsEnabled then
            while AutoGiftsEnabled do
			local replicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = replicatedStorage:WaitForChild("Msg"):WaitForChild("RemoteEvent")

for i = 1, 12 do
    local args = {
        [1] = "\233\162\134\229\143\150\229\156\168\231\186\191\229\165\150\229\138\177",
        [2] = i
    }

    remoteEvent:FireServer(unpack(args))
    wait(1)  -- Wait for 1 second before running the next iteration
end

			end
        end
    end,
})

local AutoEventEggEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Event Egg",
    CurrentValue = AutoEventEggEnabled,
    Callback = function(Value)
        AutoEventEggEnabled = Value
        if AutoEventEggEnabled then
            while AutoEventEggEnabled do
			local args = {
    [1] = 7100001,
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Tool"):WaitForChild("DrawUp"):WaitForChild("Msg"):WaitForChild("DrawHero"):InvokeServer(unpack(args))

wait(1)
			end
        end
    end,
})


local AutoBuyWingsEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Buy Wings",
    CurrentValue = AutoBuyWingsEnabled,
    Callback = function(Value)
        AutoBuyWingsEnabled = Value
        if AutoBuyWingsEnabled then
            while AutoBuyWingsEnabled do
			local replicatedStorage = game:GetService("ReplicatedStorage")
local remoteEvent = replicatedStorage:WaitForChild("Msg"):WaitForChild("RemoteEvent")

for i = 13000001, -13000090, -1 do
    local args = {
        [1] = "\232\180\173\228\185\176\231\191\133\232\134\128",
        [2] = i
    }

    remoteEvent:FireServer(unpack(args))
    wait(1)  -- Wait for 1 second before running the next iteration
end


			end
        end
    end,
})

local PetsTab = Window:CreateTab("🥚 Pets", nil)
local MainSection = PetsTab:CreateSection("Extra Pet Options")
local Button = PetsTab:CreateButton({
    Name = "Equip Best Pet",
    Callback = function()
 local args = {
    [1] = "\232\163\133\229\164\135\230\156\128\228\189\179\229\174\160\231\137\169"
}

game:GetService("ReplicatedStorage"):WaitForChild("Msg"):WaitForChild("RemoteEvent"):FireServer(unpack(args))

    end,
})

local MainSection = PetsTab:CreateSection("WORLD 1")

local optionToNumber1 = {
    ["1"] = 7000001,
    ["2"] = 7000002,
    ["3"] = 7000003,
    ["4"] = 7000004,
	["5"] = 7000005,
	["6"] = 7000006,
}


local AutoBuy1Enabled = false
local selectedOption = "1"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Pets [WORLD 1]",
    Options = {"1", "2", "3", "4", "5", "6"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [WORLD 1]",
    CurrentValue = AutoBuy1Enabled,
    Callback = function(Value)
        AutoBuy1Enabled = Value
        if AutoBuy1Enabled then
            while AutoBuy1Enabled do
                local selectedOptionNumber = optionToNumber1[selectedOption]
                if selectedOptionNumber then
                   local args = {
    [1] = selectedOptionNumber,
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Tool"):WaitForChild("DrawUp"):WaitForChild("Msg"):WaitForChild("DrawHero"):InvokeServer(unpack(args))

                    wait(1)
                end
            end
        end
    end,
})

local MainSection = PetsTab:CreateSection("WORLD 2")

local optionToNumber2 = {
    ["1"] = 7000008,
    ["2"] = 7000009,
    ["3"] = 70000010,
}

local AutoBuy2Enabled = false
local selectedOption = "1"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Pets [WORLD 2]",
    Options = {"1", "2", "3"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [WORLD 2]",
    CurrentValue = AutoBuy2Enabled,
    Callback = function(Value)
        AutoBuy2Enabled = Value
        if AutoBuy2Enabled then
            while AutoBuy2Enabled do
                local selectedOptionNumber = optionToNumber2[selectedOption]
                if selectedOptionNumber then
                     local args = {
    [1] = selectedOptionNumber,
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Tool"):WaitForChild("DrawUp"):WaitForChild("Msg"):WaitForChild("DrawHero"):InvokeServer(unpack(args))

                    wait(1)
                end
            end
        end
    end,
})

local MainSection = PetsTab:CreateSection("WORLD 3")
local optionToNumber3 = {
    ["Common"] = 11,
    ["Uncommon"] = 12,
    ["Rare"] = 13,
    ["Epic"] = 14,
    ["Legendary"] = 15,
    ["Mythic"] = 16
}

local AutoBuy3Enabled = false
local selectedOption = "Common"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Pets [WORLD 3]",
    Options = {"Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [WORLD 3]",
    CurrentValue = AutoBuy3Enabled,
    Callback = function(Value)
        AutoBuy3Enabled = Value
        if AutoBuy3Enabled then
            while AutoBuy3Enabled do
                local selectedOptionNumber = optionToNumber3[selectedOption]
                if selectedOptionNumber then
                    local args = {
                        [1] = selectedOptionNumber,
                        [2] = "Open1",
                        [3] = {}
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Hatch"):WaitForChild("EggHatch"):InvokeServer(unpack(args))
                    wait(1)
                else
                    print("Selected option not found in the mapping")
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
			game.StarterGui:SetCore("SendNotification", {Title="Build Towers to fly farther - DXDScripts"; Text="No-Clip Activated"; Duration=5;})
            noclip()
        else
			game.StarterGui:SetCore("SendNotification", {Title="Build Towers to fly farther - DXDScripts"; Text="No-Clip Deactivated!"; Duration=5;})
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
	game.StarterGui:SetCore("SendNotification", {Title="Build Towers to fly farther - DXDScripts"; Text="Infinite Jump Activated!"; Duration=5;})
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
		game.StarterGui:SetCore("SendNotification", {Title="Build Towers to fly farther - DXDScripts"; Text="B-Tools Given"; Duration=5;})
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
		game.StarterGui:SetCore("SendNotification", {Title="Build Towers to fly farther - DXDScripts"; Text="Anti-AFK Activated"; Duration=5;})
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
		end
    end,
})
