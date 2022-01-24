if game.Players.LocalPlayer.PlayerGui:FindFirstChild("ClientPlayerUI") then
game.Players.LocalPlayer.PlayerGui:FindFirstChild("ClientPlayerUI"):Destroy()
print("Reloading UI!")
game.StarterGui:SetCore('SendNotification',
	{
		Title = "Client Audio Player",
		Text = "Reloading UI? - grifin",
		Duration = 2,
	}
)
else
print("Loading UI now!")
game.StarterGui:SetCore('SendNotification',
	{
		Title = "Client Audio Player",
		Text = "Loading UI? - grifin",
		Duration = 2,
	}
)
end
local ClientPlayerUI = Instance.new("ScreenGui")
local Body = Instance.new("Frame")
local FillerBody = Instance.new("Frame")
local AudioId = Instance.new("TextBox")
local UICorner = Instance.new("UICorner")
local PauseButton = Instance.new("TextButton")
local PlayButton = Instance.new("TextButton")
local Miscellaneous = Instance.new("TextLabel")
local MuteAudios = Instance.new("TextLabel")
local Mute = Instance.new("TextButton")
local Unmute = Instance.new("TextButton")
local TimeStamp = Instance.new("TextLabel")
local Destroy = Instance.new("TextButton")
local Visual = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Visual1 = Instance.new("Frame")
local Visual2 = Instance.new("Frame")
local Visual3 = Instance.new("Frame")
local Visual4 = Instance.new("Frame")
local Visual5 = Instance.new("Frame")
local Visual6 = Instance.new("Frame")
local Visual7 = Instance.new("Frame")
local Visual8 = Instance.new("Frame")
local Visual9 = Instance.new("Frame")
local Visual10 = Instance.new("Frame")
local Visual11 = Instance.new("Frame")
local Visual12 = Instance.new("Frame")
local Visual13 = Instance.new("Frame")
local Visual14 = Instance.new("Frame")
local Visual15 = Instance.new("Frame")
local Visual16 = Instance.new("Frame")
local Visual17 = Instance.new("Frame")
local Visual18 = Instance.new("Frame")
local Visual19 = Instance.new("Frame")
local Visual20 = Instance.new("Frame")
local Visual21 = Instance.new("Frame")
local Sensitivity = Instance.new("TextBox")
local SenseSet = Instance.new("TextLabel")
local AudioSettings = Instance.new("TextLabel")
local VolumeSet = Instance.new("TextBox")
local PitchSet = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local Minimizer = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local MyProfile = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
ClientPlayerUI.Name = "ClientPlayerUI"
ClientPlayerUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ClientPlayerUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ClientPlayerUI.ResetOnSpawn = false
Body.Name = "Body"
Body.Parent = ClientPlayerUI
Body.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Body.Position = UDim2.new(0.01, 0,0.64, 0)
Body.Size = UDim2.new(0, 235, 0, 290)
FillerBody.Name = "FillerBody"
FillerBody.Parent = Body
FillerBody.AnchorPoint = Vector2.new(0.5, 0.5)
FillerBody.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
FillerBody.ClipsDescendants = true
FillerBody.Position = UDim2.new(0.5, 0, 0.5, 0)
FillerBody.Size = UDim2.new(0, 235, 0, 290)
AudioId.Name = "AudioId"
AudioId.Parent = FillerBody
AudioId.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
AudioId.BorderColor3 = Color3.fromRGB(164, 154, 230)
AudioId.Position = UDim2.new(0, 60, 0, 10)
AudioId.Size = UDim2.new(0, 165, 0, 40)
AudioId.Font = Enum.Font.SourceSans
AudioId.PlaceholderColor3 = Color3.fromRGB(164, 154, 230)
AudioId.PlaceholderText = "Audio ID Here"
AudioId.Text = ""
AudioId.TextColor3 = Color3.fromRGB(164, 154, 230)
AudioId.TextSize = 20.000
UICorner.Parent = FillerBody
PauseButton.Name = "PauseButton"
PauseButton.Parent = FillerBody
PauseButton.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
PauseButton.BorderColor3 = Color3.fromRGB(164, 154, 230)
PauseButton.Position = UDim2.new(0, 75, 0, 60)
PauseButton.Size = UDim2.new(0, 55, 0, 35)
PauseButton.Font = Enum.Font.SourceSans
PauseButton.Text = "Pause"
PauseButton.TextColor3 = Color3.fromRGB(164, 154, 230)
PauseButton.TextSize = 20.000
PlayButton.Name = "PlayButton"
PlayButton.Parent = FillerBody
PlayButton.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
PlayButton.BorderColor3 = Color3.fromRGB(164, 154, 230)
PlayButton.Position = UDim2.new(0, 155, 0, 60)
PlayButton.Size = UDim2.new(0, 55, 0, 35)
PlayButton.Font = Enum.Font.SourceSans
PlayButton.Text = "Play"
PlayButton.TextColor3 = Color3.fromRGB(164, 154, 230)
PlayButton.TextSize = 20.000
Miscellaneous.Name = "Miscellaneous"
Miscellaneous.Parent = FillerBody
Miscellaneous.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
Miscellaneous.BorderColor3 = Color3.fromRGB(164, 154, 230)
Miscellaneous.Position = UDim2.new(0.0212765951, 0, 0.362068951, 0)
Miscellaneous.Size = UDim2.new(0, 115, 0, 145)
Miscellaneous.Font = Enum.Font.SourceSans
Miscellaneous.Text = "Miscellaneous"
Miscellaneous.TextColor3 = Color3.fromRGB(164, 154, 230)
Miscellaneous.TextSize = 20.000
Miscellaneous.TextYAlignment = Enum.TextYAlignment.Top
MuteAudios.Name = "MuteAudios"
MuteAudios.Parent = FillerBody
MuteAudios.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
MuteAudios.BorderColor3 = Color3.fromRGB(164, 154, 230)
MuteAudios.Position = UDim2.new(0.0212765951, 0, 0.441379309, 0)
MuteAudios.Size = UDim2.new(0, 115, 0, 76)
MuteAudios.Font = Enum.Font.SourceSans
MuteAudios.Text = "Mute Audios"
MuteAudios.TextColor3 = Color3.fromRGB(164, 154, 230)
MuteAudios.TextSize = 16.000
MuteAudios.TextYAlignment = Enum.TextYAlignment.Top
Mute.Name = "Mute"
Mute.Parent = FillerBody
Mute.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
Mute.BorderColor3 = Color3.fromRGB(164, 154, 230)
Mute.Position = UDim2.new(0, 65, 0, 148)
Mute.Size = UDim2.new(0, 50, 0, 50)
Mute.Font = Enum.Font.SourceSans
Mute.Text = "Mute"
Mute.TextColor3 = Color3.fromRGB(164, 154, 230)
Mute.TextSize = 14.000
Unmute.Name = "Unmute"
Unmute.Parent = FillerBody
Unmute.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
Unmute.BorderColor3 = Color3.fromRGB(164, 154, 230)
Unmute.Position = UDim2.new(0, 10, 0, 148)
Unmute.Size = UDim2.new(0, 50, 0, 50)
Unmute.Font = Enum.Font.SourceSans
Unmute.Text = "Unmute"
Unmute.TextColor3 = Color3.fromRGB(164, 154, 230)
Unmute.TextSize = 14.000
TimeStamp.Name = "TimeStamp"
TimeStamp.Parent = FillerBody
TimeStamp.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
TimeStamp.BorderColor3 = Color3.fromRGB(164, 154, 230)
TimeStamp.Position = UDim2.new(0.382978737, 0, 0.879310369, 0)
TimeStamp.Size = UDim2.new(0, 140, 0, 30)
TimeStamp.Font = Enum.Font.SourceSans
TimeStamp.Text = "TIMESTAMPHERE"
TimeStamp.TextColor3 = Color3.fromRGB(164, 154, 230)
TimeStamp.TextSize = 15.000
Destroy.Name = "Destroy"
Destroy.Parent = FillerBody
Destroy.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
Destroy.BorderColor3 = Color3.fromRGB(210, 60, 65)
Destroy.Position = UDim2.new(0.0212765951, 0, 0.913793027, 0)
Destroy.Size = UDim2.new(0, 80, 0, 20)
Destroy.Font = Enum.Font.SourceSans
Destroy.Text = "Destroy"
Destroy.TextColor3 = Color3.fromRGB(210, 60, 65)
Destroy.TextSize = 15.000
Destroy.TextWrapped = true
Visual.Name = "Visual"
Visual.Parent = FillerBody
Visual.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual.Position = UDim2.new(0.53191489, 0, 0.637931049, 0)
Visual.Size = UDim2.new(0, 105, 0, 65)
UIListLayout.Parent = Visual
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
Visual1.Name = "Visual1"
Visual1.Parent = Visual
Visual1.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual1.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual1.Size = UDim2.new(0, 5, 0, 2)
Visual2.Name = "Visual2"
Visual2.Parent = Visual
Visual2.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual2.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual2.Size = UDim2.new(0, 5, 0, 2)
Visual3.Name = "Visual3"
Visual3.Parent = Visual
Visual3.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual3.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual3.Size = UDim2.new(0, 5, 0, 2)
Visual4.Name = "Visual4"
Visual4.Parent = Visual
Visual4.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual4.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual4.Size = UDim2.new(0, 5, 0, 2)
Visual5.Name = "Visual5"
Visual5.Parent = Visual
Visual5.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual5.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual5.Size = UDim2.new(0, 5, 0, 2)
Visual6.Name = "Visual6"
Visual6.Parent = Visual
Visual6.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual6.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual6.Size = UDim2.new(0, 5, 0, 2)
Visual7.Name = "Visual7"
Visual7.Parent = Visual
Visual7.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual7.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual7.Size = UDim2.new(0, 5, 0, 2)
Visual8.Name = "Visual8"
Visual8.Parent = Visual
Visual8.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual8.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual8.Size = UDim2.new(0, 5, 0, 2)
Visual9.Name = "Visual9"
Visual9.Parent = Visual
Visual9.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual9.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual9.Size = UDim2.new(0, 5, 0, 2)
Visual10.Name = "Visual10"
Visual10.Parent = Visual
Visual10.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual10.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual10.Size = UDim2.new(0, 5, 0, 2)
Visual11.Name = "Visual11"
Visual11.Parent = Visual
Visual11.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual11.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual11.Size = UDim2.new(0, 5, 0, 2)
Visual12.Name = "Visual12"
Visual12.Parent = Visual
Visual12.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual12.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual12.Size = UDim2.new(0, 5, 0, 2)
Visual13.Name = "Visual13"
Visual13.Parent = Visual
Visual13.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual13.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual13.Size = UDim2.new(0, 5, 0, 2)
Visual14.Name = "Visual14"
Visual14.Parent = Visual
Visual14.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual14.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual14.Size = UDim2.new(0, 5, 0, 2)
Visual15.Name = "Visual15"
Visual15.Parent = Visual
Visual15.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual15.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual15.Size = UDim2.new(0, 5, 0, 2)
Visual16.Name = "Visual16"
Visual16.Parent = Visual
Visual16.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual16.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual16.Size = UDim2.new(0, 5, 0, 2)
Visual17.Name = "Visual17"
Visual17.Parent = Visual
Visual17.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual17.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual17.Size = UDim2.new(0, 5, 0, 2)
Visual18.Name = "Visual18"
Visual18.Parent = Visual
Visual18.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual18.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual18.Size = UDim2.new(0, 5, 0, 2)
Visual19.Name = "Visual19"
Visual19.Parent = Visual
Visual19.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual19.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual19.Size = UDim2.new(0, 5, 0, 2)
Visual20.Name = "Visual20"
Visual20.Parent = Visual
Visual20.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual20.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual20.Size = UDim2.new(0, 5, 0, 2)
Visual21.Name = "Visual21"
Visual21.Parent = Visual
Visual21.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Visual21.BorderColor3 = Color3.fromRGB(164, 154, 230)
Visual21.Size = UDim2.new(0, 5, 0, 2)
Sensitivity.Name = "Sensitivity"
Sensitivity.Parent = FillerBody
Sensitivity.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
Sensitivity.BorderColor3 = Color3.fromRGB(164, 154, 230)
Sensitivity.Position = UDim2.new(0.0212765951, 0, 0.775862098, 0)
Sensitivity.Size = UDim2.new(0, 115, 0, 25)
Sensitivity.Font = Enum.Font.SourceSans
Sensitivity.PlaceholderColor3 = Color3.fromRGB(164, 154, 230)
Sensitivity.PlaceholderText = "Vis Sense (0.1)"
Sensitivity.Text = ""
Sensitivity.TextColor3 = Color3.fromRGB(164, 154, 230)
Sensitivity.TextSize = 14.000
SenseSet.Name = "SenseSet"
SenseSet.Parent = FillerBody
SenseSet.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
SenseSet.BorderColor3 = Color3.fromRGB(164, 154, 230)
SenseSet.Position = UDim2.new(0.0212765951, 0, 0.703448296, 0)
SenseSet.Size = UDim2.new(0, 115, 0, 21)
SenseSet.Font = Enum.Font.SourceSans
SenseSet.Text = "Set 0.1-0"
SenseSet.TextColor3 = Color3.fromRGB(164, 154, 230)
SenseSet.TextSize = 18.000
AudioSettings.Name = "AudioSettings"
AudioSettings.Parent = FillerBody
AudioSettings.BackgroundColor3 = Color3.fromRGB(44, 47, 51)
AudioSettings.BorderColor3 = Color3.fromRGB(164, 154, 230)
AudioSettings.Position = UDim2.new(0.53191489, 0, 0.362068951, 0)
AudioSettings.Size = UDim2.new(0, 105, 0, 23)
AudioSettings.Font = Enum.Font.SourceSans
AudioSettings.Text = "Audio Settings"
AudioSettings.TextColor3 = Color3.fromRGB(164, 154, 230)
AudioSettings.TextSize = 20.000
VolumeSet.Name = "VolumeSet"
VolumeSet.Parent = FillerBody
VolumeSet.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
VolumeSet.BorderColor3 = Color3.fromRGB(164, 154, 230)
VolumeSet.Position = UDim2.new(0.53191489, 0, 0.441379309, 0)
VolumeSet.Size = UDim2.new(0, 105, 0, 25)
VolumeSet.Font = Enum.Font.SourceSans
VolumeSet.PlaceholderColor3 = Color3.fromRGB(164, 154, 230)
VolumeSet.PlaceholderText = "Volume (1)"
VolumeSet.Text = ""
VolumeSet.TextColor3 = Color3.fromRGB(164, 154, 230)
VolumeSet.TextSize = 14.000
PitchSet.Name = "PitchSet"
PitchSet.Parent = FillerBody
PitchSet.BackgroundColor3 = Color3.fromRGB(42, 45, 47)
PitchSet.BorderColor3 = Color3.fromRGB(164, 154, 230)
PitchSet.Position = UDim2.new(0.53191489, 0, 0.527586162, 0)
PitchSet.Size = UDim2.new(0, 105, 0, 25)
PitchSet.Font = Enum.Font.SourceSans
PitchSet.PlaceholderColor3 = Color3.fromRGB(164, 154, 230)
PitchSet.PlaceholderText = "Speed (1)"
PitchSet.Text = ""
PitchSet.TextColor3 = Color3.fromRGB(164, 154, 230)
PitchSet.TextSize = 14.000
TextLabel.Parent = FillerBody
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0212765951, 0, 0.172413796, 0)
TextLabel.Size = UDim2.new(0, 27, 0, 18)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "grifin"
TextLabel.TextColor3 = Color3.fromRGB(164, 154, 230)
TextLabel.TextSize = 14.000
TextLabel.TextTransparency = 0.700
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top
Minimizer.Name = "Minimizer"
Minimizer.Parent = Body
Minimizer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Minimizer.BackgroundTransparency = 1.000
Minimizer.Position = UDim2.new(0, 5, 0, 5)
Minimizer.Size = UDim2.new(0, 45, 0, 45)
Minimizer.Font = Enum.Font.SourceSans
Minimizer.Text = ""
Minimizer.TextColor3 = Color3.fromRGB(0, 0, 0)
Minimizer.TextSize = 14.000
UICorner_2.CornerRadius = UDim.new(0, 100)
UICorner_2.Parent = Minimizer
MyProfile.Name = "MyProfile"
MyProfile.Parent = Body
MyProfile.BackgroundColor3 = Color3.fromRGB(164, 154, 230)
MyProfile.BackgroundTransparency = 0.500
MyProfile.Position = UDim2.new(0, 5, 0, 5)
MyProfile.Size = UDim2.new(0, 45, 0, 45)
MyProfile.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
UICorner_3.CornerRadius = UDim.new(0, 100)
UICorner_3.Parent = MyProfile
UICorner_4.Parent = Body

_G.Paused = false
_G.Muted = false

local ClientAudio = Instance.new("Sound")
ClientAudio.Archivable = true 
ClientAudio.Parent = FillerBody
ClientAudio.Pitch = 1 
ClientAudio.Volume = 1 
ClientAudio.Looped = true 
ClientAudio.Name = "ClientAudio"
game.StarterGui:SetCore('SendNotification',
	{
		Title = "Client Audio Player",
		Text = "Successfully Loaded UI? - grifin",
		Duration = 2,
	}
)
wait()

local function NotificationFire() -- AudioId.NotificationFire 
	local script = Instance.new('LocalScript', AudioId)
	local Audio = script.Parent.Parent.ClientAudio
	while true do
		pcall(function()
			Audio.SoundId = "http://www.roblox.com/asset/?id="..script.Parent.Text
		end)
		wait()
	end
end
coroutine.wrap(NotificationFire)()
local function Pauser() -- PauseButton.Pauser 
	local script = Instance.new('LocalScript', PauseButton)
	script.Parent.MouseButton1Down:Connect(function()
		script.Parent.Parent.ClientAudio:Pause()
		_G.Paused = true
		script.Parent.Parent.PlayButton.Text = "Resume"
	end)
end
coroutine.wrap(Pauser)()
local function Player() -- PlayButton.Player 
	local script = Instance.new('LocalScript', PlayButton)
	script.Parent.MouseButton1Down:Connect(function()
		if _G.Paused == true then
			script.Parent.Parent.ClientAudio:Resume()
			_G.Paused = false
			script.Parent.Parent.PlayButton.Text = "Play"
		elseif _G.Paused == false then
			script.Parent.Parent.ClientAudio.TimePosition = 0
			script.Parent.Parent.ClientAudio:Play()
			script.Parent.Parent.PlayButton.Text = "Play"
		end
		repeat 
			if script.Parent.Parent.AudioId.Text == "" then
				script.Parent.Parent.ClientAudio.TimePosition = 0
				script.Parent.Parent.PlayButton.Text = "Play"
				script.Parent.Parent.ClientAudio:Pause()
			else
				wait()
			end
			wait()
		until script.Parent.Parent.AudioId.Text == "baba"
	end)
end
coroutine.wrap(Player)()
local function Muter() -- Mute.Muter 
	local script = Instance.new('LocalScript', Mute)
	script.Parent.MouseButton1Down:Connect(function()
		if _G.Muted == false then
			script.Parent.BorderColor3 = Color3.fromRGB(80, 220, 95)
			script.Parent.Text = "Muted"
			_G.Muted = true
			print("muting")
			repeat
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("Sound") then
						v.Pause:()
					end
				end
				wait(0.01)
			until _G.Muted == false
		elseif _G.Muted == true then
			wait()
		end
	end)
end
coroutine.wrap(Muter)()
local function Unmuter() -- Unmute.Unmuter 
	local script = Instance.new('LocalScript', Unmute)
	script.Parent.MouseButton1Down:Connect(function()
		if _G.Muted == true then
		script.Parent.Text = "Unmuted"
		script.Parent.Parent.Mute.Text = "Mute"
		script.Parent.Parent.Mute.BorderColor3 = Color3.fromRGB(164, 154, 230)
		script.Parent.BorderColor3 = Color3.fromRGB(210, 60, 65)
		_G.Muted = false
		for i,v in pairs(workspace:GetDescendants()) do
			if v:IsA("Sound") then
				v:Resume()
			end
		end
		print("unmuted")
		wait(1)
		script.Parent.Text = "Unmute"
		script.Parent.BorderColor3 = Color3.fromRGB(164, 154, 230)
		elseif _G.Muted == false then
			wait()
		end
	end)
end
coroutine.wrap(Unmuter)()
local function TimeStampDisplayer() -- TimeStamp.TimeStampDisplayer 
	local script = Instance.new('LocalScript', TimeStamp)
	function Format(Int)
		return string.format("%02i", Int)
	end
	function convert(Seconds)
		local Minutes = (Seconds - Seconds%60)/60
		Seconds = Seconds - Minutes*60
		local Hours = (Minutes - Minutes%60)/60
		Minutes = Minutes - Hours*60
		return Format(Minutes)..":"..Format(Seconds)
	end
	while true do
		script.Parent.Parent.TimeStamp.Text = convert(script.Parent.Parent.ClientAudio.TimePosition).." / "..convert(script.Parent.Parent.ClientAudio.TimeLength)
		wait()
	end
end
coroutine.wrap(TimeStampDisplayer)()
local function Destroyer() -- Destroy.Destroyer 
	local script = Instance.new('LocalScript', Destroy)
	script.Parent.MouseButton1Down:Connect(function()
		game.StarterGui:SetCore('SendNotification',
			{
				Title = "Client Audio Player",
				Text = "Successfully closed UI? - grifin",
				Duration = 5,
			}
		)
		script.Parent.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(Destroyer)()
local function Visualizer() -- Visual.Visualizer 
	local script = Instance.new('LocalScript', Visual)
	while true do
		local success, err = pcall(function()
			for i,g in pairs(script.Parent:GetChildren()) do
				if g:IsA("Frame") then
					if script.Parent.Parent.Sensitivity.Text == "" then
						g.Size = UDim2.new(0,5,0,math.clamp(script.Parent.Parent.ClientAudio.PlaybackLoudness*0.1,1,60))
						wait()
						game:GetService("TweenService"):Create(g,TweenInfo.new(0.6,Enum.EasingStyle.Cubic,Enum.EasingDirection.In,0,false,0),{Size = UDim2.new(0,5,0,4)}):Play()
					else
						g.Size = UDim2.new(0,5,0,math.clamp(script.Parent.Parent.ClientAudio.PlaybackLoudness*script.Parent.Parent.Sensitivity.Text,1,60))
						wait()
						game:GetService("TweenService"):Create(g,TweenInfo.new(0.6,Enum.EasingStyle.Cubic,Enum.EasingDirection.In,0,false,0),{Size = UDim2.new(0,5,0,4)}):Play()	
					end
				end	
			end
		end)
		wait()
	end
end
coroutine.wrap(Visualizer)()
local function VolumeSetter() -- VolumeSet.VolumeSetter 
	local script = Instance.new('LocalScript', VolumeSet)
	while true do
		wait()
		if script.Parent.Text == "" then
			script.Parent.Parent.ClientAudio.Volume = 1
		else
			script.Parent.Parent.ClientAudio.Volume = script.Parent.Text
		end
	end
end
coroutine.wrap(VolumeSetter)()
local function PitchSetter() -- PitchSet.PitchSetter 
	local script = Instance.new('LocalScript', PitchSet)
	while true do
		wait()
		if script.Parent.Text == "" then
			script.Parent.Parent.ClientAudio.Pitch = 1
		else
			script.Parent.Parent.ClientAudio.Pitch	 = script.Parent.Text
		end
	end
end
coroutine.wrap(PitchSetter)()
local function Minimize() -- Minimizer.Minimize 
	local script = Instance.new('LocalScript', Minimizer)
	local closed = false
	script.Parent.MouseButton1Down:Connect(function()
		if closed == false then closed = true
			script.Parent.Parent.FillerBody.Visible = false
			script.Parent.Parent:TweenSize(UDim2.new(0, 55,0, 55), "Out", "Linear", 0.5)
		elseif closed == true then closed = false
			script.Parent.Parent:TweenSize(UDim2.new(0, 235,0, 290), "In", "Linear", 0.5)
			wait(0.5)
			script.Parent.Parent.FillerBody.Visible = true
		end
	end)
end
coroutine.wrap(Minimize)()
local function Pfp() -- MyProfile.Pfp 
	local script = Instance.new('LocalScript', MyProfile)
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer
	local userId = player.UserId	
	local thumbType = Enum.ThumbnailType.HeadShot
	local thumbSize = Enum.ThumbnailSize.Size420x420
	local content, isReady = Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
	local HeadPlace = script.Parent
	HeadPlace.Image = content
end
coroutine.wrap(Pfp)()
local function StarterFunctions() -- Body.StarterFunctions 
local script = Instance.new('LocalScript', Body)

script.Parent.Active = true
local UserInputService = game:GetService("UserInputService")
local gui = script.Parent
local dragging
local dragInput
local dragStart
local startPos
local function update(input)
local delta = input.Position - dragStart
gui.Position = gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), 'Out', 'Linear', 0.35, true); -- drag speed
end
gui.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
dragging = true
dragStart = input.Position
startPos = gui.Position
input.Changed:Connect(function()
if input.UserInputState == Enum.UserInputState.End then
dragging = false
end
end)
end
end)
gui.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)
UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)
end
coroutine.wrap(StarterFunctions)()
