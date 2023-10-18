local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "✈️ Airport Simulator ✈️ | 📜 DXDScripts 📜",
   LoadingTitle = "Airport Simulator",
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
   Title = "Airport Simulator",
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

local matchingTycoon
local matchingButtons

local localPlayer = game.Players.LocalPlayer
local normalizedLocalName = string.lower(string.gsub(localPlayer.Name, "%s+", ""))
local tycoonsFolder = game:GetService("Workspace")["Zednov's Tycoon Kit"]:FindFirstChild("Tycoons")

for _, tycoon in pairs(tycoonsFolder:GetChildren()) do
    local ownerValue = tycoon:FindFirstChild("Owner")
    if ownerValue then
        local ownerName = tostring(ownerValue.Value)
        local normalizedOwnerName = string.lower(string.gsub(ownerName, "%s+", ""))
        if normalizedOwnerName == normalizedLocalName then
            matchingTycoon = tycoon 
            break 
        end
    end
end
			

local MainTab = Window:CreateTab("🏠 Home", nil)
local MainSection = MainTab:CreateSection("Auto Tycoon")


local AutoBuyEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Buy",
	CurrentValue = AutoBuyEnabled,
   Callback = function(Value)
   AutoBuyEnabled = Value
		if AutoBuyEnabled then
			while AutoBuyEnabled do
        local localPlayer = game.Players.LocalPlayer
        local normalizedLocalName = string.lower(string.gsub(localPlayer.Name, "%s+", ""))
        local tycoonsFolder = game:GetService("Workspace")["Zednov's Tycoon Kit"]:FindFirstChild("Tycoons")
        for _, tycoon in pairs(tycoonsFolder:GetChildren()) do
            local ownerValue = tycoon:FindFirstChild("Owner")
            local ownerName = tostring(ownerValue.Value)
            local normalizedOwnerName = string.lower(string.gsub(ownerName, "%s+", ""))
            if normalizedOwnerName == normalizedLocalName then
                local buttonsFolder = tycoon:FindFirstChild("Buttons")
                        local playerHead = game.Players.LocalPlayer.Character.Head  
                        for i, v in pairs(buttonsFolder:GetDescendants()) do
                            if v.Name == "TouchInterest" and v.Parent then
                                firetouchinterest(playerHead, v.Parent, 0)
                                wait(0.1)
                                firetouchinterest(playerHead, v.Parent, 1)
                                wait(0.1)
                            end
                        end
                end
            end
        end
		end
    end,
})


local AutoCollectEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Collect",
	CurrentValue = AutoCollectEnabled,
   Callback = function(Value)
   AutoCollectEnabled = Value
		if AutoCollectEnabled then
			while AutoCollectEnabled do
        local localPlayer = game.Players.LocalPlayer
        local normalizedLocalName = string.lower(string.gsub(localPlayer.Name, "%s+", ""))
        local tycoonsFolder = game:GetService("Workspace")["Zednov's Tycoon Kit"]:FindFirstChild("Tycoons")
        for _, tycoon in pairs(tycoonsFolder:GetChildren()) do
            local ownerValue = tycoon:FindFirstChild("Owner")
            local ownerName = tostring(ownerValue.Value)
            local normalizedOwnerName = string.lower(string.gsub(ownerName, "%s+", ""))
            if normalizedOwnerName == normalizedLocalName then
                local essentialsFolder = tycoon:FindFirstChild("Essentials")
                    local giverPart = essentialsFolder:FindFirstChild("Giver")
                        local playerHead = game.Players.LocalPlayer.Character.Head  
                        for i, v in pairs(giverPart:GetDescendants()) do
                            if v.Name == "TouchInterest" and v.Parent then
                                firetouchinterest(playerHead, v.Parent, 0)
                                wait(0.1)
                                firetouchinterest(playerHead, v.Parent, 1)
                                wait(0.1)
                            end
                        end
                end
            end
        end
		end
    end,
})

local MainSection = MainTab:CreateSection("Extra's")

local Button = MainTab:CreateButton({
    Name = "Get Parachute",
    Callback = function()
	local originalCFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Locations.ParachuteGiver.ColoredParts.TouchMe.CFrame
		 wait(0.5)
		 game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(originalCFrame)
    end,
})

local Button = MainTab:CreateButton({
    Name = "Claim Codes [2M+ Cash]",
    Callback = function()
        local codesToClaim = {"CHIP", "FIREBALL", "ROCKET", "MEGAWHALE", "INSTA", "CLIFFHANGER", "BLOXYCOLA", "OSCAR", "WHALETUBE", "CASHPASS", "ATDISCORD", "BONUS", "FREEMOOLAH", "NEWCODEWIN1", "FREECASH", "30K", "NEWCODE", "PRIZE", "GIFT", "VALENTINES", "VIP", "SHUTTLE", "USA", "MERRY", "NEWYEAR", "FREEGEMS", "MILLION", "WETHEBEST", "1MIL"}
        for _, code in ipairs(codesToClaim) do
            local args = {
                [1] = code
            }
            local success, errorMsg = pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Codes"):InvokeServer(unpack(args))
            end)
            wait(0.2)
        end
    end,
})

local NoRobuxItems = true
local Button = MainTab:CreateButton({
    Name = "Delete Cash Purchases",
    Callback = function()
        if NoRobuxItems then
            local folderToClear = game:GetService("Workspace"):FindFirstChild("MarketTycoonStores")
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

local PaidButtons = true
local Button = MainTab:CreateButton({
    Name = "Remove Robux/GamePasses Buttons",
    Callback = function()
        if PaidButtons then
            local function deleteItem(itemName)
    local item = matchingTycoon.Buttons:FindFirstChild(itemName)
    if item then
        item:Destroy()
    end
end

local itemsToDelete = {
    "Buy Golden Upgrader  - [R$ 95]",
    "Buy 2 Golden Droppers - [R$125]",
    "Buy Electric Cart - [Cart Pass]",
    "Buy Fighter Jet - [R$300]]",
    "Buy Jetski  - [R$150]",
    "Auto Collect - [GAMEPASS]",
    "Buy Helicopter - [R$250]",
    "Buy Golf Cart - [Cart Pass]",
    "Buy Mega Gem Dropper - [R$125]",
}

for _, itemName in pairs(itemsToDelete) do
    deleteItem(itemName)
end

        end
    end,
})

local TeleportTab = Window:CreateTab("💻 Teleport", nil)
local MainSection = TeleportTab:CreateSection("Airport Teleports")

local Button = TeleportTab:CreateButton({
    Name = "Aloha Airport",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["1"].CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Bluesand Airport",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["2"].CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Finwhale Airport",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["3"].CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Kohola Airport",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["4"].CFrame
    end,
})

local MainSection = TeleportTab:CreateSection("Island Teleports")

local Button = TeleportTab:CreateButton({
    Name = "New Island",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["4"].CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Coconut Island",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["14"].CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Volcano",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["9"].CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Cannon",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["7"].CFrame
    end,
})

local Button = TeleportTab:CreateButton({
    Name = "Paracute Island",
    Callback = function()
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Teleports["6"].CFrame
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


local CreditTab = Window:CreateTab("📃 Credit", nil)
local CreditParagraph = CreditTab:CreateParagraph({Title = "Script: DXDScripts", Content = "GUI: Rayfields"})
