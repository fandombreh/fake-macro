-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-04-04 08:31:36
-- Luau version 6, Types version 3
-- Time taken: 0.000931 seconds

local var1_upvw = false
local UserInputService = game:GetService("UserInputService")
UserInputService.InputBegan:Connect(function(arg1, arg2) -- Line 7, Named "onInputBegan"
    --[[ Upvalues[1]:
        [1]: var1_upvw (read and write)
    ]]
    if arg2 then
    elseif arg1.KeyCode == Enum.KeyCode.X then
        var1_upvw = true
    end
end)
UserInputService.InputEnded:Connect(function(arg1, arg2) -- Line 15, Named "onInputEnded"
    --[[ Upvalues[1]:
        [1]: var1_upvw (read and write)
    ]]
    if arg2 then
    elseif arg1.KeyCode == Enum.KeyCode.X then
        var1_upvw = false
    end
end)
local Players_upvr = game:GetService("Players")
game:GetService("RunService").Heartbeat:Connect(function() -- Line 26
    --[[ Upvalues[2]:
        [1]: Players_upvr (readonly)
        [2]: var1_upvw (read and write)
    ]]
    local LocalPlayer = Players_upvr.LocalPlayer
    if var1_upvw then
        LocalPlayer.CameraMinZoomDistance = 0.5
        LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
        wait(0)
        LocalPlayer.CameraMode = Enum.CameraMode.Classic
        LocalPlayer.CameraMinZoomDistance = 5
        wait(0)
    else
        LocalPlayer.CameraMinZoomDistance = 0.5
        LocalPlayer.CameraMode = Enum.CameraMode.Classic
    end
end)
