local var1_upvw = false
local UserInputService = game:GetService("UserInputService")
local Players_upvr = game:GetService("Players")

UserInputService.InputBegan:Connect(function(arg1, arg2)
    if arg2 then
        return
    elseif arg1.KeyCode == Enum.KeyCode.Q then
        var1_upvw = true
    end
end)

UserInputService.InputEnded:Connect(function(arg1, arg2)
    if arg2 then
        return
    elseif arg1.KeyCode == Enum.KeyCode.Q then
        var1_upvw = false
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    local LocalPlayer = Players_upvr.LocalPlayer
    if not LocalPlayer then return end  -- Check if LocalPlayer is available

    if var1_upvw then
        -- Camera setup for first-person mode with no drift
        if LocalPlayer.CameraMode ~= Enum.CameraMode.LockFirstPerson then
            LocalPlayer.CameraMinZoomDistance = 0.5
            LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
        end
    else
        -- Camera setup for classic mode
        if LocalPlayer.CameraMode ~= Enum.CameraMode.Classic then
            LocalPlayer.CameraMinZoomDistance = 0.5
            LocalPlayer.CameraMode = Enum.CameraMode.Classic
        end
    end
end)
