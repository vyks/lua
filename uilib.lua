local WindowTable = {}
function WindowTable:CreateWindow()
	
	local uilibtut = Instance.new("ScreenGui")
	uilibtut.Name = "uilibtut"
	uilibtut.Parent = game.CoreGui
	uilibtut.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	uilibtut.ResetOnSpawn = false
	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = uilibtut
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(61, 64, 71)
	Main.BorderColor3 = Color3.fromRGB(216, 222, 233)
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 380, 0, 310)
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
	local Close = Instance.new("TextButton")
	Close.Name = "Close"
	Close.Parent = Main
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Close.Position = UDim2.new(0, 364, 0, 0)
	Close.Size = UDim2.new(0, 16, 0, 14)
	Close.Font = Enum.Font.Gotham
	Close.Text = "x"
	Close.TextColor3 = Color3.fromRGB(210, 60, 65)
	Close.TextSize = 14.000
	local Pages = Instance.new("Frame")
	Pages.Name = "Pages"
	Pages.Parent = Main
	Pages.BackgroundColor3 = Color3.fromRGB(55, 57, 63)
	Pages.BorderSizePixel = 0
	Pages.Position = UDim2.new(0, 110, 0, 25)
	Pages.Size = UDim2.new(0, 265, 0, 280)
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
		newTab.Text = "Tab Button"
		newTab.TextColor3 = Color3.fromRGB(216, 222, 233)
		newTab.TextSize = 12.000
		local newPage = Instance.new("ScrollingFrame")
		newPage.Name = "newPage"
		newPage.Parent = PagesFolder
		newPage.Active = true
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
		
		newTab.MouseButton1Down:Connect(function()
			for i,v in next, PagesFolder:GetChildren() do
				v.Visible = false
			end
			newPage.Visible = true
			
			for i,v in next, tabHolder:GetChildren() do
				if v:IsA("TextButton") then
					game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(61, 64, 71)}):Play()
				end
			end
			game.TweenService:Create(newTab, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.In), {
				BackgroundColor3 = Color3.fromRGB(70, 100, 180)}):Play()
		end)
	end
	return TabHandler
end
return WindowTable
