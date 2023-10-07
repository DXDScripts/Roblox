local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👾 Backroom Morphs 👾 | 📜 DXDScripts 📜",
   LoadingTitle = "Backroom Morphs",
   LoadingSubtitle = "Script created by DXDScripts",
   ConfigurationSaving = {
      Enabled = false,
   },
   Discord = {
      Enabled = true,
      Invite = "us2eVmuTCqk",
      RememberJoins = true
   },
   KeySystem = false,
})

Rayfield:Notify({
   Title = "Backroom Morphs",
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

local function FetchItemNames()
    local player = game:GetService("Players").LocalPlayer
    local inventory = player:FindFirstChild("Inventory")
    
    if not inventory then
        warn("Inventory not found for LocalPlayer.")
        return {}
    end
    
    local itemNames = {}
    
    for _, item in pairs(inventory:GetChildren()) do
        if item:IsA("BoolValue") then
            table.insert(itemNames, item.Name)
        end
    end
    
    return itemNames
end

local selectedOption = {FetchItemNames()[1]}

local Dropdown = MainTab:CreateDropdown({
    Name = "Give Items",
    Options = FetchItemNames(),
    CurrentOption = selectedOption,
    MultipleOptions = false,
    Callback = function(Option)
        selectedOption = Option
		local player = game:GetService("Players").LocalPlayer
        local inventory = player:FindFirstChild("Inventory")
        if inventory then
            local selectedOptionName = selectedOption[1]
            local selectedBoolValue = inventory:FindFirstChild(selectedOptionName)
            if selectedBoolValue and selectedBoolValue:IsA("BoolValue") then
                selectedBoolValue.Value = true
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("You will need to press 'e' STILL")
local AutoTeleportEnabled = false
local Toggle = MainTab:CreateToggle({
    Name = "Auto Teleport to Morph",
    CurrentValue = AutoTeleportEnabled,
    Callback = function(Value)
        AutoTeleportEnabled = Value
        if AutoTeleportEnabled then
            while AutoTeleportEnabled do
				
local function teleportToMeshPart(meshPart)
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    

    humanoidRootPart.CFrame = CFrame.new(meshPart.Position + Vector3.new(0, 5, 0))
end

 
    end
end
    end,
})



local Button = MainTab:CreateButton({
    Name = "Remove all Items",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
local inventory = player:FindFirstChild("Inventory")

if inventory then
    for _, item in pairs(inventory:GetChildren()) do
        if item:IsA("BoolValue") then
            item.Value = false
        end
    end
end
    end,
})

local NoGamepassDoor = true
local function findAndDestroyVipDoor(parent)
    for _, child in pairs(parent:GetChildren()) do
        if child.Name == "VipDoor" and child:IsA("BasePart") then
            child:Destroy()
            print("VipDoor part deleted")
        elseif child:IsA("Folder") then
            findAndDestroyVipDoor(child)
        end
    end
end

local Button = MainTab:CreateButton({
    Name = "Delete VIP/Premium Door",
    Callback = function()
        if NoGamepassDoor then
            local root = game:GetService("Workspace")
            findAndDestroyVipDoor(root)
        else
            warn("NoGamepassDoor is not true")
        end
    end,
})
local NoKillParts = true
local Button = MainTab:CreateButton({
    Name = "Delete Kill Parts",
    Callback = function()
        if NoKillParts then
            local folderToClear = game:GetService("Workspace").Interactables:FindFirstChild("KillingParts")
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
