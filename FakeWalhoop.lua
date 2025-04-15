local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local v2 = v1:NewWindow("\70\97\107\101\32\87\97\108\108\104\111\112")
local v3 = v2:NewSection("\87\97\108\108\104\111\112\32\70\101\97\116\117\114\101")

local v4 = false

v3:CreateToggle("\70\97\107\101\32\87\97\108\108\104\111\112", function(v5)
	v4 = v5
end)

local function v6(v7)
	local v8 = v7:FindFirstChild("\82\105\103\104\116\83\104\111\117\108\100\101\114", true)
	local v9 = v7:FindFirstChild("\76\101\102\116\83\104\111\117\108\100\101\114", true)
	if v8 and v9 then
		v8.C0 = CFrame.new(1, 0.5, 0) * CFrame.Angles(0, 0, math.rad(-90))
		v9.C0 = CFrame.new(-1, 0.5, 0) * CFrame.Angles(0, 0, math.rad(90))
	end
end

game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101").JumpRequest:Connect(function()
	if v4 then
		local v10 = game.Players.LocalPlayer.Character
		if not v10 then return end

		local v11 = v10:FindFirstChildOfClass("\72\117\109\97\110\111\105\100")
		local v12 = v10:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")

		if v11 and v12 then
			v12.CFrame = CFrame.new(v12.Position) * CFrame.Angles(0, math.rad(90), 0)
			v6(v10)
			v12.Velocity = Vector3.new(0, 50, 0)
		end
	end
end)
