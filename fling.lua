for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
	v.Parent = game:GetService("Players").LocalPlayer.Character
end

game:GetService("Players").LocalPlayer.Character.potion.InSide:Destroy()
game:GetService("Players").LocalPlayer.Character.potion.Cap:Destroy()
game:GetService("Players").LocalPlayer.Character.StartRagdoll:Destroy()
game:GetService("Players").LocalPlayer.Character.Pushed:Destroy()
game:GetService("Players").LocalPlayer.Character.RagdollMe:Destroy()

wait()
Clipped = true
function Noclip()
	Clipped = false
	function Noclipped()
		if Clip == false and game:GetService("Players").LocalPlayer.Character ~= nil then
			for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = game:GetService('RunService').Stepped:connect(Noclipped)
end


local tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")

if tool then
	tool.Parent = game:GetService("Players").LocalPlayer.Backpack
	tool.Handle.Massless = true
	RestoreCFling = {
		Anim = game:GetService("Players").LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId;
		Grip = tool.GripPos;
	}
	tool.GripPos = Vector3.new(5000, 5000, 5000)
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CustomPhysicalProperties = PhysicalProperties.new(math.huge,math.huge,math.huge,math.huge,math.huge)
	tool.Parent = game:GetService("Players").LocalPlayer.Character
	pcall(function() game:GetService("Players").LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "nil" end)
	wait(.1)
	tool.Parent = game:GetService("Players").LocalPlayer.Backpack
	wait(.1)
	tool.Parent = game:GetService("Players").LocalPlayer.Character
	Noclip()
    wait()
    Noclipping:Disconnect()
end
