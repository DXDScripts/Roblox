local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🏃 Fat Race 🏃 | 📜 DXDScripts 📜",
   LoadingTitle = "Fat Race",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
   },
   Discord = {
      Enabled = true,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false, 
})

Rayfield:Notify({
   Title = "Fat Race",
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
local MainSection = MainTab:CreateSection("Auto Win")

local InstantWinResturaunt = false
local Toggle = MainTab:CreateToggle({
    Name = "Instant Win [Resturaunt]",
    CurrentValue = InstantWinResturaunt,
    Callback = function(Value)
        InstantWinResturaunt = Value
        if InstantWinResturaunt then
            while InstantWinResturaunt do
			local args = {
				[1] = workspace:WaitForChild("Tracks"):WaitForChild("Resturaunt"):WaitForChild("Start")
						}
				game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TrackService"):WaitForChild("RF"):WaitForChild("StartRun"):InvokeServer(unpack(args))
				wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1182.73999, 346438.5, -289.413574)
				wait(0.1)
            end
        end
    end,
})

local InstantWinItaly = false
local Toggle = MainTab:CreateToggle({
    Name = "Instant Win [Italy]",
    CurrentValue = InstantWinItaly,
    Callback = function(Value)
        InstantWinItaly = Value
        if InstantWinItaly then
            while InstantWinItaly do
			local args = {
				[1] = workspace:WaitForChild("Tracks"):WaitForChild("Italy"):WaitForChild("Start")
						}
				game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TrackService"):WaitForChild("RF"):WaitForChild("StartRun"):InvokeServer(unpack(args))
				wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(237874.406, 269115.531, -56.4403572)
				wait(0.1)
            end
        end
    end,
})

local InstantWinJapan = false
local Toggle = MainTab:CreateToggle({
    Name = "Instant Win [Japan]",
    CurrentValue = InstantWinJapan,
    Callback = function(Value)
        InstantWinJapan = Value
        if InstantWinJapan then
            while InstantWinJapan do
			local args = {
				[1] = workspace:WaitForChild("Tracks"):WaitForChild("Japan"):WaitForChild("Start")
						}
				game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TrackService"):WaitForChild("RF"):WaitForChild("StartRun"):InvokeServer(unpack(args))
				wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(475510.125, 191479.125, 171.21994)
				wait(0.1)
            end
        end
    end,
})


local InstantWinMexico = false
local Toggle = MainTab:CreateToggle({
    Name = "Instant Win [Mexico]",
    CurrentValue = InstantWinMexico,
    Callback = function(Value)
        InstantWinMexico = Value
        if InstantWinMexico then
            while InstantWinMexico do
			local args = {
				[1] = workspace:WaitForChild("Tracks"):WaitForChild("Mexico"):WaitForChild("Start")
						}
				game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TrackService"):WaitForChild("RF"):WaitForChild("StartRun"):InvokeServer(unpack(args))
				wait(0.5)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(950854, 36186.0938, 405.357971)
				wait(0.1)
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("Auto Extra's")

local AutoRebirth = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Rebirth",
    CurrentValue = AutoRebirth,
    Callback = function(Value)
        AutoRebirth = Value
        if AutoRebirth then
            while AutoRebirth do
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RebirthService"):WaitForChild("RF"):WaitForChild("Rebirth"):InvokeServer()
                wait(1)
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
                game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("SpinService"):WaitForChild("RF"):WaitForChild("Spin"):InvokeServer()
				wait(1)
            end
        end
    end,
})

local AutoClaimGifts = false

local Toggle = MainTab:CreateToggle({
    Name = "Auto Claim Free Gifts",
    CurrentValue = AutoClaimGifts,
    Callback = function(Value)
        AutoClaimGifts = Value
        if AutoClaimGifts then
            while AutoClaimGifts do
                for i = 1, 12 do
                    local args = {
                        [1] = i
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("RewardService"):WaitForChild("RF"):WaitForChild("Claim"):InvokeServer(unpack(args))
                end
                wait(0.0001)
            end
        end
    end,
})

local TrailOptions = {
    "Purple",
    "Red",
    "Black",
    "Orange",
    "Rainbow",
    "Burger",
    "Win",
    "Duck",
}

local currentIndex = 1

local function sendNextTrail()
    if currentIndex <= #TrailOptions then
        local args = {
            [1] = TrailOptions[currentIndex],
        }
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("TrailService"):WaitForChild("RF"):WaitForChild("Buy"):InvokeServer(unpack(args))
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


local TeleportTab = Window:CreateTab("💻 Teleport", nil)
local MainSection = TeleportTab:CreateSection("World Teleports")
local Button = TeleportTab:CreateButton({
    Name = "Resturaunt",
    Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FoodSpawnZones.Resturaunt.Spawn.CFrame + Vector3.new(0, 10, 0)
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Italy",
    Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FoodSpawnZones.Italy.Spawn.CFrame + Vector3.new(0, 10, 0)
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Japan",
    Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FoodSpawnZones.Japan.Spawn.CFrame + Vector3.new(0, 10, 0)
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Mexico",
    Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FoodSpawnZones.Mexico.Spawn.CFrame + Vector3.new(0, 10, 0)
    end,
})

local MainSection = TeleportTab:CreateSection("Area Teleport")

local Button = TeleportTab:CreateButton({
    Name = "VIP Area",
    Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FoodSpawnZones.Kitchen.Spawn.CFrame + Vector3.new(0, 10, 0)
    end,
})

local MainSection = TeleportTab:CreateSection("Machine Teleport")
local Button = TeleportTab:CreateButton({
    Name = "Golden Machine",
    Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GameObjects.Machines.Golden.Circle.Touch.CFrame + Vector3.new(0, 10, 0)
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Index Machine",
    Callback = function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GameObjects.Machines.Index.Index.Part.CFrame + Vector3.new(0, 10, 0)
    end,
})

local PetsTab = Window:CreateTab("🥚 Pets", nil)
local MainSection = PetsTab:CreateSection("Extra Pet Options")
local Button = PetsTab:CreateButton({
    Name = "Equip Best Pets",
    Callback = function()
         game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("PetInventoryService"):WaitForChild("RF"):WaitForChild("EquipBest"):InvokeServer()
    end,
})

local MainSection = PetsTab:CreateSection("Kitchen")

local optionToNumber1 = {
    ["Basic"] = "Basic",
    ["Good"] = "Good",
    ["Rare"] = "Rare",
    ["Epic"] = "Epic",
}

local AutoBuy1Enabled = false
local selectedOption = "Basic"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Pets [Kitchen]",
    Options = {"Basic", "Good", "Rare", "Epic"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [Kitchen]",
    CurrentValue = AutoBuy1Enabled,
    Callback = function(Value)
        AutoBuy1Enabled = Value
        if AutoBuy1Enabled then
            while AutoBuy1Enabled do
                local selectedOptionNumber = optionToNumber1[selectedOption]
                if selectedOptionNumber then
                    local args = {
						[1] = "Single",
						[2] = selectedOptionNumber
								}
					game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggOpeningService"):WaitForChild("RF"):WaitForChild("Hatch"):InvokeServer(unpack(args))

                    wait(1)
                end
            end
        end
    end,
})

local MainSection = PetsTab:CreateSection("Italy")

local optionToNumber2 = {
    ["Crab"] = "Crab",
    ["Jungle"] = "Jungle",
    ["Tiki"] = "Tiki",
    ["Farm"] = "Farm",
}

local AutoBuy2Enabled = false
local selectedOption = "Crab"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Pets [Italy]",
    Options = {"Crab", "Jungle", "Tiki", "Farm"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [Italy]",
    CurrentValue = AutoBuy2Enabled,
    Callback = function(Value)
        AutoBuy2Enabled = Value
        if AutoBuy2Enabled then
            while AutoBuy2Enabled do
                local selectedOptionNumber = optionToNumber2[selectedOption]
                if selectedOptionNumber then
                    local args = {
						[1] = "Single",
						[2] = selectedOptionNumber
								}
					game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggOpeningService"):WaitForChild("RF"):WaitForChild("Hatch"):InvokeServer(unpack(args))
                    wait(1)
                end
            end
        end
    end,
})

local MainSection = PetsTab:CreateSection("Japan")
local optionToNumber3 = {
    ["Toxic"] = "Toxic",
    ["Magical"] = "Magical",
    ["Crystal"] = "Crystal",
    ["Brick"] = "Brick",
}

local AutoBuy3Enabled = false
local selectedOption = "Toxic"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Pets [JAPAN]",
    Options = {"Toxic", "Magical", "Crystal", "Brick"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [JAPAN]",
    CurrentValue = AutoBuy3Enabled,
    Callback = function(Value)
        AutoBuy3Enabled = Value
        if AutoBuy3Enabled then
            while AutoBuy3Enabled do
                local selectedOptionNumber = optionToNumber3[selectedOption]
                if selectedOptionNumber then
                    local args = {
						[1] = "Single",
						[2] = selectedOptionNumber
								}
					game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggOpeningService"):WaitForChild("RF"):WaitForChild("Hatch"):InvokeServer(unpack(args))
                    wait(1)
                else

                end
            end
        end
    end,
})

local MainSection = PetsTab:CreateSection("Mexico")
local optionToNumber4 = {
    ["Fish"] = "Fish",
    ["Penguin"] = "Penguin",
    ["Sandcastle"] = "Sandcastle",
    ["Party"] = "Party",
}

local AutoBuy4Enabled = false
local selectedOption = "Common"

local Dropdown = PetsTab:CreateDropdown({
    Name = "Pets [MEXICO]",
    Options = {"Fish", "Penguin", "Sandcastle", "Party"},
    CurrentOption = selectedOption,
    MultiSelection = false,
    Callback = function(Option)
        selectedOption = Option[1]
    end,
})

local Toggle = PetsTab:CreateToggle({
    Name = "Auto Buy Eggs [MEXICO]",
    CurrentValue = AutoBuy4Enabled,
    Callback = function(Value)
        AutoBuy4Enabled = Value
        if AutoBuy4Enabled then
            while AutoBuy4Enabled do
                local selectedOptionNumber = optionToNumber4[selectedOption]
                if selectedOptionNumber then
                    local args = {
						[1] = "Single",
						[2] = selectedOptionNumber
								}
					game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("Knit"):WaitForChild("Services"):WaitForChild("EggOpeningService"):WaitForChild("RF"):WaitForChild("Hatch"):InvokeServer(unpack(args))
                    wait(1)
                else

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


local CreditTab = Window:CreateTab("📃 Credit", nil)
local CreditParagraph = CreditTab:CreateParagraph({Title = "Script: DXDScripts", Content = "GUI: Rayfields"})
