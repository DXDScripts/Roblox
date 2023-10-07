local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🥳 House Party Tycoon! 🥳 | 📜 DXDScripts 📜",
   LoadingTitle = "House Party Tycoon",
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
   Title = "House Party Tycoon!",
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

local tycoonnumber = game:GetService("Players").LocalPlayer.TycoonNumber.Value

local MainTab = Window:CreateTab("🏠 Home", nil)
local MainSection = MainTab:CreateSection("Auto Tycoon")

local AutoBuildEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Auto Build [FREE]",
   CurrentValue = AutoBuildEnabled,
   Callback = function(Value)
   AutoBuildEnabled = Value
		if AutoBuildEnabled then
			while AutoBuildEnabled do
			local tycoonnumber = game:GetService("Players").LocalPlayer.TycoonNumber.Value
for _,v in pairs(game:GetService("Workspace").Tycoons[tycoonnumber].Buttons:GetDescendants()) do
    local args = {
    [1] = 0,
    [2] = v.Name,
    [3] = "nil"
}

game:GetService("ReplicatedStorage"):WaitForChild("E"):WaitForChild("ButtonBuy"):FireServer(unpack(args))
wait(0.0001)
                end
			end
		end
   end,
})

local MainSection = MainTab:CreateSection("Extra")
local AutoAllObbyEnabled = true

local Button = MainTab:CreateButton({
    Name = "Unlimited Cash",
    Callback = function()
        local tycoonnumber = game:GetService("Players").LocalPlayer.TycoonNumber.Value
for _,v in pairs(game:GetService("Workspace").Tycoons[tycoonnumber].Buttons:GetDescendants()) do
    local args = {
    [1] = -1e30,
    [2] = v.Name,
    [3] = "nil"
}

game:GetService("ReplicatedStorage"):WaitForChild("E"):WaitForChild("ButtonBuy"):FireServer(unpack(args))
                end
    end,
})


local allowedNames = {
    "FamousDrinkNPC",
    "RonaldoCeleb",
	"CelebDJ",
	"CarSpawnerLambo",
	"CarSpawner",
	"CelebrityGuestKitchen",
	"BogatiSpawner",
	"RariSpawner",
	"MisterBeast",
	"GigaCeleb",
	"GordonChef",
	"RockCeleb",
}

local Button = MainTab:CreateButton({
    Name = "Purchase all Robux Buttons",
    Callback = function()
        local tycoonnumber = game:GetService("Players").LocalPlayer.TycoonNumber.Value
        for _, v in pairs(game:GetService("Workspace").Tycoons[tycoonnumber].Buttons:GetDescendants()) do
            if table.find(allowedNames, v.Name) then
                local args = {
                    [1] = 0,
                    [2] = v.Name,
                    [3] = "nil"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("E"):WaitForChild("ButtonBuy"):FireServer(unpack(args))
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
