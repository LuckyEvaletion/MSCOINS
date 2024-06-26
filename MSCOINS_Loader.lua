local screen_gui = Instance.new("ScreenGui")
screen_gui.Name = "Kiwi"
screen_gui.DisplayOrder = 999999999
screen_gui.IgnoreGuiInset = false
screen_gui.ResetOnSpawn = false
screen_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screen_gui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0, 1)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BackgroundTransparency = 1
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0, 0, 1, 0)
frame.Size = UDim2.new(0.386924595, 0, 0.576817155, 0)
frame.Visible = true
frame.Parent = screen_gui

local uigrid_layout = Instance.new("UIGridLayout")
uigrid_layout.CellPadding = UDim2.new(0, 0, 0.0500000007, 0)
uigrid_layout.CellSize = UDim2.new(0.800000012, 0, 0.200000003, 0)
uigrid_layout.StartCorner = Enum.StartCorner.BottomLeft
uigrid_layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
uigrid_layout.SortOrder = Enum.SortOrder.LayoutOrder
uigrid_layout.VerticalAlignment = Enum.VerticalAlignment.Bottom
uigrid_layout.Parent = frame

local uipadding = Instance.new("UIPadding")
uipadding.PaddingBottom = UDim.new(0.02500000037252903, 0)
uipadding.Parent = frame

local template = Instance.new("Frame")
template.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
template.BorderColor3 = Color3.new(0, 0, 0)
template.BorderSizePixel = 0
template.Position = UDim2.new(0, 0, 0.605726838, 0)
template.Size = UDim2.new(0, 231, 0, 286)
template.Visible = false
template.Name = "template"
template.Parent = frame

local uiscale = Instance.new("UIScale")
uiscale.Parent = template

local uicorner = Instance.new("UICorner")
uicorner.Parent = template

local uistroke = Instance.new("UIStroke")
uistroke.Color = Color3.new(0.588235, 0.588235, 0.588235)
uistroke.Thickness = 2.5
uistroke.Parent = template

local uigradient = Instance.new("UIGradient")
uigradient.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.996078, 0.0392157, 0)), ColorSequenceKeypoint.new(0.1599999964237213, Color3.new(1, 0.615686, 0)), ColorSequenceKeypoint.new(0.3199999928474426, Color3.new(1, 1, 0)), ColorSequenceKeypoint.new(0.47999998927116394, Color3.new(0, 1, 0)), ColorSequenceKeypoint.new(0.6399999856948853, Color3.new(0, 0.666667, 1)), ColorSequenceKeypoint.new(0.800000011920929, Color3.new(1, 0.333333, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.666667, 0, 1))})
uigradient.Parent = uistroke

local text_label = Instance.new("TextLabel")
text_label.Font = Enum.Font.GothamBold
text_label.Text = "Entity spawned"
text_label.TextColor3 = Color3.new(1, 1, 1)
text_label.TextScaled = true
text_label.TextSize = 14
text_label.TextWrapped = true
text_label.BackgroundColor3 = Color3.new(1, 1, 1)
text_label.BackgroundTransparency = 1
text_label.BorderColor3 = Color3.new(0, 0, 0)
text_label.BorderSizePixel = 0
text_label.Size = UDim2.new(1, 0, 1, 0)
text_label.Visible = true
text_label.ZIndex = 3
text_label.Parent = template

local uistroke_2 = Instance.new("UIStroke")
uistroke_2.Thickness = 2.5
uistroke_2.Parent = text_label

local uipadding_2 = Instance.new("UIPadding")
uipadding_2.PaddingBottom = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingLeft = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingRight = UDim.new(0.10000000149011612, 0)
uipadding_2.PaddingTop = UDim.new(0.10000000149011612, 0)
uipadding_2.Parent = text_label

local uigradient_2 = Instance.new("UIGradient")
uigradient_2.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.3799654543399811, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.5, Color3.new(0.580392, 0.580392, 0.580392)), ColorSequenceKeypoint.new(0.5336787700653076, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))})
uigradient_2.Offset = Vector2.new(-1, 0)
uigradient_2.Rotation = 45
uigradient_2.Parent = template

local shadow = Instance.new("ImageLabel")
shadow.Image = "rbxassetid://14001321443"
shadow.ImageColor3 = Color3.new(0, 0, 0)
shadow.ImageTransparency = 0.75
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(50, 50, 150, 150)
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundColor3 = Color3.new(1, 1, 1)
shadow.BackgroundTransparency = 1
shadow.BorderColor3 = Color3.new(0, 0, 0)
shadow.BorderSizePixel = 0
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.Size = UDim2.new(1, 35, 1, 35)
shadow.Visible = true
shadow.ZIndex = -1
shadow.Name = "shadow"
shadow.Parent = template

local uiaspect_ratio_constraint = Instance.new("UIAspectRatioConstraint")
uiaspect_ratio_constraint.AspectRatio = 1.107398509979248
uiaspect_ratio_constraint.Parent = frame

local function sound()
	local notification = Instance.new("Sound", workspace)
	notification.SoundId = "rbxassetid://5153734608"
	notification.Parent = workspace
	notification:Play()
end

local function notify(entity, bypassed, other)
	sound()
	local tem = template:Clone()
	tem.Visible = true
	tem.TextLabel.Text = entity .. " Has just spawned!"
	if bypassed then
		tem.TextLabel.Text = entity .. " Has been bypassed!"
	end
	if other then
		tem.TextLabel.Text = other
	end
	tem.Parent = frame
	game:GetService("TweenService"):Create(tem.UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Sine), { Scale = 1 }):Play()
	spawn(function()
		while true do
			task.wait(0.01)
			if not tem or not tem:FindFirstChild("UIStroke") or not tem:FindFirstChild("UIStroke"):FindFirstChild("UIGradient") then
				return
			end
			tem.UIStroke.UIGradient.Rotation += 1
		end
	end)

	spawn(function()
		while true do
			task.wait(0.01)
			if not tem or not tem:FindFirstChild("UIGradient") then
				return
			end
			if tem.UIGradient.Offset.X >= 1 then
				tem.UIGradient.Offset = Vector2.new(-1, 0)
			end
			tem.UIGradient.Offset += Vector2.new(0.01, 0)
		end
	end)
	spawn(function()
		task.wait(15)
		if tem and tem:FindFirstChild("UIScale") then
			game:GetService("TweenService"):Create(tem.UIScale, TweenInfo.new(0.25, Enum.EasingStyle.Sine), { Scale = 0 }):Play()
			task.wait(.25)
			tem:Destroy()
		end
	end)
end
if _G.Only then
Library:Notify("Only The 1 Script")
return
end
_G.Only = true
local function billboard(child, name, name2, name3)
	local billboard_gui = Instance.new("BillboardGui")
	billboard_gui.Active = true
	billboard_gui.AlwaysOnTop = true
	billboard_gui.ClipsDescendants = true
	billboard_gui.LightInfluence = 1
	billboard_gui.Size = UDim2.new(5, 0, 2, 0)
	billboard_gui.ResetOnSpawn = false
	billboard_gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	billboard_gui.Parent = child
	billboard_gui.Name = "KiwiHighlight"
	if name2 then
		billboard_gui.Name = "KiwiHighlight_2"
	end
	if name3 then
		billboard_gui.Name = "KiwiHighlight_3"
	end

	local text_label = Instance.new("TextLabel")
	text_label.Font = Enum.Font.GothamBold
	text_label.Text = name
	text_label.TextColor3 = Color3.new(1, 1, 1)
	text_label.TextScaled = true
	text_label.TextSize = 14
	text_label.TextWrapped = true
	text_label.BackgroundColor3 = Color3.new(1, 1, 1)
	text_label.BackgroundTransparency = 1
	text_label.BorderColor3 = Color3.new(0, 0, 0)
	text_label.BorderSizePixel = 0
	text_label.Size = UDim2.new(1, 0, 1, 0)
	text_label.Visible = true
	text_label.Parent = billboard_gui

	local uistroke = Instance.new("UIStroke")
	uistroke.Thickness = 0.5
	uistroke.Parent = text_label

	spawn(function()
		while task.wait() do
			local hue = tick() % 5 / 5
			local color = Color3.fromHSV(hue, 1, 1) 
			text_label.TextColor3 = color
		end
	end)
end

local function selection(child, name, name2, name3)
	billboard(child, name, name2, name3)
	local hi = Instance.new("Highlight")
	hi.Parent = child
	hi.Adornee = child
	hi.OutlineColor = Color3.fromRGB(161, 0, 0)
	hi.FillColor = Color3.fromRGB(255, 0, 0)
	hi.FillTransparency = 0.75
	hi.Name = "KiwiHighlight"
	if name2 then
		hi.Name = "KiwiHighlight_2"
	end
	if name3 then
		hi.Name = "KiwiHighlight_3"
	end
	if child:IsA("Part") then
		child.Color = Color3.fromRGB(0, 0, 0)
		child.Transparency = 0
	end
	spawn(function()
		while task.wait() do
			if hi then
				local hue = tick() % 5 / 5
				local color = Color3.fromHSV(hue, 1, 1) 
				hi.OutlineColor = color
				hi.FillColor = color
			end
		end
	end)
end


function checkDistance(part, extra)
	if not extra then extra = 15 end
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or not part then
		return false
	end
	local distanceToPart = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
	if distanceToPart <= extra then
		return true
	end
	return false
end
local repo = 'https://raw.githubusercontent.com/mstudio45/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = "MSCOINS-(v1.2.1)",
    Center = true,
    AutoShow = true,
    TabPadding = 5.5,
    MenuFadeTime = 0
})
local v16={espdoors=false,espkeys=false,espitems=false,espbooks=false,esprush=false,espchest=false,esplocker=false,esphumans=false,espgold=false,goldespvalue=1061 -(810 + 251) ,hintrush=false,hintrushhee=false,light=false,instapp=false,noseek=false,nogates=false,nopuzzle=false,noa90=false,noskeledoors=false,noseekarmsfire=false,noscreech=false,nodupe=false,getcode=false,getcodet=false,roomsnolock=false,draweraura=false,autorooms=false,itemsaura=false,autopulllever=false,bookcollecter=false,breakercollecter=false};local v17={table.unpack(v16)};local v18={doors={},keys={},items={},books={},entity={},chests={},lockers={},people={},gold={}}
local killBricks
local Eyes
local DrakoBloxxers
local Noclipping
local brightLoop
local KeyESP
local DoorESP
local ClosetESP
local EntityNotifier
local EntityNotifierScreech
local SeekWall
local FLYING = false
local FlySpeed = 0.3
local Clip = true
local MainNotified = false
local AutoInteract = false
local EntityEsp = false
local FOV = 70
local Speed = 15
local JumpPower = 25
local Tab = Window:AddTab("Main")
local Section = Tab:AddLeftGroupbox("Toggles")

local Toggle = Section:AddToggle("Notifies",{
	Text = "Entity Notifier",
	Default = false,
	Tooltip = "EntityNotifier",
	Callback = function(Value)
		if Value then
			EntityNotifier = workspace.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "Eyes" then
					notify("Eyes")
					if EntityEsp then
						selection(child, "[Eyes]")
							end
                                      elseif child.Name == "LiveHintBook" then
					if EntityEsp then
						selection(child, "[Book]")
					end
                                      elseif child.Name == "LiveBreakerPolePickup" then
					if EntityEsp then
						selection(child, "[Breaker]")
					end
                                elseif child.Name == "SeekMoving" then
					notify("Seek")
					if EntityEsp then
						selection(child, "[Seek]")
					end
                                elseif child.Name == "JeffTheKiller" then
					notify("Jeff")
					if EntityEsp then
						selection(child, " ")
					end
				elseif child.Name == "RushMoving" and checkDistance(child:FindFirstChildWhichIsA("BasePart"), 1000) then
					notify("Rush")
					if EntityEsp then
						selection(child:FindFirstChildWhichIsA("BasePart"), "Rush")
					end
				elseif child.Name == "AmbushMoving" and checkDistance(child:FindFirstChildWhichIsA("BasePart"), 1000) then
					notify("Ambush")
					if EntityEsp then
						selection(child:FindFirstChildWhichIsA("BasePart"), "Ambush")
					end
				elseif child.Name == "Drakobloxxer" then
					if EntityEsp then
						selection(child, "[DrakoBloxxer]")
					end
					if not MainNotified then
						MainNotified = true
						notify("DrakoBloxxer")
					end
				end
			end)
			EntityNotifierRetroScreech = workspace.CurrentCamera.ChildAdded:Connect(function(child)
				task.wait(0.1)
				if child.Name == "RetroScreech" then
					notify("Retro Screech")
					if EntityEsp then
						selection(child, "[Retro Screech]")
					end
				end
			end)
                       EntityNotifierScreech = workspace.CurrentCamera.ChildAdded:Connect(function(child)
				task.wait(0.1)
				if child.Name == "Screech" then
					notify("Screech")
					if EntityEsp then
						selection(child, "[Screech]")
					end
				end
			end)


		else
			EntityNotifier:Disconnect()
                        EntityNotifierRetroScreech:Disconnect()
		end
	end,
})
local Toggle = Section:AddToggle("Interact",{
	Text = "Auto Interact",
	Default = false,
	Tooltip = "Auto Interact",
	Callback = function(Value)
		AutoInteract = Value
	end,
})
local Toggle = Section:AddToggle("No",{
	Text = "Noclip",
	Default = false,
	Tooltip = "Noclip",
	Callback = function(Value)
		if Value then
			Clip = false
			task.wait(0.1)
			local function NoclipLoop()
				if Clip == false and game.Players.LocalPlayer.Character ~= nil then
					for _, child in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
						if child:IsA("BasePart") and child.CanCollide == true then
							child.CanCollide = false
						end
					end
				end
			end
			Noclipping = game:GetService("RunService").Stepped:Connect(NoclipLoop)
		else
			if Noclipping then
				Noclipping:Disconnect()
			end
			Clip = true
		end
	end,
})
local Toggle = Section:AddToggle("FB",{
	Text = "FullBright",
	Default = false,
	Tooltip = "FullBright",
	Callback = function(Value)
		if Value then
				game:GetService("Lighting").Brightness = 2
				game:GetService("Lighting").ClockTime = 14
				game:GetService("Lighting").FogEnd = 100000
				game:GetService("Lighting").GlobalShadows = false
				game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(128, 128, 128)
			else
                    game:GetService("Lighting").Brightness = 1
				game:GetService("Lighting").ClockTime = 14
				game:GetService("Lighting").FogEnd = 300
				game:GetService("Lighting").GlobalShadows = true
				game:GetService("Lighting").OutdoorAmbient = Color3.fromRGB(256,256,256)
              end
	end,
})
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.MSHNL then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Chandelier") then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Chandelier:Destroy();end end end);end);game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.MSHNL then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Light_Fixtures") then game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets").Light_Fixtures:Destroy();end end end);end)
Section:AddToggle("Nlight",{
Text = "No Light",
Default = false,
Tooltip = "No Light",
Callback = function(NL)
_G.MSHNL = NL
end
})
function sFLY(vfly)
	repeat task.wait() until game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	repeat task.wait() until game:GetService("Players").LocalPlayer:GetMouse()
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end

	local T = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local SPEED = 0

	local function FLY()
		FLYING = true
		local BG = Instance.new('BodyGyro')
		local BV = Instance.new('BodyVelocity')
		BG.P = 9e4
		BG.Parent = T
		BV.Parent = T
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		task.spawn(function()
			repeat task.wait()
				if not vfly and game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
					game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = true
				end
				if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
					SPEED = 50
				elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
					SPEED = 0
				end
				if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
				elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
					BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				else
					BV.velocity = Vector3.new(0, 0, 0)
				end
				BG.cframe = workspace.CurrentCamera.CoordinateFrame
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()
			if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
				game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
			end
		end)
	end
	flyKeyDown = game:GetService("Players").LocalPlayer:GetMouse().KeyDown:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 's' then
			CONTROL.B = - (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 'a' then
			CONTROL.L = - (vfly and FlySpeed or FlySpeed)
		elseif KEY:lower() == 'd' then 
			CONTROL.R = (vfly and FlySpeed or FlySpeed)
		elseif true and KEY:lower() == 'e' then
			CONTROL.Q = (vfly and FlySpeed or FlySpeed)*2
		elseif true and KEY:lower() == 'q' then
			CONTROL.E = -(vfly and FlySpeed or FlySpeed)*2
		end
		pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Track end)
	end)
	flyKeyUp = game:GetService("Players").LocalPlayer:GetMouse().KeyUp:Connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		elseif KEY:lower() == 'e' then
			CONTROL.Q = 0
		elseif KEY:lower() == 'q' then
			CONTROL.E = 0
		end
	end)
	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect() flyKeyUp:Disconnect() end
	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid') then
		game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid').PlatformStand = false
	end
	pcall(function() workspace.CurrentCamera.CameraType = Enum.CameraType.Custom end)
end

local Toggle = Section:AddToggle("Fly",{
	Text = "Fly [PC Only]",
	Default = false,
	Toopltip = "Fly [PC only]",
	Callback = function(Value)
		if Value then
			NOFLY()
			task.wait()
			sFLY()
		else
			NOFLY()
		end
	end,
})
local Button = Section:AddToggle("Gm",{
	Text = "GodMode",
        Default = false,
	Tooltip = "Anti Ambush/Rush Died",
	Callback = function(GM)
 if GM then
 local Collison = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
Collison.Position = Collison.Position - Vector3.new(0,7.5,0)
else
local Collison = game.Players.LocalPlayer.Character:FindFirstChild("Collision")
Collison.Position = Collison.Position - Vector3.new(0,-7.5,0)
   end
end
})
local Button = Section:AddButton({
	Text = "Delete Messages",
	Func = function()
		for _, v in pairs(workspace:GetChildren()) do
			if v:IsA("Message") then
				v:Destroy()
			end
		end
	end,
})
Section:AddButton({
Text="Walk Fly Ui Toggle [Mobile Only]",
Tooltip="You is Pc? No on ok Bro",
Func=function()loadstring(game:HttpGet("https://raw.githubusercontent.com/LuckyEvaletion/Scripts-1/main/Mobile.Fly"))()
end
})
local Section = Tab:AddRightGroupbox("Sliders")

local Slider = Section:AddSlider("MySlider",{
	Text = "Walk Speed",
	Min = 16,
	Max = 21,
	Default = 16,
	Tooltip = "WalkSpeed",
	Rounding=0,
	Compact=true,
	Callback = function(Value)
		Speed = Value
	end,
})
local Slider = Section:AddSlider("MySlider",{
	Text = "Fly Speed",
	Min = 0.1,
	Max = 0.4,
	Default = 0.1,
	Tooltip = "FlySpeed",
	Rounding=1,
	Compact=true,
	Callback = function(Value)
		FlySpeed = Value
	end,
})

local Slider = Section:AddSlider("MySlider",{
	Text = "JumpPower",
	Min = 25,
	Max = 50,
	Default = 25,
	Tooltip = "JumpPower",
	Rounding=0,
        Compact=true,
	Callback = function(Value)
		JumpPower = Value
	end,
})


local Slider = Section:AddSlider("MySlider",{
	Text = "Field Of View",
	Min = 70,
	Max = 120,
	Default = 70,
	Flag = "FOV",
	Rounding=0,
        Compact=true,
	Callback = function(Value)
		FOV = Value
	end,
})
game:GetService("RunService").RenderStepped:Connect(function()
	workspace.CurrentCamera.FieldOfView = FOV
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpPower
end)
local Tab2 = Window:AddTab("Bypass")
local Section = Tab2:AddLeftGroupbox("Bypass Mode")
local Toggle = Section:AddToggle("Nos",{
	Text = "Bypass Retro Screech",
	Default = false,
	Tooltip = "BypassScreech",
	Callback = function(Value)
		if Value then
			game:GetService("ReplicatedStorage").Entities.ScreechRetro.Name = "Screechretro"
		else
			game:GetService("ReplicatedStorage").Entities.Screechretro.Name = "ScreechRetro"
		end
	end,
})
local Toggle = Section:AddToggle("Nos",{
	Text = "Bypass Screech",
	Default = false,
	Tooltip = "BypassScreech",
	Callback = function(Value)
		if Value then
			game:GetService("ReplicatedStorage").Entities.Screech:Destroy()
                        else
                        game:GetService("Workspace").Entities.Screech:Destroy()
		end
	end,
})
local Toggle = Section:AddToggle("BK",{
	Text = "Bypass Lava",
	Default = false,
	Tooltip = "BypassKillbricks",
	Callback = function(Value)
		if Value then
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = false
						end
					end
				end
			end
			killBricks = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = false
						end
					end
				end
			end)
		else
			killBricks:Disconnect()
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child then
					for _, v in pairs(child:GetDescendants()) do
						if v.Name == "Lava" then
							v.CanTouch = true
						end
					end
				end
			end
		end
	end,
})

local Toggle = Section:AddToggle("Beyes",{
	Text = "Bypass Eyes",
	Default = false,
	Tooltip = "BypassEyes",
	Callback = function(Value)
		if Value then
			Eyes = game:GetService("RunService").RenderStepped:Connect(function()
				game:GetService("ReplicatedStorage").RemotesFolder.MotorReplication:FireServer(0, 90, 0, false)
			end)
		else
			Eyes:Disconnect()
		end
	end,
})
local Toggle = Section:AddToggle("BS",{
	Text = "Bypass SeekWall",
	Default = false,
	Tooltip = "BypassSeek",
	Callback = function(Value)
		if Value then
			for _, child in pairs(workspace.CurrentRooms:GetChildren()) do
				if child.Parts:FindFirstChild("ScaryWall") then
					child.Parts.ScaryWall:Destroy()
				end
			end
			SeekWall = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Parts:FindFirstChild("ScaryWall") then
					child.Parts.ScaryWall:Destroy()
				end
			end)
		else
			SeekWall:Disconnect()
		end
	end,
})

local Toggle = Section:AddToggle("BD",{
	Text = "Bypass DrakoBloxxers",
	Default = false,
	Tooltip = "BypassDrakoBloxxers",
	Callback = function(Value)
		if Value then
			DrakoBloxxers = workspace.ChildAdded:Connect(function(child)
				task.wait(1)
				if child.Name == "Drakobloxxer" then
					child:Destroy()
					for _, v in pairs(workspace:GetChildren()) do
						if v.Name == "Sound" and v:IsA("Sound") then
							v:Destroy()
						end
					end
				end
			end)
		else
			DrakoBloxxers:Disconnect()
		end
	end,
})
game:GetService("Workspace").DescendantAdded:Connect(function(v186)if  not _G.antibanananana then return;end if v186.IsA(v186,"Part") then if _G.antibanananana then if (v186.Name=="BananaPeel") then v186.CanTouch=false;end end end end);Section:AddToggle("MyToggle",{Text="Bypass Banana",Default=false,Tooltip="Anti BananaPeel!",Callback=function(v187)local v188=0;while true do if (v188==(0 + 0)) then _G.antibanananana=v187;if (_G.antibanananana==true) then for v600,v601 in pairs(game:GetService("Workspace"):GetDescendants()) do if v601:IsA("Part") then if (v601.Name=="BananaPeel") then v601.CanTouch=false;end end end end break;end end end});game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.antije then for v413,v414 in pairs(game.workspace:GetChildren()) do if (v414.Name=="JeffTheKiller") then v414.Knife.CanTouch=false;end end for v415,v416 in pairs(game.workspace:GetChildren()) do if (v416.Name=="JeffTheKiller") then v416.Head.CanTouch=false;end end for v417,v418 in pairs(game.workspace:GetChildren()) do if (v418.Name=="JeffTheKiller") then v418.HumanoidRootPart.CanTouch=false;end end for v419,v420 in pairs(game.workspace:GetChildren()) do if (v420.Name=="JeffTheKiller") then v420["Left Arm"].CanTouch=false;end end for v421,v422 in pairs(game.workspace:GetChildren()) do if (v422.Name=="JeffTheKiller") then v422["Left Leg"].CanTouch=false;end end for v423,v424 in pairs(game.workspace:GetChildren()) do if (v424.Name=="JeffTheKiller") then v424["Right Arm"].CanTouch=false;end end for v425,v426 in pairs(game.workspace:GetChildren()) do if (v426.Name=="JeffTheKiller") then v426["Right Leg"].CanTouch=false;end end for v427,v428 in pairs(game.workspace:GetChildren()) do if (v428.Name=="JeffTheKiller") then v428.Torso.CanTouch=false;end end end end);end);Section:AddToggle("MyToggle",{Text="Bypass Jeff",Default=false,Tooltip="Anti Jeff!",Callback=function(v189)_G.antije=v189;end});
Section:AddToggle("nsc",{Text="Bypass Trigger",Default=false,Callback=function(v119)v16.noseek=v119;if v119 then local v279;v279=workspace.CurrentRooms.ChildAdded:Connect(function(v333)local v334=0 -0 ;local v335;while true do if (v334==(0 + 0)) then v335=v333:WaitForChild("TriggerEventCollision",2);if v335 then v335:Destroy();end break;end end end);repeat task.wait();until  not v16.noseek v279:Disconnect();end end});
Section:AddToggle("MyToggle",{Text="Bypass Halt",Default=false,Tooltip="Anti Halt",Callback=function(v122)local v123=0;while true do if (v123==(1480 -(641 + 839))) then _G.BypassHalte=v122;if (_G.BypassHalte==true) then local v472=913 -(910 + 3) ;local v473;while true do if (v472==(0 -0)) then v473=game:GetService("ReplicatedStorage").ClientModules.EntityModules.Shade;v473.Parent=game.Workspace;break;end end elseif (_G.BypassHalte==false) then local v642=1684 -(1466 + 218) ;local v643;while true do if (v642==(0 + 0)) then v643=game.Workspace.Shade;v643.Parent=game:GetService("ReplicatedStorage").ClientModules.EntityModules;break;end end end break;end end end});
Section:AddToggle("MyToggle",{Text="Bypass Dupe",Default=false,Tooltip="Anti Dupe",Callback=function(v128)v16.nodupe=v128;if v128 then local v288;v288=game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Connect(function()task.wait();for v397,v398 in pairs(game:GetService("Workspace").CurrentRooms:GetDescendants()) do if (v398.Name=="DoorFake") then v398.Hidden.CanTouch=false;end end repeat task.wait();until  not v16.nodupe v288:Disconnect();end);end end});
local v48=game.ReplicatedStorage:WaitForChild("EntityInfo"):WaitForChild("A90");Section:AddToggle("MyToggle",{Text="Bypass A90",Default=false,Tooltip="Bypass A-90 Use In The Rooms",Callback=function(v130)v16.noa90=v130;if v130 then local v289=0 + 0 ;local v290;while true do if (v289==(1477 -(29 + 1448))) then v290=v12.PlayerGui:WaitForChild("MainUI"):WaitForChild("Jumpscare"):FindFirstChild("Jumpscare_A90");if v290 then v290.Parent=nil;v48.Parent=nil;repeat task.wait();game.SoundService.Main.Volume=1390 -(135 + 1254) ;until  not v16.noa90 v290.Parent=v12.PlayerGui.MainUI.Jumpscare;v48.Parent=v15;end break;end end end end});
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.bypassSnare then for v399,v400 in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v400.Name=="Snare") then v400.Hitbox['TouchInterest']:Destroy();end end end end);end);Section:AddToggle("MyToggle",{Text="Bypass Trap",Default=false,Tooltip="Anti Snare",Callback=function(v132)_G.bypassSnare=v132;end});
game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.SeekESe then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("Seek_Arm") then for v528,v529 in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v529.Name=="Seek_Arm") then v529.AnimatorPart.CanTouch=false;end end end end end);end);game:GetService("RunService").RenderStepped:Connect(function()pcall(function()if _G.SeekES then if game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):FindFirstChild("ChandelierObstruction") then for v530,v531 in pairs(game.workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Assets"):GetChildren()) do if (v531.Name=="ChandelierObstruction") then v531.HurtPart.CanTouch=false;end end end end end);end);Section:AddToggle("MyToggle",{Text="Bypass Arms",Default=false,Tooltip="Remove Seek Arms HitBox From Seek Chase",Callback=function(v111)_G.SeekESe=v111;end})
Section:AddToggle("MyToggle",{Text="Bypass Fire",Default=false,Tooltip="Remove Fire Damage From Seek Chase",Callback=function(v112)_G.SeekES=v112;end})
local Tab2 = Window:AddTab("ESP")
local Section4 = Tab2:AddLeftGroupbox("Toggles")

local Toggle = Section4:AddToggle("Kesp",{
	Text = "Key ESP",
	Default = false,
	Tooltip = "KeyESP",
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KeyObtain" and v:IsA("Model") then
					selection(v, "[Key]")
					spawn(function()
						while task.wait() do
							if checkDistance(v:FindFirstChildWhichIsA("BasePart")) and AutoInteract then
								fireproximityprompt(v.ModulePrompt)
							end
						end
					end)
				end
			end
			KeyESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
					if v.Name == "KeyObtain" and v:IsA("Model") then
						selection(v, "[Key]")
						spawn(function()
							while task.wait() do
								if checkDistance(v:FindFirstChildWhichIsA("BasePart")) and AutoInteract then
									fireproximityprompt(v.ModulePrompt)
								end
							end
						end)
					end
				end
			end)
		else
			KeyESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight" then
					v:Destroy()
				end
			end
		end
	end,
})

local Toggle = Section4:AddToggle("Desp",{
	Text = "Door ESP",
	Default = false,
	Tooltip = "DoorESP",
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "Door" and v:IsA("Model") then
					selection(v, "[Door]", true)
					spawn(function()
						while task.wait() do
							if checkDistance(v:FindFirstChild("Hidden")) and AutoInteract then
								fireproximityprompt(v.ActivateEventPrompt)
							end
						end
					end)
				end
			end
			DoorESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
					if v.Name == "Door" and v:IsA("Model") then
						selection(v, "[Door]", true)
						spawn(function()
							while task.wait() do
								if checkDistance(v:FindFirstChild("Hidden")) and AutoInteract then
									fireproximityprompt(v.ActivateEventPrompt)
								end
							end
						end)
					end
				end
			end)
		else
			DoorESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight_2" then
					v:Destroy()
				end
			end
		end
	end,
})

local Toggle = Section4:AddToggle("Cesp",{
	Text = "Closet ESP",
	Default = false,
	Tooltip = "ClosetESP",
	Callback = function(Value)
		if Value then
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "RetroWardrobe" and v:IsA("Model") then
					selection(v, "[Wardrobe]", false, true)
				end
			end
			ClosetESP = workspace.CurrentRooms.ChildAdded:Connect(function(child)
				task.wait(1)
				for _, v in pairs(child:GetDescendants()) do
					if v.Name == "RetroWardrobe" and v:IsA("Model") then
						selection(v, "[Wardrobe]", false, true)
					end
				end
			end)
		else
			ClosetESP:Disconnect()
			for _, v in pairs(workspace.CurrentRooms:GetDescendants()) do
				if v.Name == "KiwiHighlight_3" then
					v:Destroy()
				end
			end
		end
	end,
})

local Toggle = Section4:AddToggle("Eesp",{
	Text = "Entity ESP",
	Default = false,
	Tooltip = "EntityESP",
	Callback = function(Value)
		EntityEsp = Value
	end,
})
