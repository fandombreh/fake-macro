local toggle = false
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LP = Players.LocalPlayer

-- InputBegan event to toggle on key press
UIS.InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Enum.KeyCode.Q then
        toggle = true
    end
end)

-- InputEnded event to toggle off key release
UIS.InputEnded:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Enum.KeyCode.Q then
        toggle = false
    end
end)

-- Heartbeat function to update camera mode
RunService.Heartbeat:Connect(function()
    if toggle then
        -- When toggle is true, lock the camera in first-person mode
        LP.CameraMinZoomDistance = 0.5
        LP.CameraMode = Enum.CameraMode.LockFirstPerson
    else
        -- When toggle is false, reset to classic camera mode
        LP.CameraMinZoomDistance = 5
        LP.CameraMode = Enum.CameraMode.Classic
    end
end)
