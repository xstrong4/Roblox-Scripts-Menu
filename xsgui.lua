
---
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/xSTronG30/Roblox-Scripts-Menu/main/espGui.lua')))()

local Window = OrionLib:MakeWindow({Name = tostring("xS Gui"), HidePremium = false, SaveConfig = false})

local Tab4 = Window:MakeTab({
        Name = "Games Scripts",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})

local Tab = Window:MakeTab({
        Name = "ESP",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})
	
local Tab2 = Window:MakeTab({
        Name = "Puplic Scripts",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})
local Tab3 = Window:MakeTab({
        Name = "Settings",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
})

getgenv().cham = false
getgenv().nameESP = false
getgenv().boxESP = false
getgenv().tracer = false

getgenv().esp_loaded = false
getgenv().Visibility = false

Tab4:AddButton({
	Name = "Get Current Game Script",
	Callback = function()
		if game.PlaceId == 286090429 or 2753915549 or 537413528 or 2248408710 or 3101667897 or 142823291 or 8916037983 or 6284583030 or 7549229959 or 4951858512 or 5901548022 or 6677985923 or 7549229959205224386 or 8888615802 then
			loadstring(game:HttpGet("https://raw.githubusercontent.com/xSTronG30/Roblox-Scripts-Menu/main/multi", true))()
		else
			OrionLib:MakeNotification({
				Name = "Error",
				Content = "Sorry your current game doesn't have a hack script",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
		end
	end
})
if game.PlaceId == 5 then
	Tab4:AddButton({
		Name = "Teleport to Collection",
		Callback = function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(s)
		end    
	})
end
Tab:AddToggle({
    Name = "Visual",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://github.com/xSTronG30/OpenSourceESPStuff/raw/main/espmain.lua", true))()
        end
        getgenv().Visibility = Value
    end   
})

Tab:AddToggle({
    Name = "Box ESP",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://github.com/xSTronG30/OpenSourceESPStuff/raw/main/espmain.lua", true))()
        end
        getgenv().boxESP = Value
    end   
})


Tab:AddToggle({
    Name = "Name",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://github.com/xSTronG30/OpenSourceESPStuff/raw/main/espmain.lua", true))()
        end
        getgenv().nameESP = Value
    end   
})

Tab:AddToggle({
    Name = "Tracer",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://github.com/xSTronG30/OpenSourceESPStuff/raw/main/espmain.lua", true))()
        end
        getgenv().tracer = Value
    end   
})

Tab:AddToggle({
    Name = "Chams",
    Default = getgenv().Visibility,
    Callback = function(Value)
        if getgenv().esp_loaded == false and Value == true then
            getgenv().esp_loaded = true
            loadstring(game:HttpGet("https://github.com/xSTronG30/OpenSourceESPStuff/raw/main/espmain.lua", true))()
        end
        getgenv().cham = Value
    end   
})


function SendNote(message : string, time)
    OrionLib:MakeNotification({
        Name = "Title!",
        Content = message,
        Image = "rbxassetid://4483345998",
        Time = time or 3
    })
end



Tab:AddToggle({
        Name = "Use Team-Color",
        Default = false,
        Callback = function(Value)
            getgenv().useTeamColor = Value
        end
})

Tab2:AddSlider({
	Name = "WalkSpeed",
	Min = 0,
	Max = 500,
	Default = 20,
	Color = Color3.fromRGB(50,0,0),
	Increment = 1,
	ValueName = "WalkSpeed",
	Callback = function(Value)
		--game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		getgenv().WalkSpeedValue = Value; --set your desired walkspeed here
		local Player = game:service'Players'.LocalPlayer;
		Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
		Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
		end)
		Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
	end    
})

Tab2:AddSlider({
	Name = "Hiplights",
	Min = 0,
	Max = 500,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "add",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
	end    
})

Tab2:AddButton({
	Name = "Infinite Jump",
	Callback = function()
	OrionLib:MakeNotification({
		Name = "Infinite Jump",
		Content = "You Clicked Infinite Jump, Done",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
---
	local infiniteJumpButton = Instance.new("TextButton")
local function setInfinityJumpButton()
    local script = Instance.new("LocalScript", infiniteJumpButton)

    infiniteJumpButton.Parent = tab_1
    infiniteJumpButton.Name = "infinityJumpButton"
    infiniteJumpButton.Text = "Infinity Jump [V]"
    infiniteJumpButton.TextScaled = true
    infiniteJumpButton.Font = Enum.Font.Ubuntu
    infiniteJumpButton.BackgroundColor3 = Color3.new(1, 0, 0)
    infiniteJumpButton.Position = UDim2.new(0, 10, 0, 190)
    infiniteJumpButton.Size = UDim2.new(0.9, 0, 0.05, 0)
    infiniteJumpButton.BorderColor3 = Color3.new(1, 1, 1)

    local Mouse = game.Players.LocalPlayer:GetMouse()
    local InfiniteJump = false

    script.Parent.MouseButton1Click:Connect(function()
        if InfiniteJump == false then
            InfiniteJump = true
            script.Parent.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        else
            InfiniteJump = false
            script.Parent.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        end
    end)

    Mouse.KeyDown:Connect(function(k)
        if k == "v" then
            if InfiniteJump == false then
                InfiniteJump = true
                script.Parent.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
            else
                InfiniteJump = false
                script.Parent.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
            end
        end
    end)

    game:GetService("UserInputService").JumpRequest:Connect(function()
        if InfiniteJump == true then
            game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass 'Humanoid'
                :ChangeState("Jumping")
        end
    end)
end
coroutine.wrap(setInfinityJumpButton)()


  	end    
})

Tab2:AddButton({
	Name = "Airwalk",
	Callback = function()
			OrionLib:MakeNotification({
				Name = "Airwalk",
				Content = "You Clicked Airwalk, Done",
				Image = "rbxassetid://4483345998",
				Time = 5
			})
-----
				local crtl = false


		mouse = game.Players.LocalPlayer:GetMouse()


		local air = Instance.new("Part", workspace)
		air.Size = Vector3.new(7, 2, 3)
		air.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
		air.Transparency = 1
		air.Anchored = true
		air.Name = "Airwalk"


		mouse.KeyDown:Connect(function(key)
		   if key == "2" then
		       air.Size = Vector3.new(4, -0.5, 3)
		   end
		end)

		mouse.KeyUp:Connect(function(key)
		   if key == "2" then
		       air.Size = Vector3.new(7, 2, 3)
		   end
		end)


		for i = 1, math.huge do
		   air.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, -4, 0)
		   wait(0.01)
		end
----
  	end    
})

Tab2:AddButton({
	Name = "NoClip",
	Callback = function()
	OrionLib:MakeNotification({
		Name = "NoClip",
		Content = "You clicked NoClip, Done",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
--

 local Noclip = nil
local Clip = nil

function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait(0.21) -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()					
--
  	end    
})
		
Tab2:AddButton({
	Name = "CTRL + TP",
	Callback = function()
	OrionLib:MakeNotification({
		Name = "CTRL + TP",
		Content = "You clicked CTRL + TP, Done",
		Image = "rbxassetid://4483345998",
		Time = 5
	})
--

	local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
--
  	end    
})

Tab2:AddTextbox({
	Name = "Teleport To Player",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		targetUsername = Value

		players = game:GetService("Players")
		targetPlayer = players:FindFirstChild(targetUsername)
		players.LocalPlayer.Character:MoveTo(targetPlayer.Character.HumanoidRootPart.Position)
			end	  
})


Tab3:AddButton({
	Name = "ReJoin Server",
	Callback = function()
		local tpservice= game:GetService("TeleportService")
		local plr = game.Players.LocalPlayer

		tpservice:Teleport(game.PlaceId, plr)
  	end    
})


local orionion = game:GetService("CoreGui"):FindFirstChild("Orion")

local destroygui = Tab3:AddButton({
    Name = "Destroy GUI",
    Callback = function()
        orionion:Destroy()
        OrionLib:Destroy()
       
        wait(1)
       
        OrionLib:MakeNotification({
            Name = "Removing GUI...",
            Content = "GUI is removed!",
            Time = 3
        })
    end   
})

OrionLib:Init()
---
