-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-04-04 21:10:09
-- Luau version 6, Types version 3
-- Time taken: 0.002623 seconds

local var1_upvw = false
local UserInputService = game:GetService("UserInputService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local tbl_upvr = {"[Double-Barrel SG]", "[TacticalShotgun]", "[Revolver]", "[Rifle]", "[Shotgun]", "[Silencer]", "[SilencerAR]", "[LMG]", "[Glock]", "[SMG]", "[AK47]", "[AR]", "[RPG]", "[AUG]", "[Flamethrower]", "[DrumGun]", "[Drum-Shotgun]", "[P90]"}
local var5_upvw = false
local function _() -- Line 33, Named "isRestrictedToolEquipped"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local Character_6 = LocalPlayer_upvr.Character
	if Character_6 then
		Character_6 = LocalPlayer_upvr.Character:FindFirstChildOfClass("Tool")
	end
	if Character_6 then
		for _, v in ipairs(tbl_upvr) do
			if Character_6.Name == v then
				return true
			end
		end
	end
	return false
end
local function _() -- Line 46, Named "updateToolStatus"
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Character_5 = LocalPlayer_upvr.Character
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 23. Error Block 10 start (CF ANALYSIS FAILED)
	var5_upvw = Character_5
	-- KONSTANTERROR: [30] 23. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 24. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 24. Error Block 11 end (CF ANALYSIS FAILED)
end
if LocalPlayer_upvr.Character then
	LocalPlayer_upvr.Character.ChildAdded:Connect(function(arg1) -- Line 54
		--[[ Upvalues[3]:
			[1]: LocalPlayer_upvr (readonly)
			[2]: var5_upvw (read and write)
			[3]: tbl_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		local Character_2 = LocalPlayer_upvr.Character
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 27. Error Block 11 start (CF ANALYSIS FAILED)
		var5_upvw = Character_2
		-- KONSTANTERROR: [35] 27. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 12 end (CF ANALYSIS FAILED)
	end)
	LocalPlayer_upvr.Character.ChildRemoved:Connect(function(arg1) -- Line 59
		--[[ Upvalues[3]:
			[1]: LocalPlayer_upvr (readonly)
			[2]: var5_upvw (read and write)
			[3]: tbl_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		local Character_7 = LocalPlayer_upvr.Character
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 27. Error Block 11 start (CF ANALYSIS FAILED)
		var5_upvw = Character_7
		-- KONSTANTERROR: [35] 27. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 12 end (CF ANALYSIS FAILED)
	end)
end
LocalPlayer_upvr.CharacterAdded:Connect(function(arg1) -- Line 67
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	arg1.ChildAdded:Connect(function(arg1_2) -- Line 68
		--[[ Upvalues[3]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: var5_upvw (copied, read and write)
			[3]: tbl_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		local Character_3 = LocalPlayer_upvr.Character
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 27. Error Block 11 start (CF ANALYSIS FAILED)
		var5_upvw = Character_3
		-- KONSTANTERROR: [35] 27. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 12 end (CF ANALYSIS FAILED)
	end)
	arg1.ChildRemoved:Connect(function(arg1_3) -- Line 73
		--[[ Upvalues[3]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: var5_upvw (copied, read and write)
			[3]: tbl_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
		local Character = LocalPlayer_upvr.Character
		-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [35] 27. Error Block 11 start (CF ANALYSIS FAILED)
		var5_upvw = Character
		-- KONSTANTERROR: [35] 27. Error Block 11 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 12 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [36] 28. Error Block 12 end (CF ANALYSIS FAILED)
	end)
	local Character_4 = LocalPlayer_upvr.Character
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 37. Error Block 10 start (CF ANALYSIS FAILED)
	var5_upvw = Character_4
	-- KONSTANTERROR: [48] 37. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 38. Error Block 11 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 38. Error Block 11 end (CF ANALYSIS FAILED)
end)
UserInputService.InputBegan:Connect(function(arg1, arg2) -- Line 82, Named "onInputBegan"
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if arg2 then
	elseif arg1.KeyCode == Enum.KeyCode.X then
		var1_upvw = true
	end
end)
UserInputService.InputEnded:Connect(function(arg1, arg2) -- Line 90, Named "onInputEnded"
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if arg2 then
	elseif arg1.KeyCode == Enum.KeyCode.X then
		var1_upvw = false
	end
end)
game:GetService("RunService").Heartbeat:Connect(function() -- Line 102
	--[[ Upvalues[3]:
		[1]: var1_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
	]]
	if var1_upvw and not var5_upvw then
		LocalPlayer_upvr.CameraMinZoomDistance = 0.1
		LocalPlayer_upvr.CameraMode = Enum.CameraMode.LockFirstPerson
		wait(0)
		LocalPlayer_upvr.CameraMode = Enum.CameraMode.Classic
		LocalPlayer_upvr.CameraMinZoomDistance = 5
		wait(0)
	else
		LocalPlayer_upvr.CameraMinZoomDistance = 0.1
		LocalPlayer_upvr.CameraMode = Enum.CameraMode.Classic
	end
end)
