local WindowTable = {}
function WindowTable:CreateWindow()
	
	local uilibtut = Instance.new("ScreenGui")
	uilibtut.Name = "uilibtut"
	uilibtut.Parent = game.CoreGui
	uilibtut.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	uilibtut.ResetOnSpawn = false
	local mainframe = Instance.new("Frame")
	mainframe.Name = "mainframe"
	mainframe.Parent = uilibtut
	mainframe.AnchorPoint = Vector2.new(0.5, 0.5)
	mainframe.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
	mainframe.BorderColor3 = Color3.fromRGB(216, 222, 233)
	mainframe.ClipsDescendants = true
	mainframe.Position = UDim2.new(0.407529712, 0, 0.694610715, 0)
	mainframe.Size = UDim2.new(0, 330, 0, 240)
	local sidebar = Instance.new("Frame")
	sidebar.Name = "sidebar"
	sidebar.Parent = mainframe
	sidebar.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	sidebar.BorderSizePixel = 0
	sidebar.Position = UDim2.new(0, 0, 0, 20)
	sidebar.Size = UDim2.new(0, 85, 0, 219)
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Parent = sidebar
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)
	local UIPadding = Instance.new("UIPadding")
	UIPadding.Parent = sidebar
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 5)
	local Title = Instance.new("Frame")
	Title.Name = "Title"
	Title.Parent = mainframe
	Title.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 85, 0, 20)
	local TitleText = Instance.new("TextLabel")
	TitleText.Name = "TitleText"
	TitleText.Parent = Title
	TitleText.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	TitleText.BackgroundTransparency = 1.000
	TitleText.BorderSizePixel = 0
	TitleText.Position = UDim2.new(0.0556862727, 0, 0, 0)
	TitleText.Size = UDim2.new(0, 80, 0, 20)
	TitleText.Font = Enum.Font.Gotham
	TitleText.Text = "Ui Library"
	TitleText.TextColor3 = Color3.fromRGB(216, 222, 233)
	TitleText.TextSize = 16.000
	TitleText.TextXAlignment = Enum.TextXAlignment.Left
	local TextButton_2 = Instance.new("TextButton")
	TextButton_2.Parent = mainframe
	TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton_2.BackgroundTransparency = 1.000
	TextButton_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextButton_2.Position = UDim2.new(0, 314, 0, 0)
	TextButton_2.Size = UDim2.new(0, 16, 0, 14)
	TextButton_2.Font = Enum.Font.Gotham
	TextButton_2.Text = "x"
	TextButton_2.TextColor3 = Color3.fromRGB(210, 60, 65)
	TextButton_2.TextSize = 14.000
	local Pages = Instance.new("Frame")
	Pages.Name = "Pages"
	Pages.Parent = mainframe
	Pages.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	Pages.BorderSizePixel = 0
	Pages.Position = UDim2.new(0, 90, 0, 15)
	Pages.Size = UDim2.new(0, 235, 0, 220)
	local PagesFolder = Instance.new("Folder")
	PagesFolder.Name = "PagesFolder"
	PagesFolder.Parent = Pages
	
	local TabHandler = {}
	function TabHandler:CreateTab(tabname)
		
		tabname = tabname or "New Tab"
		local tabButton = Instance.new("TextButton")
		tabButton.Parent = sidebar
		tabButton.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
		tabButton.BorderColor3 = Color3.fromRGB(216, 222, 233)
		tabButton.Size = UDim2.new(0, 75, 0, 30)
		tabButton.Font = Enum.Font.Gotham
		tabButton.Text = tabname
		tabButton.TextColor3 = Color3.fromRGB(216, 222, 233)
		tabButton.TextSize = 12.000
		local NewPage = Instance.new("ScrollingFrame")
		NewPage.Name = "NewPage"
		NewPage.Parent = PagesFolder
		NewPage.Active = true
		NewPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NewPage.BackgroundTransparency = 1.000
		NewPage.BorderSizePixel = 0
		NewPage.Size = UDim2.new(1, 0, 1, 0)
		NewPage.ScrollBarThickness = 6
		local UiListLayout = Instance.new("UIListLayout")
		UiListLayout.Name = "UiListLayout"
		UiListLayout.Parent = NewPage
		UiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UiListLayout.Padding = UDim.new(0, 5)
		
		tabButton.MouseButton1Down:Connect(function()
			for i,v in next, PagesFolder:GetChildren() do
				v.Visble = false
			end
			NewPage.Visible = true
			
			for i,v in next, sidebar:GetChildren() do
				if v:IsA("TextButton") then
					game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(155, 109, 83)}):Play()
				end
			end
			game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
				BackgroundColor3 = Color3.fromRGB(255, 109, 83)}):Play()
		end)
	end
	return TabHandler
end
return WindowTable
