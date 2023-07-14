-- New example script written by wally
-- You can suggest changes with a pull request or something

local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'xSGui v2',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

-- You do not have to set your tabs & groups up this way, just a prefrence.
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local lm = Tabs.Main:AddLeftGroupbox('Game Script')


lm:AddButton('Get Current Game Script', function()
	if game.PlaceId == 286090429 or 13622981808 or 2753915549 or 537413528 or 2248408710 or 3101667897 or 142823291 or 8916037983 or 6284583030 or 7549229959 or 4951858512 or 5901548022 or 6677985923 or 7549229959205224386 or 8888615802 then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/xSTronG30/Roblox-Scripts-Menu/main/multi", true))()
	end
end)

local TabBox = Tabs.Main:AddLeftTabbox() -- Add Tabbox on left side

local Tab1 = TabBox:AddTab('Misc')

Tab1:AddSlider('WalkSpeed', {
    Text = 'Set WalkSpeed',

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

    Default = 20,
    Min = 0,
    Max = 500,
    Rounding = 1,
		
    Compact = false, -- If set to true, then it will hide the label
})
local Number = Options.WalkSpeed.Value
Options.WalkSpeed:OnChanged(function(Value)

		--game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	getgenv().WalkSpeedValue = Value; --set your desired walkspeed here
	local Player = game:service'Players'.LocalPlayer;
	Player.Character.Humanoid:GetPropertyChangedSignal'WalkSpeed':Connect(function()
	Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
	end)
	Player.Character.Humanoid.WalkSpeed = getgenv().WalkSpeedValue;
end)

local MyButton = Tab1:AddButton({
    Text = 'Infinite Jump',
    Func = function()
		local function setInfinityJumpButton()
			local Mouse = game.Players.LocalPlayer:GetMouse()
			local InfiniteJump = false
			Mouse.KeyDown:Connect(function(k)
				if k == 'v' then
					if InfiniteJump == false then
						InfiniteJump = true
					else
						InfiniteJump = false
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
		print('Press V To Active')
    end,
    DoubleClick = false,
    Tooltip = 'Infinite Jump script'
})

local MyButton = Tab1:AddButton({
    Text = 'Airwalk',
    Func = function()
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
    end,
    DoubleClick = false,
    Tooltip = 'Airwalk script'
})

local MyButton = Tab1:AddButton({
    Text = 'Noclip',
    Func = function()
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
    end,
    DoubleClick = false,
    Tooltip = 'Noclip script'
})

local MyButton = Tab1:AddButton({
    Text = 'Ctrl + TP',
    Func = function()
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
    end,
    DoubleClick = false,
    Tooltip = 'Teleport script'
})



-- Library functions
-- Sets the watermark visibility
Library:SetWatermarkVisibility(true)

-- Example of dynamically-updating watermark with common traits (fps and ping)
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('xSGui V2 | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('xSGui v2')
SaveManager:SetFolder('xSGui v2/game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
