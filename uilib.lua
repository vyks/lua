local Library = {}
function Library:CreateWindow(title)
	title = title or "Ui Library"
	local uilibtut = Instance.new("ScreenGui")
	uilibtut.Name = "uilibtut"
	uilibtut.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	uilibtut.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	uilibtut.ResetOnSpawn = false
	game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
		if not ok then 
			if current.KeyCode.Name == Enum.KeyCode.RightAlt.Name then 
				if uilibtut.Enabled == true then
					uilibtut.Enabled = false
				else
					uilibtut.Enabled = true
				end
			end
		end
	end)

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = uilibtut
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
	Main.BorderColor3 = Color3.fromRGB(216, 222, 233)
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 512, 0, 310)
	Main.Active = true
	Main.Draggable = true
	local function drag() -- Main.MainPropeties 
		local script = Instance.new('LocalScript', Main)
		local UserInputService = game:GetService("UserInputService")
		local runService = (game:GetService("RunService"));
		local gui = script.Parent
		local dragging
		local dragInput
		local dragStart
		local startPos
		function Lerp(a, b, m)
			return a + (b - a) * m
		end
		local lastMousePos
		local lastGoalPos
		local DRAG_SPEED = (8); -- // The speed of the UI darg.
		function Update(dt)
			if not (startPos) then return end;
			if not (dragging) and (lastGoalPos) then
				gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
				return 
			end;
			local delta = (lastMousePos - UserInputService:GetMouseLocation())
			local xGoal = (startPos.X.Offset - delta.X);
			local yGoal = (startPos.Y.Offset - delta.Y);
			lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
		end
		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position
				lastMousePos = UserInputService:GetMouseLocation()
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
		runService.Heartbeat:Connect(Update)
	end
	coroutine.wrap(drag)()

	local tabHolder = Instance.new("Frame")
	tabHolder.Name = "tabHolder"
	tabHolder.Parent = Main
	tabHolder.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	tabHolder.BorderSizePixel = 0
	tabHolder.Position = UDim2.new(0, 0, 0, 25)
	tabHolder.Size = UDim2.new(0, 100, 0, 285)
	
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Parent = tabHolder
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)
	
	local UIPadding = Instance.new("UIPadding")
	UIPadding.Parent = tabHolder
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 5)
	
	local Title = Instance.new("Frame")
	Title.Name = "Title"
	Title.Parent = Main
	Title.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 100, 0, 25)
	Title.BackgroundTransparency = 1.000
	local TitleText = Instance.new("TextLabel")
	TitleText.Name = "TitleText"
	TitleText.Parent = Title
	TitleText.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	TitleText.BackgroundTransparency = 1.000
	TitleText.BorderSizePixel = 0
	TitleText.Position = UDim2.new(0.0556863211, 0, 0, 0)
	TitleText.Size = UDim2.new(0, 95, 0, 25)
	TitleText.Font = Enum.Font.Gotham
	TitleText.Text = title
	TitleText.TextColor3 = Color3.fromRGB(216, 222, 233)
	TitleText.TextSize = 16.000
	TitleText.TextXAlignment = Enum.TextXAlignment.Left

	local Pages = Instance.new("Frame")
	Pages.Name = "Pages"
	Pages.Parent = Main
	Pages.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	Pages.BorderSizePixel = 0
	Pages.Position = UDim2.new(0, 110, 0, 25)
	Pages.Size = UDim2.new(0, 396, 0, 280)

	local PagesFolder = Instance.new("Folder")
	PagesFolder.Name = "PagesFolder"
	PagesFolder.Parent = Pages
	
	
	local TabHandler = {}
	function TabHandler:CreateTab(tabname)
		tabname = tabname or "New Tab"
		local newTab = Instance.new("TextButton")
		newTab.Name = "newTab"
		newTab.Parent = tabHolder
		newTab.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
		newTab.BorderColor3 = Color3.fromRGB(216, 222, 233)
		newTab.Size = UDim2.new(0, 90, 0, 35)
		newTab.Font = Enum.Font.Gotham
		newTab.Text = tabname
		newTab.TextColor3 = Color3.fromRGB(216, 222, 233)
		newTab.TextSize = 12.000
		newTab.BackgroundTransparency = 1.000
		
		local colorTab = Instance.new("Frame")
		colorTab.Name = "colorTab"
		colorTab.Parent = newTab
		colorTab.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
		colorTab.BorderColor3 = Color3.fromRGB(216, 222, 233)
		colorTab.Size = UDim2.new(1, 0, 1, 0)

		local nameTab = Instance.new("TextLabel")
		nameTab.Name = "nameTab"
		nameTab.Parent = newTab
		nameTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		nameTab.BackgroundTransparency = 1.000
		nameTab.Size = UDim2.new(1, 0, 1, 0)
		nameTab.Font = Enum.Font.Gotham
		nameTab.Text = tabname
		nameTab.TextColor3 = Color3.fromRGB(216, 222, 233)
		nameTab.TextSize = 14.000
		
		local newPage = Instance.new("ScrollingFrame")
		newPage.Name = "newPage"
		newPage.Parent = PagesFolder
		newPage.Active = true
		newPage.Visible = false
		newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		newPage.BackgroundTransparency = 1.000
		newPage.BorderSizePixel = 0
		newPage.Size = UDim2.new(1, 0, 1, 0)
		newPage.ScrollBarThickness = 6

		local UiListLayout = Instance.new("UIListLayout")
		UiListLayout.Name = "UiListLayout"
		UiListLayout.Parent = newPage
		UiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UiListLayout.Padding = UDim.new(0, 5)
		
		local UIPadding = Instance.new("UIPadding")
		UIPadding.Parent = newPage
		UIPadding.PaddingTop = UDim.new(0, 5)
		
		newTab.MouseButton1Down:Connect(function()
			for i,v in next, PagesFolder:GetChildren() do
				v.Visible = false
			end
			newPage.Visible = true
			for i,v in next, tabHolder:GetChildren() do
				if v:IsA("TextButton") then
					game.TweenService:Create(v.colorTab, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(61, 64, 71)}):Play()
				end
			end
			game.TweenService:Create(newTab.colorTab, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(70, 100, 180)}):Play()
		end)
		
		local ObjectHandler = {}
		function ObjectHandler:CreateButton(title, func)
			title = title or "Button"
			func = func or function() 
			end
			local newButton = Instance.new("TextButton")
			local pressUpDown = Instance.new("Frame")
			local buttonName = Instance.new("TextLabel")

			newButton.Parent = newPage
			newButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			newButton.BackgroundTransparency = 1.000
			newButton.Position = UDim2.new(0.143939391, 0, 0, 0)
			newButton.Size = UDim2.new(0, 365, 0, 35)
			newButton.Font = Enum.Font.SourceSans
			newButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			newButton.TextSize = 14.000

			pressUpDown.Name = "pressUpDown"
			pressUpDown.Parent = newButton
			pressUpDown.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			pressUpDown.BorderColor3 = Color3.fromRGB(216, 222, 233)
			pressUpDown.Size = UDim2.new(1, 0, 1, 0)

			buttonName.Name = "buttonName"
			buttonName.Parent = newButton
			buttonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			buttonName.BackgroundTransparency = 1.000
			buttonName.Size = UDim2.new(1, 0, 1, 0)
			buttonName.Font = Enum.Font.Gotham
			buttonName.Text = title
			buttonName.TextColor3 = Color3.fromRGB(216, 222, 233)
			buttonName.TextSize = 15.000

			newButton.MouseButton1Click:Connect(function()
				func()
			end)
			newButton.MouseButton1Down:Connect(function()
				game.TweenService:Create(pressUpDown, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {BackgroundColor3 = Color3.fromRGB(70, 100, 180)}):Play()
			end)
			newButton.MouseButton1Up:Connect(function()
				game.TweenService:Create(pressUpDown, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(61, 64, 71)}):Play()
			end)
		end
		
		function ObjectHandler:CreateToggle(desc, timer, func)
			desc = desc or "When toggled shift right and blue"
			func = func or function() end
			timer = timer or nil
			local newToggle = Instance.new("Frame")
			newToggle.Name = "newToggle"
			newToggle.Parent = newPage
			newToggle.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			newToggle.BorderColor3 = Color3.fromRGB(216, 222, 233)
			newToggle.Size = UDim2.new(0, 365, 0, 45)

			local toggleActivate = Instance.new("TextButton")
			toggleActivate.Name = "toggleActivate"
			toggleActivate.Parent = newToggle
			toggleActivate.AnchorPoint = Vector2.new(0, 0.5)
			toggleActivate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			toggleActivate.BackgroundTransparency = 1.000
			toggleActivate.BorderColor3 = Color3.fromRGB(216, 222, 233)
			toggleActivate.Position = UDim2.new(0, 270, 0, 22)
			toggleActivate.Size = UDim2.new(0, 95, 0, 45)
			toggleActivate.Font = Enum.Font.SourceSans
			toggleActivate.Text = ""
			toggleActivate.TextColor3 = Color3.fromRGB(0, 0, 0)
			toggleActivate.TextSize = 14.000

			local decor = Instance.new("Frame")
			decor.Name = "decor"
			decor.Parent = toggleActivate
			decor.AnchorPoint = Vector2.new(0.5, 0.5)
			decor.BackgroundColor3 = Color3.fromRGB(216, 222, 233)
			decor.BorderSizePixel = 0
			decor.Position = UDim2.new(0.5, 0, 0.5, 0)
			decor.Size = UDim2.new(0, 60, 0, 1)

			local colorActive = Instance.new("Frame")
			colorActive.Name = "colorActive"
			colorActive.Parent = toggleActivate
			colorActive.AnchorPoint = Vector2.new(0, 0.5)
			colorActive.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
			colorActive.BorderColor3 = Color3.fromRGB(216, 222, 233)
			colorActive.Position = UDim2.new(0.181, 0, 0.5, 0)
			colorActive.Size = UDim2.new(0, 19, 0, 19)

			local Description = Instance.new("TextLabel")
			Description.Name = "Description"
			Description.Parent = newToggle
			Description.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			Description.BorderColor3 = Color3.fromRGB(216, 222, 233)
			Description.Size = UDim2.new(0, 270, 0, 45)
			Description.Font = Enum.Font.Gotham
			Description.Text = desc
			Description.TextColor3 = Color3.fromRGB(216, 222, 233)
			Description.TextSize = 14.000

			local active = false
			toggleActivate.MouseButton1Down:Connect(function()
				active = not active	
				if active then	
					game.TweenService:Create(colorActive, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(70, 100, 180), Position = UDim2.new(0.617, 0,0.5, 0)}):Play()
				else
					game.TweenService:Create(colorActive, TweenInfo.new(0.35, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(55, 57, 63), Position = UDim2.new(0.181, 0,0.5, 0)}):Play()
				end
			end)
			toggleActivate.MouseButton1Click:Connect(function()
				if active then
					while active == true do
						func()
						wait(timer)
					end
				else
					wait()
				end
			end)
		end

		function ObjectHandler:CreateDropdown(title, items, func)
			title = title or "Dropdown"
			items = items or {}
			func = func or function() end

			local newDropdown = Instance.new("TextButton")
			newDropdown.Name = " newDropdown"
			newDropdown.Parent = newPage
			newDropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			newDropdown.BackgroundTransparency = 1.000
			newDropdown.Size = UDim2.new(0, 365, 0, 35)
			newDropdown.Font = Enum.Font.Gotham
			newDropdown.TextColor3 = Color3.fromRGB(216, 222, 233)
			newDropdown.TextSize = 15.000
			newDropdown.ZIndex = 2


			local dropName = Instance.new("TextLabel")
			dropName.Name = "dropName"
			dropName.Parent = newDropdown
			dropName.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			dropName.BorderColor3 = Color3.fromRGB(216, 222, 233)
			dropName.Size = UDim2.new(1, 0, 1, 0)
			dropName.Font = Enum.Font.Gotham
			dropName.Text = title
			dropName.TextColor3 = Color3.fromRGB(216, 222, 233)
			dropName.TextSize = 15.000

			local decor = Instance.new("TextLabel")
			decor.Name = "decor"
			decor.Parent = newDropdown
			decor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			decor.BackgroundTransparency = 1.000
			decor.Position = UDim2.new(0, 325, 0, 5)
			decor.Rotation = 90.000
			decor.Size = UDim2.new(0, 25, 0, 25)
			decor.Font = Enum.Font.Gotham
			decor.Text = ">"
			decor.TextColor3 = Color3.fromRGB(216, 222, 233)
			decor.TextSize = 25.000

			local bodyDropdown = Instance.new("Frame")
			bodyDropdown.Name = "bodyDropdown"
			bodyDropdown.Parent = newDropdown
			bodyDropdown.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			bodyDropdown.BorderColor3 = Color3.fromRGB(216, 222, 233)
			bodyDropdown.ClipsDescendants = true
			bodyDropdown.Position = UDim2.new(0, 0, 0, 36)
			bodyDropdown.Size = UDim2.new(0, 365, 0, 0)
			bodyDropdown.BackgroundTransparency = 1

			local UIListLayout = Instance.new("UIListLayout")
			UIListLayout.Parent = bodyDropdown
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

			local open = false
			local dropysize = 0
			for i,v in next, items do
				local dropItem = Instance.new("TextButton")
				dropItem.Name = "dropItem"
				dropItem.Parent = bodyDropdown
				dropItem.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				dropItem.BackgroundTransparency = 1.000
				dropItem.Size = UDim2.new(1, 0, 0, 30)
				dropItem.Font = Enum.Font.Gotham
				dropItem.TextColor3 = Color3.fromRGB(216, 222, 233)
				dropItem.TextSize = 14.000
				
				local itemColor = Instance.new("Frame")
				itemColor.Name = "itemColor"
				itemColor.Parent = dropItem
				itemColor.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
				itemColor.BorderSizePixel = 0
				itemColor.Size = UDim2.new(1, 0, 1, 0)

				local itemName = Instance.new("TextLabel")
				itemName.Name = "itemName"
				itemName.Parent = dropItem
				itemName.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
				itemName.BackgroundTransparency = 1.000
				itemName.BorderColor3 = Color3.fromRGB(216, 222, 233)
				itemName.Size = UDim2.new(1, 0, 1, 0)
				itemName.Font = Enum.Font.Gotham
				itemName.Text = v
				itemName.TextColor3 = Color3.fromRGB(216, 222, 233)
				itemName.TextSize = 15.000
				
				dropysize = dropysize + 30
				dropItem.MouseButton1Click:Connect(function()
					game.TweenService:Create(itemColor, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(70, 100, 180)}):Play()
					wait(0.15)
					game.TweenService:Create(itemColor, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(61, 64, 71)}):Play()
					func(v)
					dropName.Text = v
					game.TweenService:Create(bodyDropdown, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.new(0, 365 , 0, 0), BackgroundTransparency = 1}):Play()	
					game.TweenService:Create(decor, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Rotation = 90}):Play()
					open = not open
					game.TweenService:Create(dropName, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(61, 64, 71)}):Play()
				end)
			end
			newDropdown.MouseButton1Click:Connect(function()
				open = not open
				if open then
					game.TweenService:Create(decor, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Rotation = 270}):Play()
					game.TweenService:Create(bodyDropdown, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.new(0, 365 , 0, dropysize), BackgroundTransparency = 0}):Play()
					game.TweenService:Create(dropName, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(70, 100, 180)}):Play()
				else
					game.TweenService:Create(decor, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Rotation = 90}):Play()
					game.TweenService:Create(bodyDropdown, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Size = UDim2.new(0, 365 , 0, 0), BackgroundTransparency = 1}):Play()					
					game.TweenService:Create(dropName, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(61, 64, 71)}):Play()
				end
			end)
		end
		function ObjectHandler:CreateSlider(title, min, max, func)
			title = title or "The slider moves"
			min = min or 1
			max = max or 10
			func = func or function() end
			local newSlider = Instance.new("Frame")
			newSlider.Name = "newSlider"
			newSlider.Parent = newPage
			newSlider.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			newSlider.BorderColor3 = Color3.fromRGB(216, 222, 233)
			newSlider.Position = UDim2.new(0, 0, 0.189189196, 0)
			newSlider.Size = UDim2.new(0, 365, 0, 65)

			local SlideFrame = Instance.new("Frame")
			SlideFrame.Name = "SlideFrame"
			SlideFrame.Parent = newSlider
			SlideFrame.AnchorPoint = Vector2.new(0.5, 0.5)
			SlideFrame.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			SlideFrame.BorderColor3 = Color3.fromRGB(216, 222, 233)
			SlideFrame.Position = UDim2.new(0, 182,0, 45)
			SlideFrame.Size = UDim2.new(0, 245, 0, 10)

			local Dragger = Instance.new("TextButton")
			Dragger.Name = "Dragger"
			Dragger.Parent = SlideFrame
			Dragger.AnchorPoint = Vector2.new(0.5, 0.5)
			Dragger.BackgroundColor3 = Color3.fromRGB(216, 222, 233)
			Dragger.BorderColor3 = Color3.fromRGB(70, 100, 180)
			Dragger.Position = UDim2.new(0, 0, 0, 5)
			Dragger.Size = UDim2.new(0, 16, 0, 16)
			Dragger.Font = Enum.Font.SourceSans
			Dragger.Text = ""
			Dragger.TextColor3 = Color3.fromRGB(0, 0, 0)
			Dragger.TextSize = 14.000
			
			local Slidertxt = Instance.new("TextLabel")
			Slidertxt.Name = "Slidertxt"
			Slidertxt.Parent = newSlider
			Slidertxt.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			Slidertxt.BorderColor3 = Color3.fromRGB(216, 222, 233)
			Slidertxt.Size = UDim2.new(0, 365, 0, 25)
			Slidertxt.Font = Enum.Font.Gotham
			Slidertxt.Text = title
			Slidertxt.TextColor3 = Color3.fromRGB(216, 222, 233)
			Slidertxt.TextSize = 14.000

			local UICorner = Instance.new("UICorner")
			UICorner.CornerRadius = UDim.new(0, 1000)
			UICorner.Parent = Dragger

			local currentnum = Instance.new("TextLabel")
			currentnum.Name = "currentnum"
			currentnum.Parent = Dragger
			currentnum.AnchorPoint = Vector2.new(0.5, 0.5)
			currentnum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			currentnum.BackgroundTransparency = 1.000
			currentnum.BorderColor3 = Color3.fromRGB(27, 42, 53)
			currentnum.Position = UDim2.new(0.5, 0, 1.4375, 0)
			currentnum.Size = UDim2.new(0, 100, 0, 10)
			currentnum.Font = Enum.Font.Gotham
			currentnum.Text = ""
			currentnum.TextColor3 = Color3.fromRGB(216, 222, 233)
			currentnum.TextSize = 12.000
			currentnum.TextTransparency = 1.000

			local decor = Instance.new("Frame")
			decor.Name = "decor"
			decor.Parent = SlideFrame
			decor.AnchorPoint = Vector2.new(0, 0.5)
			decor.BackgroundColor3 = Color3.fromRGB(70, 100, 180)
			decor.BorderSizePixel = 0
			decor.Position = UDim2.new(0, 0, 0.5, 0)
			decor.Size = UDim2.new(0, 0, 0, 10)
			decor.ZIndex = 0

			local drag = false

			local uis = game:GetService("UserInputService")
			Dragger.MouseButton1Down:Connect(function()
				game.TweenService:Create(Dragger, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(70, 100, 180)}):Play()
				game.TweenService:Create(currentnum, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {TextTransparency = 0}):Play()
				drag = true
			end)

			uis.InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					drag = false
					game.TweenService:Create(currentnum, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {TextTransparency = 1}):Play()
					game.TweenService:Create(Dragger, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(216, 222, 233)}):Play()
				end
			end)

			uis.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement then
					if drag == true then
						local location = uis:GetMouseLocation()
						local rpos = location - Dragger.Parent.AbsolutePosition
						local posp = math.clamp(rpos.X/Dragger.Parent.AbsoluteSize.X,0,1)
						local value = math.floor((((tonumber(max) - tonumber(min))/245)*decor.AbsoluteSize.X)+tonumber(min))
						Dragger.Position = UDim2.new(posp,0, 0.5, 0)
						decor.Size = UDim2.new(0, math.clamp(rpos.X, 0, 245), 0, 10)
						Dragger.currentnum.Text = math.round((value/max)*max)
						func(value)
					end
				end
			end)
		end
		function ObjectHandler:CreateBind(func)
			func = func or function() end

			local newBind = Instance.new("Frame")
			newBind.Name = "newBind"
			newBind.Parent = newPage
			newBind.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			newBind.BorderColor3 = Color3.fromRGB(216, 222, 233)
			newBind.Position = UDim2.new(0.0934343413, 0, -0.00900900923, 0)
			newBind.Size = UDim2.new(0, 365, 0, 40)

			local BindButton = Instance.new("TextButton")
			BindButton.Parent = newBind
			BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BindButton.BackgroundTransparency = 1.000
			BindButton.Position = UDim2.new(0.739726007, 0, 0, 0)
			BindButton.Size = UDim2.new(0, 95, 0, 40)
			BindButton.Font = Enum.Font.SourceSans
			BindButton.Text = "LeftControl"
			BindButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			BindButton.TextSize = 14.000

			local BBackground = Instance.new("Frame")
			BBackground.Name = "BBackground"
			BBackground.Parent = BindButton
			BBackground.AnchorPoint = Vector2.new(0.5, 0.5)
			BBackground.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			BBackground.BorderColor3 = Color3.fromRGB(216, 222, 233)
			BBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
			BBackground.Size = UDim2.new(1, 0, 1, 0)

			local BindName = Instance.new("TextLabel")
			BindName.Name = "BindName"
			BindName.Parent = BindButton
			BindName.AnchorPoint = Vector2.new(0.5, 0.5)
			BindName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BindName.BackgroundTransparency = 1.000
			BindName.Position = UDim2.new(0.5, 0, 0.5, 0)
			BindName.Size = UDim2.new(1, 0, 1, 0)
			BindName.Font = Enum.Font.Gotham
			BindName.Text = "LeftControl"
			BindName.TextColor3 = Color3.fromRGB(216, 222, 233)
			BindName.TextSize = 13.000

			local deco = Instance.new("TextLabel")
			deco.Parent = newBind
			deco.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			deco.BorderSizePixel = 0
			deco.Size = UDim2.new(0, 255, 0, 40)
			deco.Font = Enum.Font.Gotham
			deco.Text = "Allows the selection of a keybind"
			deco.TextColor3 = Color3.fromRGB(216, 222, 233)
			deco.TextSize = 14.000
			deco.TextWrapped = true

			local obind = Enum.KeyCode.LeftControl.Name
			BindButton.MouseButton1Click:Connect(function()
				game.TweenService:Create(BBackground, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(216, 222, 233)}):Play()
				game.TweenService:Create(BindName, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(70, 100, 180)}):Play()
				BindButton.BindName.Text = "Waiting..."
				local new, old = game:GetService("UserInputService").InputBegan:Wait()
				if new.KeyCode.Name ~= "Unknown" then
					BindName.Text = new.KeyCode.Name
					obind = new.KeyCode.Name
					game.TweenService:Create(BBackground, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(61, 64, 71)}):Play()
					game.TweenService:Create(BindName, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(216, 222, 233)}):Play()
					if obind == Enum.KeyCode.RightAlt.Name then
						obind = Enum.KeyCode.LeftControl.Name
						game.TweenService:Create(BindName, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(225, 60, 70)}):Play()
						BindName.Text = "No Cross Toggle"
						wait(1)
						BindName.Text = obind
						game.TweenService:Create(BindName, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {TextColor3 = Color3.fromRGB(216, 222, 233)}):Play()
					end
				end
			end)

			game:GetService("UserInputService").InputBegan:connect(function(current)  
				if current.KeyCode.Name == obind then 
					if obind == Enum.KeyCode.RightAlt.Name then
						wait()
					else
						func()
					end
				end
			end)
		end
		function ObjectHandler:CreateTextBox(title, func)
			title = title or "Text entry >"
			func = func or function() end

			local newTextBox = Instance.new("Frame")
			newTextBox.Name = "newTextBox"
			newTextBox.Parent = newPage
			newTextBox.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			newTextBox.BorderColor3 = Color3.fromRGB(216, 222, 233)
			newTextBox.Position = UDim2.new(0.0934343413, 0, -0.00900900923, 0)
			newTextBox.Size = UDim2.new(0, 365, 0, 45)

			local textEntry = Instance.new("TextBox")
			textEntry.Name = "textEntry"
			textEntry.Parent = newTextBox
			textEntry.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			textEntry.BorderColor3 = Color3.fromRGB(216, 222, 233)
			textEntry.Position = UDim2.new(0.520547926, 0, 0, 0)
			textEntry.Size = UDim2.new(0, 175, 0, 45)
			textEntry.Font = Enum.Font.Gotham
			textEntry.PlaceholderColor3 = Color3.fromRGB(70, 100, 180)
			textEntry.PlaceholderText = "Text Here"
			textEntry.Text = ""
			textEntry.TextColor3 = Color3.fromRGB(70, 100, 180)
			textEntry.TextSize = 15.000

			local textTitle = Instance.new("TextLabel")
			textTitle.Name = "textTitle"
			textTitle.Parent = newTextBox
			textTitle.AnchorPoint = Vector2.new(0.5, 0.5)
			textTitle.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
			textTitle.BorderColor3 = Color3.fromRGB(216, 222, 233)
			textTitle.Position = UDim2.new(0.260137022, 0, 0.5, 0)
			textTitle.Size = UDim2.new(0, 190, 0, 45)
			textTitle.Font = Enum.Font.Gotham
			textTitle.Text = title
			textTitle.TextColor3 = Color3.fromRGB(216, 222, 233)
			textTitle.TextSize = 17.000


			textEntry.FocusLost:Connect(function(complete)
				if not complete then	return end
				func(textEntry.Text)
				textTitle.TextSize = 14
				textTitle.Text = title.."\n Old text: "..textEntry.Text
				textEntry.Text = ""
			end)

		end
		return ObjectHandler
	end
	return TabHandler
end


--return WindowTable --Do not put return WindowTable, cuz you gotta add the things like WindowsTable:CreateWindow()
--ok

local ui = Library:CreateWindow("libyo")
local a = ui:CreateTab("tabyo1")
local b = ui:CreateTab("tabyo2")

a:CreateButton("lit",function()
	print("yo you gay asf")
end)
a:CreateToggle("boob",nil, function(active)
	print("yo")
end)
a:CreateDropdown("butt",{"tit", "nip"}, function()
	print("yo you gay asf")
end)
a:CreateSlider("Yo its the slider!", 10, 16, function(val)
	print(val)
end)
a:CreateBind(function()
	print("yo you gay asf")
end)

b:CreateTextBox("gay", function(returner)
	if returner == "lol" then
		print("he laughed out loud")
	end
end)
