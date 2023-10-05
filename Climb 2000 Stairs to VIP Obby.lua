local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🏃 Climb 2000 Stairs to VIP Obby 🏃 | 📜 DXDScripts 📜",
   LoadingTitle = "Climb 2000 Stairs to VIP Obby",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Climb 2000 Stairs to VIP Obby"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key | Youtube Hub",
      Subtitle = "Key System",
      Note = "Key In Discord Server",
      FileName = "YoutubeHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = false, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/AtgzSPWK"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "Climb 2000 Stairs to VIP Obby",
   Content = "Created by DXDScripts",
   Duration = 5,
   Image = 13047715178,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Complete Game")

local AutoWin = true
local Button = MainTab:CreateButton({
    Name = "Auto Win",
    Callback = function()
        if AutoWin then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13, 2049.6001, -5.99999905, -1, 0, 0, 0, 1, 0, 0, 0, -1)
			wait(1)

        end
    end,
})
		
	

local MainSection = MainTab:CreateSection("Auto Win Obbies")
local AutoAllObbyEnabled = true

local AutoWinEasy = true
local Button = MainTab:CreateButton({
    Name = "Easy Obby",
    Callback = function()
        if AutoWinEasy then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["easy obby portal"]["Smooth Block Model"].CFrame
			wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").easy.CFrame + Vector3.new(0, 10, 0)
        end
    end,
})

local AutoWinMedium = true
local Button = MainTab:CreateButton({
    Name = "Medium Obby",
    Callback = function()
        if AutoWinMedium then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Medium obby portal"]["Smooth Block Model"].CFrame
			wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").medium.CFrame + Vector3.new(0, 10, 0)
        end
    end,
})

local AutoWinHard = true
local Button = MainTab:CreateButton({
    Name = "Hard Obby",
    Callback = function()
        if AutoWinHard then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Hard obby portal"]["Smooth Block Model"].CFrame
		wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").impossible.CFrame + Vector3.new(0, 10, 0)
        end
    end,
})

local AutoWinGlass = true
local Button = MainTab:CreateButton({
    Name = "Glass Obby",
    Callback = function()
        if AutoWinGlass then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["easy obby portal"]["Smooth Block Model"].CFrame
			wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").glass.CFrame + Vector3.new(0, 10, 0)
        end
    end,
})

local AutoWinMaze = true
local Button = MainTab:CreateButton({
    Name = "Maze Obby",
    Callback = function()
        if AutoWinMaze then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["easy obby portal"]["Smooth Block Model"].CFrame
			wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").maze.CFrame + Vector3.new(0, 10, 0)
        end
    end,
})

local AutoWinGuessTheLine = true
local Button = MainTab:CreateButton({
    Name = "Guess the Line Obby",
    Callback = function()
        if AutoWinGuessTheLine then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Guess the line"]["Smooth Block Model"].CFrame
			wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["guess the line"].CFrame + Vector3.new(0, 10, 0)
        end
    end,
})

local AutoWinDisappearingStairs = true
local Button = MainTab:CreateButton({
    Name = "Disappearing Stairs Obby",
    Callback = function()
        if AutoWinDisappearingStairs then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Guess the line"]["Smooth Block Model"].CFrame
            wait(1)

            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace")["Disappearing Stairs"].CFrame + Vector3.new(0, 10, 0)
        end
    end,
})

local MainSection = MainTab:CreateSection("Remove Objects")

local VIPDoor = true
local Button = MainTab:CreateButton({
    Name = "VIPDoor",
    Callback = function()
        if VIPDoor then
local models = game:GetService("Workspace"):GetChildren()

local function deleteVIPModel(model)
    local vipModel = model:FindFirstChild("VIP")
    if vipModel then
        vipModel:Destroy()
    end
end
for _, model in pairs(models) do
    if model:IsA("Model") then
        deleteVIPModel(model)
    end
end

 end
 end,
})

local VIPDoorTimer = true
local Button = MainTab:CreateButton({
    Name = "VIPDoor Timer",
    Callback = function()
        if VIPDoor then
            local vipDoorModel = game:GetService("Workspace"):FindFirstChild("VipDoorModel")
if vipDoorModel then
    vipDoorModel:Destroy()
end
 end
 end,
})

local PaidButtons = true
local Button = MainTab:CreateButton({
    Name = "Paid Buttons",
    Callback = function()
        if PaidButtons then
            local function deleteItem(itemName)
    local item = game:GetService("Workspace"):FindFirstChild(itemName)
    if item then
        item:Destroy()
    end
end

local itemsToDelete = {
    "Heart Balloon",
    "flying cloud",
    "super coil",
    "jetpack",
    "BoomBox22",
    "Grapple Hook",
    "gravity coil",
    "Unicorn Pet",
    "rocket launcher",
	"Giver",
	"Giver",
	"Giver",
	"Giver",
	"Giver",
	"Giver",
	"Giver",
	"Giver",
	"Giver",
	"Trails",
	"rainbow carpet",
	"Heart Ballon",
}

for _, itemName in pairs(itemsToDelete) do
    deleteItem(itemName)
end

        end
    end,
})

local ItemsTab = Window:CreateTab("🎒 Items", nil) -- Title, Image
local MainSection = ItemsTab:CreateSection("Item Giver")
local FreeItemGiver = true
local Button = ItemsTab:CreateButton({
    Name = "Free Item Giver",
    Callback = function()
        if FreeItemGiver then
game:GetService("ReplicatedStorage"):WaitForChild("Lb"):FireServer()
		end
    end,
})

local MainSection = ItemsTab:CreateSection("Selection of pre-set Items")
local FreeItemJetPack = true
local Button = ItemsTab:CreateButton({
    Name = "JetPack",
    Callback = function()
        if FreeItemJetPack then
game:GetService("ReplicatedStorage"):WaitForChild("giveGear"):FireServer("Jetpack")
		end
    end,
})

local FreeItemBodySwapPotion = true
local Button = ItemsTab:CreateButton({
    Name = "Body Swap Potion",
    Callback = function()
        if FreeItemBodySwapPotion then
game:GetService("ReplicatedStorage"):WaitForChild("giveGear"):FireServer("BodySwapPotion")
		end
    end,
})

local FreeItemCheetos = true
local Button = ItemsTab:CreateButton({
    Name = "Cheetos",
    Callback = function()
        if FreeItemCheetos then
game:GetService("ReplicatedStorage"):WaitForChild("giveGear"):FireServer("Cheetos")
		end
    end,
})

local FreeItemInvisibilityCloak = true
local Button = ItemsTab:CreateButton({
    Name = "InvisibilityCloak",
    Callback = function()
        if FreeItemInvisibilityCloak then
game:GetService("ReplicatedStorage"):WaitForChild("giveGear"):FireServer("InvisibilityCloak")
		end
    end,
})

local FreeItemSkibiPet = true
local Button = ItemsTab:CreateButton({
    Name = "Skibi Pet",
    Callback = function()
        if FreeItemSkibiPet then
local player = game:GetService("Players").LocalPlayer
game:GetService("ReplicatedStorage"):WaitForChild("SkibiTimerEnded"):FireServer(player)
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").PetSkibiGiver.Part.CFrame
		end
    end,
})

local FreeItemRocketLauncher = true
local Button = ItemsTab:CreateButton({
    Name = "Rocket Launcher",
    Callback = function()
        if FreeItemRocketLauncher then
game:GetService("ReplicatedStorage"):WaitForChild("giveGear"):FireServer("RocketLauncher")
		end
    end,
})

local FreeItemGrappleHook = true
local Button = ItemsTab:CreateButton({
    Name = "Grapple Hook",
    Callback = function()
        if FreeItemGrappleHook then
game:GetService("ReplicatedStorage"):WaitForChild("giveGear"):FireServer("GrappleHook")
		end
    end,
})

local MainSection = ItemsTab:CreateSection("Remove all items")
local ClearInventory = true
local Button = ItemsTab:CreateButton({
    Name = "Clear Inventory",
    Callback = function()
        if ClearInventory then
local player = game.Players.LocalPlayer
if player then
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            tool:Remove()
        end
    end
    if player.Character then
        for _, tool in pairs(player.Character:GetChildren()) do
            if tool:IsA("Tool") then
                tool:Remove()
            end
        end
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

local CreditTab = Window:CreateTab("📃 Credit", nil) -- Title, Image
local CreditParagraph = CreditTab:CreateParagraph({Title = "Script: DXDScripts", Content = "GUI: Rayfields"})