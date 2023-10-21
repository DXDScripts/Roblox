local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "💩 Eat Blobs Simulator 💩 | 📜 DXDScripts 📜",
   LoadingTitle = "Eat Blobs Simulator",
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
   Title = "Eat Blobs Simulator",
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

local MainSection = MainTab:CreateSection("OP Options")
local Button = MainTab:CreateButton({
    Name = "Unlimited Skulls",
    Callback = function()
local args = {
    [1] = "Zebra",
    [2] = -100000000000
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("BuySkin"):FireServer(unpack(args))
    end,
})

local MainSection1 = MainTab:CreateSection("Auto Claims", false)		
local AutoSpinTimeEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Claim Spin [TIME]",
   CurrentValue = AutoSpinTimeEnabled,
   Callback = function(Value)
   AutoSpinTimeEnabled = Value
		if AutoSpinTimeEnabled then
			while AutoSpinTimeEnabled do
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("SpinService"):WaitForChild("RE"):WaitForChild("FreeSpinButtonPressed"):FireServer()
wait(0.1)
end
end
    end,
})

local AutoSpinSkullEnabled = false
local Toggle = MainTab:CreateToggle({
   Name = "Claim Spin [SKULL]",
   CurrentValue = AutoSpinSkullEnabled,
   Callback = function(Value)
   AutoSpinSkullEnabled = Value
		if AutoSpinSkullEnabled then
			while AutoSpinSkullEnabled do
game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.5.1"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("SpinService"):WaitForChild("RE"):WaitForChild("SkullSpinButtonPressed"):FireServer()
wait(0.1)
end
end
    end,
})

local MainSection3 = MainTab:CreateSection("Claims")

local Button = MainTab:CreateButton({
    Name = "Claim Codes",
    Callback = function()
        local codesToClaim = {"18KLIKES","19KLIKES", "ROBLOXDOWN", "SUMMERSOON", "LIKES17K", "UPD6", "SAVING", "LIKES16K", "PURPLESHAKE", "TOOMANYCODES", "2XDAILY", "10KLIKES", "9KLIKES", "9KSIZE", "URTHEBEST", "MEMORIALDAY", "14KLIKES", "JULY4 ", "FIREWORK", "13KLIKES", "SUMMERBREAK", "ONETHREE ", "12KWOW", "UPD5", "8THOUSAND", "ALMOSTSUMMER", "H8SCHOOL", "UPD4", "7THOUSAND", "MOMDAY"}
        for _, code in ipairs(codesToClaim) do
            local args = {
                [1] = code
            }
            local success, errorMsg = pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("TFunction"):InvokeServer(unpack(args))
            end)
            wait(4) -- Adjust the wait time between code claims as needed
        end
    end,
})

local Button = MainTab:CreateButton({
    Name = "Claim Daily Reward",
    Callback = function()
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DailyReward"):FireServer()
wait(1)
    end,
})

local UserTab = Window:CreateTab("👽 User", nil)
local UserSection = UserTab:CreateSection("User Settings")

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
	SectionParent = UserSection,
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
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})


local UserSection2 = UserTab:CreateSection("User Extra's")
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
