local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🏰 Mansion Tycoon 🏰 | 📜 DXDScripts 📜",
   LoadingTitle = "Mansion Tycoon",
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
   Title = "Mansion Tycoon",
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

local player = game.Players.LocalPlayer
local playerName = player.Name

local tycoonlocation = nil

for _, tycoon in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
    if tycoon:FindFirstChild("Mansion") then
        local mansion = tycoon.Mansion
        local collectorGui = mansion.Collectors.Collector.CollectorGui
        local titleText = collectorGui.MainFrame.Title.Text

        if titleText:sub(-10) == "'s Mansion" then

            local tycoonName = titleText:sub(1, -11)

            if tycoonName == playerName then
                tycoonlocation = tycoon
                break
            end
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
                local WelcomeGiverFolder = tycoonlocation:FindFirstChild("Mansion")
                local ButtonFolder = WelcomeGiverFolder:FindFirstChild("Buttons")
                local playerHead = game.Players.LocalPlayer.Character.Head
					for i,v in pairs(ButtonFolder:GetDescendants()) do
						if v.ClassName == "Part" and v.Name == "Touch" and v.Parent then
							Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
					wait(1)
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
              local WelcomeGiverFolder = tycoonlocation:FindFirstChild("Mansion")
              local collectPart = WelcomeGiverFolder:FindFirstChild("Collectors")
              local playerHead = game.Players.LocalPlayer.Character.Head  
                 for i, v in pairs(collectPart:GetDescendants()) do
                if v.Name == "TouchInterest" and v.Parent then
                firetouchinterest(playerHead, v.Parent, 0)
                 wait(0.1)
                firetouchinterest(playerHead, v.Parent, 1)
                wait(0.1)
                  end
				end
                wait(1)
            end
        end
    end,
})

local MainSection = MainTab:CreateSection("Tycoon Extra's")

local Button = MainTab:CreateButton({
    Name = "Teleport to Tycoon",
    Callback = function()
		local MansionFolder = tycoonlocation:FindFirstChild("Mansion")
			Game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = MansionFolder.Spawn.CFrame
	end,
})
local Button = MainTab:CreateButton({
    Name = "Remove Paid Buttons",
    Callback = function()
		local MansionFolder = tycoonlocation:FindFirstChild("Mansion")
        local folderToClear = MansionFolder:FindFirstChild("GlobalButtons")
			for _, child in pairs(folderToClear:GetChildren()) do
				child:Destroy()
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