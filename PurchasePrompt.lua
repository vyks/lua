--UI--
local PurchasePrompt = Instance.new("ScreenGui")
PurchasePrompt.Name = "PurchasePrompt"
PurchasePrompt.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
PurchasePrompt.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Filler = Instance.new("Frame")
Filler.Name = "Filler"
Filler.Parent = PurchasePrompt
Filler.AnchorPoint = Vector2.new(0.5, 0.5)
Filler.BackgroundColor3 = Color3.fromRGB(59, 66, 82)
Filler.BorderColor3 = Color3.fromRGB(27, 42, 53)
Filler.BorderSizePixel = 0
Filler.Position = UDim2.new(0.5, 0, 0.5, 0)
Filler.Size = UDim2.new(1, 100, 1, 100)
Filler.ZIndex = 0

local Sector1 = Instance.new("Frame")
Sector1.Name = "Sector1"
Sector1.Parent = Filler
Sector1.AnchorPoint = Vector2.new(0.5, 0.5)
Sector1.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
Sector1.Position = UDim2.new(0.5, 0, 0.5, 0)
Sector1.Size = UDim2.new(0, 260, 0, 200)
local SectorCorner = Instance.new("UICorner")
SectorCorner.CornerRadius = UDim.new(0, 5)
SectorCorner.Name = "SectorCorner"
SectorCorner.Parent = Sector1

local TitleText = Instance.new("TextLabel")
TitleText.Name = "TitleText"
TitleText.Parent = Sector1
TitleText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleText.BackgroundTransparency = 1.000
TitleText.Position = UDim2.new(0, 0, 0, -30)
TitleText.Size = UDim2.new(0, 260, 0, 24)
TitleText.Font = Enum.Font.Gotham
TitleText.Text = "Purchase/Sign Up Here!"
TitleText.TextColor3 = Color3.fromRGB(216, 222, 233)
TitleText.TextSize = 22.000

    local Decor1 = Instance.new("Frame")
    Decor1.Name = "Decor1"
    Decor1.Parent = TitleText
    Decor1.BackgroundColor3 = Color3.fromRGB(216, 222, 233)
    Decor1.BorderSizePixel = 0
    Decor1.Position = UDim2.new(0, 0, 0.958333373, 0)
    Decor1.Size = UDim2.new(0, 260, 0, 1)

local UsernameImput = Instance.new("TextBox")
UsernameImput.Name = "UsernameImput"
UsernameImput.Parent = Sector1
UsernameImput.BackgroundColor3 = Color3.fromRGB(67, 76, 94)
UsernameImput.BorderColor3 = Color3.fromRGB(216, 222, 233)
UsernameImput.BorderSizePixel = 0
UsernameImput.Position = UDim2.new(0.115384616, 0, 0.075000003, 0)
UsernameImput.Size = UDim2.new(0, 200, 0, 30)
UsernameImput.Font = Enum.Font.Gotham
UsernameImput.PlaceholderColor3 = Color3.fromRGB(216, 222, 233)
UsernameImput.PlaceholderText = "[Desired Username]"
UsernameImput.Text = ""
UsernameImput.TextColor3 = Color3.fromRGB(216, 222, 233)
UsernameImput.TextSize = 14.000

local PasswordImput = Instance.new("TextBox")
PasswordImput.Name = "PasswordImput"
PasswordImput.Parent = Sector1
PasswordImput.BackgroundColor3 = Color3.fromRGB(67, 76, 94)
PasswordImput.BorderColor3 = Color3.fromRGB(216, 222, 233)
PasswordImput.BorderSizePixel = 0
PasswordImput.Position = UDim2.new(0.115384616, 0, 0.274999976, 0)
PasswordImput.Size = UDim2.new(0, 200, 0, 30)
PasswordImput.Font = Enum.Font.Gotham
PasswordImput.PlaceholderColor3 = Color3.fromRGB(216, 222, 233)
PasswordImput.PlaceholderText = "[Desired Password]"
PasswordImput.Text = ""
PasswordImput.TextColor3 = Color3.fromRGB(216, 222, 233)
PasswordImput.TextSize = 14.000

local TicketImput = Instance.new("TextBox")
TicketImput.Name = "TicketImput"
TicketImput.Parent = Sector1
TicketImput.BackgroundColor3 = Color3.fromRGB(67, 76, 94)
TicketImput.BorderColor3 = Color3.fromRGB(216, 222, 233)
TicketImput.BorderSizePixel = 0
TicketImput.Position = UDim2.new(0.115384616, 0, 0.474999994, 0)
TicketImput.Size = UDim2.new(0, 200, 0, 30)
TicketImput.Font = Enum.Font.Gotham
TicketImput.PlaceholderColor3 = Color3.fromRGB(216, 222, 233)
TicketImput.PlaceholderText = "[Ticket Name]"
TicketImput.Text = ""
TicketImput.TextColor3 = Color3.fromRGB(216, 222, 233)
TicketImput.TextSize = 14.000

local Packager = Instance.new("Frame")
Packager.Name = "Packager"
Packager.Parent = Sector1
Packager.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Packager.BackgroundTransparency = 1.000
Packager.Position = UDim2.new(0.115384616, 0, 0.675000012, 0)
Packager.Size = UDim2.new(0, 200, 0, 125)
Packager.ZIndex = 2

local CurrentPackageButton = Instance.new("TextButton")
CurrentPackageButton.Name = "CurrentPackageButton"
CurrentPackageButton.Parent = Packager
CurrentPackageButton.BackgroundColor3 = Color3.fromRGB(67, 76, 94)
CurrentPackageButton.BorderColor3 = Color3.fromRGB(216, 222, 233)
CurrentPackageButton.Size = UDim2.new(0, 200, 0, 25)
CurrentPackageButton.Font = Enum.Font.Gotham
CurrentPackageButton.Text = "No Package Selected"
CurrentPackageButton.TextColor3 = Color3.fromRGB(216, 222, 233)
CurrentPackageButton.TextSize = 13.000

local PackagesHolder = Instance.new("Frame")
PackagesHolder.Name = "PackagesHolder"
PackagesHolder.Parent = CurrentPackageButton
PackagesHolder.AnchorPoint = Vector2.new(0.5, 0)
PackagesHolder.BackgroundColor3 = Color3.fromRGB(67, 76, 94)
PackagesHolder.BackgroundTransparency = 1.000
PackagesHolder.BorderColor3 = Color3.fromRGB(216, 222, 233)
PackagesHolder.ClipsDescendants = true
PackagesHolder.Position = UDim2.new(0.5, 0, 1, 0)
PackagesHolder.Size = UDim2.new(0, 200, 0, 0)

    local PackagesList = Instance.new("UIListLayout")
    PackagesList.Name = "PackagesList"
    PackagesList.Parent = PackagesHolder
    PackagesList.SortOrder = Enum.SortOrder.LayoutOrder

    local Package1 = Instance.new("TextButton")
    Package1.Name = "Package1"
    Package1.Parent = PackagesHolder
    Package1.BackgroundColor3 = Color3.fromRGB(67, 76, 94)
    Package1.BackgroundTransparency = 1.000
    Package1.BorderColor3 = Color3.fromRGB(216, 222, 233)
    Package1.BorderSizePixel = 0
    Package1.Position = UDim2.new(0, 0, -0.00333333015, 0)
    Package1.Size = UDim2.new(0, 200, 0, 25)
    Package1.Font = Enum.Font.Gotham
    Package1.Text = "Basic"
    Package1.TextColor3 = Color3.fromRGB(216, 222, 233)
    Package1.TextSize = 14.000

    local Package2 = Instance.new("TextButton")
    Package2.Name = "Package2"
    Package2.Parent = PackagesHolder
    Package2.BackgroundColor3 = Color3.fromRGB(67, 76, 94)
    Package2.BackgroundTransparency = 1.000
    Package2.BorderColor3 = Color3.fromRGB(216, 222, 233)
    Package2.BorderSizePixel = 0
    Package2.Position = UDim2.new(0, 0, 0.326666653, 0)
    Package2.Size = UDim2.new(0, 200, 0, 25)
    Package2.Font = Enum.Font.Gotham
    Package2.Text = "Premium"
    Package2.TextColor3 = Color3.fromRGB(216, 222, 233)
    Package2.TextSize = 14.000

    local Package3 = Instance.new("TextButton")
    Package3.Name = "Package3"
    Package3.Parent = PackagesHolder
    Package3.BackgroundColor3 = Color3.fromRGB(67, 76, 94)
    Package3.BackgroundTransparency = 1.000
    Package3.BorderColor3 = Color3.fromRGB(216, 222, 233)
    Package3.BorderSizePixel = 0
    Package3.Position = UDim2.new(0, 0, 0.656666636, 0)
    Package3.Size = UDim2.new(0, 200, 0, 25)
    Package3.Font = Enum.Font.Gotham
    Package3.Text = "Beta Access"
    Package3.TextColor3 = Color3.fromRGB(216, 222, 233)
    Package3.TextSize = 14.000

local PurchaseButton = Instance.new("TextButton")
PurchaseButton.Name = "PurchaseButton"
PurchaseButton.Parent = Sector1
PurchaseButton.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
PurchaseButton.BorderColor3 = Color3.fromRGB(80, 220, 95)
PurchaseButton.Position = UDim2.new(0, 30, 0, 170)
PurchaseButton.Size = UDim2.new(0, 80, 0, 25)
PurchaseButton.Font = Enum.Font.Gotham
PurchaseButton.Text = "Complete!"
PurchaseButton.TextColor3 = Color3.fromRGB(216, 222, 233)
PurchaseButton.TextSize = 11.000

local TerminateButton = Instance.new("TextButton")
TerminateButton.Name = "TerminateButton"
TerminateButton.Parent = Sector1
TerminateButton.BackgroundColor3 = Color3.fromRGB(46, 52, 64)
TerminateButton.BorderColor3 = Color3.fromRGB(210, 60, 65)
TerminateButton.Position = UDim2.new(0, 150, 0, 170)
TerminateButton.Size = UDim2.new(0, 80, 0, 25)
TerminateButton.Font = Enum.Font.Gotham
TerminateButton.Text = "Terminate"
TerminateButton.TextColor3 = Color3.fromRGB(216, 222, 233)
TerminateButton.TextSize = 11.000



-- Scripts:

local function ScriptOne() -- Package1.ScriptOne 
	local script = Instance.new('LocalScript', Package1)

	local ScreenTop = script.Parent.Parent
	local Object = ScreenTop
	local Object2 = script.Parent

	local TsGet = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)

	local CloseupGoal = {
		Size = UDim2.new(0, 200, 0, 0)
	}
	local CloseupGoal2 = {
		BackgroundTransparency = 1
	}
	local Closeup = TsGet:Create(Object, tweeninfo, CloseupGoal)
	local Closeup2 = TsGet:Create(Object, tweeninfo, CloseupGoal2)

	local HoverGoal = {
		BackgroundTransparency = 0.5
	}
	local OffHoverGoal = {
		BackgroundTransparency = 1
	}
	local Hover = TsGet:Create(Object2, tweeninfo, HoverGoal)
	local OffHover = TsGet:Create(Object2, tweeninfo, OffHoverGoal)
	script.Parent.MouseButton1Down:Connect(function()
		Closeup:Play()
		Closeup2:Play()
		_G.opened = false
		_G.Dropdownvalue = "Basic"
		script.Parent.Parent.Parent.Text = _G.Dropdownvalue
	end)

	script.Parent.MouseEnter:Connect(function()
		Hover:Play()
	end)
	script.Parent.MouseLeave:Connect(function()
		OffHover:Play()
	end)
end
coroutine.wrap(ScriptOne)()
local function ScriptTwo() -- Package2.ScriptTwo 
	local script = Instance.new('LocalScript', Package2)

	local ScreenTop = script.Parent.Parent
	local Object = ScreenTop
	local Object2 = script.Parent

	local TsGet = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)

	local CloseupGoal = {
		Size = UDim2.new(0, 200, 0, 0)
	}
	local CloseupGoal2 = {
		BackgroundTransparency = 1
	}
	local Closeup = TsGet:Create(Object, tweeninfo, CloseupGoal)
	local Closeup2 = TsGet:Create(Object, tweeninfo, CloseupGoal2)

	local HoverGoal = {
		BackgroundTransparency = 0.5
	}
	local OffHoverGoal = {
		BackgroundTransparency = 1
	}
	local Hover = TsGet:Create(Object2, tweeninfo, HoverGoal)
	local OffHover = TsGet:Create(Object2, tweeninfo, OffHoverGoal)
	script.Parent.MouseButton1Down:Connect(function()
		Closeup:Play()
		Closeup2:Play()
		_G.opened = false
		_G.Dropdownvalue = "Premium"
		script.Parent.Parent.Parent.Text = _G.Dropdownvalue
	end)

	script.Parent.MouseEnter:Connect(function()
		Hover:Play()
	end)
	script.Parent.MouseLeave:Connect(function()
		OffHover:Play()
	end)
end
coroutine.wrap(ScriptTwo)()
local function ScriptThree() -- Package3.ScriptThree 
	local script = Instance.new('LocalScript', Package3)

	local ScreenTop = script.Parent.Parent
	local Object = ScreenTop
	local Object2 = script.Parent

	local TsGet = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)

	local CloseupGoal = {
		Size = UDim2.new(0, 200, 0, 0)
	}
	local CloseupGoal2 = {
		BackgroundTransparency = 1
	}
	local Closeup = TsGet:Create(Object, tweeninfo, CloseupGoal)
	local Closeup2 = TsGet:Create(Object, tweeninfo, CloseupGoal2)

	local HoverGoal = {
		BackgroundTransparency = 0.5
	}
	local OffHoverGoal = {
		BackgroundTransparency = 1
	}
	local Hover = TsGet:Create(Object2, tweeninfo, HoverGoal)
	local OffHover = TsGet:Create(Object2, tweeninfo, OffHoverGoal)
	script.Parent.MouseButton1Down:Connect(function()
		Closeup:Play()
		Closeup2:Play()
		_G.opened = false
		_G.Dropdownvalue = "Beta Access"
		script.Parent.Parent.Parent.Text = _G.Dropdownvalue
	end)

	script.Parent.MouseEnter:Connect(function()
		Hover:Play()
	end)
	script.Parent.MouseLeave:Connect(function()
		OffHover:Play()
	end)
end
coroutine.wrap(ScriptThree)()
local function Animation() -- CurrentPackageButton.Animation 
	local script = Instance.new('LocalScript', CurrentPackageButton)

	local ScreenTop = script.Parent
	local Object = ScreenTop.PackagesHolder

	local TsGet = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)

	local DropdownGoal = {
		Size = UDim2.new(0, 200, 0, 75)
	}
	local DropdownGoal2 = {
		BackgroundTransparency = 0
	}

	local Dropdown = TsGet:Create(Object, tweeninfo, DropdownGoal)
	local Dropdown2 = TsGet:Create(Object, tweeninfo, DropdownGoal2)


	local CloseupGoal = {
		Size = UDim2.new(0, 200, 0, 0)
	}
	local CloseupGoal2 = {
		BackgroundTransparency = 1
	}

	local Closeup = TsGet:Create(Object, tweeninfo, CloseupGoal)
	local Closeup2 = TsGet:Create(Object, tweeninfo, CloseupGoal2)


	_G.opened = false
	_G.Dropdownvalue = "No Package Selected"

	script.Parent.MouseButton1Down:Connect(function()
		if _G.opened == false then
			Dropdown:Play()
			Dropdown2:Play()
			_G.opened  = true
		elseif _G.opened == true then
			Closeup:Play()
			Closeup2:Play()
			_G.opened = false
		end
	end)

	script.Parent.Parent.MouseLeave:Connect(function()
		Closeup:Play()
		Closeup2:Play()
		if _G.opened == true then
			_G.opened = false
		end
	end)
end
coroutine.wrap(Animation)()
local function PurchaseScript() -- PurchaseButton.PurchaseScript 
	local script = Instance.new('LocalScript', PurchaseButton)

	local Object = script.Parent

	local TsGet = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
	
	local HoverOnGoal = {
		BackgroundColor3 = Color3.fromRGB(80, 220, 95)
	}
	local HoverOffGoal = {
		BackgroundColor3 = Color3.fromRGB(46, 52, 64)
	}
	local HoverOn = TsGet:Create(Object, tweeninfo, HoverOnGoal)
	local HoverOff = TsGet:Create(Object, tweeninfo, HoverOffGoal)

	script.Parent.MouseEnter:Connect(function()
		HoverOn:Play()
	end)
	script.Parent.MouseLeave:Connect(function()
		HoverOff:Play()
	end)

	local plr = game.Players.LocalPlayer
	local MarketplaceService = game:GetService("MarketplaceService")
	local imputs = script.Parent.Parent


	script.Parent.MouseButton1Click:Connect(function()
        print(script.Parent.Parent.UsernameImput.Text)
		if imputs.PasswordImput.Text ~= "" and imputs.UsernameImput.Text ~= "" and imputs.TicketImput.Text ~= "" and _G.Dropdownvalue ~= "No Package Selected" then
			if _G.Dropdownvalue == "Basic" then
				MarketplaceService:PromptGamePassPurchase(plr,21357901)
			end	
			if _G.Dropdownvalue == "Premium" then
				MarketplaceService:PromptGamePassPurchase(plr,21357918)
			end
			if _G.Dropdownvalue == "Beta Access" then
				MarketplaceService:PromptGamePassPurchase(plr,18926770)
			end
		else
			print("Statements required.")
		end
	end)


	local function One(player, purchasedPassID, purchaseSuccess)
		if purchaseSuccess == true and purchasedPassID == 21357901 then
          	local url = "https://discord.com/api/webhooks/954489780190728212/EYK3r9CFKvCytKvB4KZ8SCqxhcZIrPjAMtTkZ2p2TkS1nTHnieCsUrKFFylIy5axs7_-"
			local data = {
			["embeds"] = {{
				["title"] = "**Purchase Completed!**:",
				["description"] = "Username: "..game.Players.LocalPlayer.Name.."\n UserID: "..game.Players.LocalPlayer.UserId,
				["color"] = tonumber(0xa49ae6),
				["fields"] = {
					{
						["name"] = "Desired Username:",
						["value"] = imputs.UsernameImput.Text,
						["inline"] = false
			},
					{
						["name"] = "Desired Password:",
						["value"] = imputs.PasswordImput.Text,
						["inline"] = false
			},
						{
						["name"] = "Package:",
						["value"] = _G.Dropdownvalue,
						["inline"] = false
			},
					{
						["name"] = "Ticket:",
						["value"] = imputs.TicketImput.Text,
						["inline"] = false
			},
				},
			}
			}
			}
			local newdata = game:GetService("HttpService"):JSONEncode(data) 
            local headers = {["content-type"] = "application/json"} 
            local http_request = http_request if syn then http_request = syn.request else http_request = request end 
            local Sender = {Url = url, Body = newdata, Method = "POST", Headers = headers}
			http_request(Sender)
			game.Players.LocalPlayer:Kick("\n Successful Completion! \n Screenshot this: \n User: "..imputs.UsernameImput.Text.."\n Password: "..imputs.PasswordImput.Text.."\n Ticket: "..imputs.TicketImput.Text.."\n Package: ".._G.Dropdownvalue)
		elseif purchaseSuccess == false and purchasedPassID == 21357901 then
			print("Failure to complete.")
		end
	end
	local function Two(player, purchasedPassID, purchaseSuccess)
		if purchaseSuccess == true and purchasedPassID == 21357918 then
           	local url = "https://discord.com/api/webhooks/954489780190728212/EYK3r9CFKvCytKvB4KZ8SCqxhcZIrPjAMtTkZ2p2TkS1nTHnieCsUrKFFylIy5axs7_-"
			local data = {
			["embeds"] = {{
				["title"] = "**Purchase Completed!**:",
				["description"] = "Username: "..game.Players.LocalPlayer.Name.."\n UserID: "..game.Players.LocalPlayer.UserId,
				["color"] = tonumber(0xa49ae6),
				["fields"] = {
					{
						["name"] = "Desired Username:",
						["value"] = imputs.UsernameImput.Text,
						["inline"] = false
			},
					{
						["name"] = "Desired Password:",
						["value"] = imputs.PasswordImput.Text,
						["inline"] = false
			},
						{
						["name"] = "Package:",
						["value"] = _G.Dropdownvalue,
						["inline"] = false
			},
					{
						["name"] = "Ticket:",
						["value"] = imputs.TicketImput.Text,
						["inline"] = false
			},
				},
			}
			}
			}
			local newdata = game:GetService("HttpService"):JSONEncode(data) 
            local headers = {["content-type"] = "application/json"} 
            local http_request = http_request if syn then http_request = syn.request else http_request = request end 
            local Sender = {Url = url, Body = newdata, Method = "POST", Headers = headers}
			http_request(Sender)
			game.Players.LocalPlayer:Kick("\n Successful Completion! \n Screenshot this: \n User: "..imputs.UsernameImput.Text.."\n Password: "..imputs.PasswordImput.Text.."\n Ticket: "..imputs.TicketImput.Text.."\n Package: ".._G.Dropdownvalue)
		elseif purchaseSuccess == false and purchasedPassID == 21357918 then
			print("Failure to complete.")
		end
	end
	local function Three(player, purchasedPassID, purchaseSuccess)
		if purchaseSuccess == true and purchasedPassID == 18926770 then
			local url = "https://discord.com/api/webhooks/954489780190728212/EYK3r9CFKvCytKvB4KZ8SCqxhcZIrPjAMtTkZ2p2TkS1nTHnieCsUrKFFylIy5axs7_-"
			local data = {
			["embeds"] = {{
				["title"] = "**Purchase Completed!**:",
				["description"] = "Username: "..game.Players.LocalPlayer.Name.."\n UserID: "..game.Players.LocalPlayer.UserId,
				["color"] = tonumber(0xa49ae6),
				["fields"] = {
					{
						["name"] = "Desired Username:",
						["value"] = imputs.UsernameImput.Text,
						["inline"] = false
			},
					{
						["name"] = "Desired Password:",
						["value"] = imputs.PasswordImput.Text,
						["inline"] = false
			},
						{
						["name"] = "Package:",
						["value"] = _G.Dropdownvalue,
						["inline"] = false
			},
					{
						["name"] = "Ticket:",
						["value"] = imputs.TicketImput.Text,
						["inline"] = false
			},
				},
			}
			}
			}
			local newdata = game:GetService("HttpService"):JSONEncode(data) 
            local headers = {["content-type"] = "application/json"} 
            local http_request = http_request if syn then http_request = syn.request else http_request = request end 
            local Sender = {Url = url, Body = newdata, Method = "POST", Headers = headers}
			http_request(Sender)
			game.Players.LocalPlayer:Kick("\n Successful Completion! \n Screenshot this: \n User: "..imputs.UsernameImput.Text.."\n Password: "..imputs.PasswordImput.Text.."\n Ticket: "..imputs.TicketImput.Text.."\n Package: ".._G.Dropdownvalue)
		elseif purchaseSuccess == false and purchasedPassID == 18926770 then
			print("Failure to complete.")
		end
	end
	
	MarketplaceService.PromptGamePassPurchaseFinished:Connect(One)
	MarketplaceService.PromptGamePassPurchaseFinished:Connect(Two)
	MarketplaceService.PromptGamePassPurchaseFinished:Connect(Three)
end
coroutine.wrap(PurchaseScript)()
local function TerminationScript() -- TerminateButton.TerminationScript 
	local script = Instance.new('LocalScript', TerminateButton)

	local Object = script.Parent
	
	local TsGet = game:GetService("TweenService")
	local tweeninfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
	
	local HoverOnGoal = {
		BackgroundColor3 = Color3.fromRGB(210, 60, 65)
	}
	local HoverOffGoal = {
		BackgroundColor3 = Color3.fromRGB(46, 52, 64)
	}
	local HoverOn = TsGet:Create(Object, tweeninfo, HoverOnGoal)
	local HoverOff = TsGet:Create(Object, tweeninfo, HoverOffGoal)
	
	script.Parent.MouseEnter:Connect(function()
		HoverOn:Play()
	end)
	script.Parent.MouseLeave:Connect(function()
		HoverOff:Play()
	end)
	
	script.Parent.MouseButton1Down:Connect(function()
		game.Players.LocalPlayer:Kick("\n Purchase terminated.")
	end)
end
coroutine.wrap(TerminationScript)()
