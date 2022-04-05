-- Gui to Lua
-- Version: 3.2

-- Instances:



local TextButton = Instance.new("TextButton")

local Library = {}
function Library:CreateMain()
	local ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Parent = game.CoreGui
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	local Frame = Instance.new("Frame")
	Frame.Parent = ScreenGui
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0, 300, 0, 200)
	local Frame2 = Instance.new("Frame")
	Frame2.Parent = Frame
	Frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame2.Position = UDim2.new(0, 0, 0.125, 0)
	Frame2.Size = UDim2.new(0, 85, 0, 175)
	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Parent = Frame2
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)
	local UIPadding = Instance.new("UIPadding")
	UIPadding.Parent = Frame2
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 5)
	
	local GamerLibrary = {}
	function GamerLibrary:CreateButton(name)
		local TextButton = Instance.new("TextButton")
		TextButton.Parent = Frame2
		TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.Size = UDim2.new(0, 75, 0, 35)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = name
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000
	end
	return GamerLibrary
end
return Library
