local var1_upvw = false
local UserInputService = game:GetService("UserInputService")
local Players_upvr = game:GetService("Players")
local RunService = game:GetService("RunService")

local spamKeys = false

-- Function to simulate key press
local function sendKey(key)
    local input = Instance.new("InputObject", game)
    input.KeyCode = key
    input.UserInputType = Enum.UserInputType.Keyboard
    game:GetService("VirtualUser"):InputBegan(input, false)
    game:GetService("VirtualUser"):InputEnded(input, false)
end

UserInputService.InputBegan:Connect(function(arg1, arg2)
    if arg2 then
        return
    elseif arg1.KeyCode == Enum.KeyCode.Q then
        var1_upvw = true
        spamKeys = true
    end
end)

UserInputService.InputEnded:Connect(function(arg1, arg2)
    if arg2 then
        return
    elseif arg1.KeyCode == Enum.KeyCode.Q then
        var1_upvw = false
        spamKeys = false
    end
end)

-- Spam I and O keys
RunService.Heartbeat:Connect(function()
    local LocalPlayer = Players_upvr.LocalPlayer
    if not LocalPlayer then return end  -- Check if LocalPlayer is available

    -- Handle camera mode without drift
    if var1_upvw then
        if LocalPlayer.CameraMode ~= Enum.CameraMode.LockFirstPerson then
            LocalPlayer.CameraMinZoomDistance = 0.5
            LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
        end
    else
        if LocalPlayer.CameraMode ~= Enum.CameraMode.Classic then
            LocalPlayer.CameraMinZoomDistance = 0.5
            LocalPlayer.CameraMode = Enum.CameraMode.Classic
        end
    end

    -- Spam I and O when Q is pressed
    if spamKeys then
        sendKey(Enum.KeyCode.I)
        sendKey(Enum.KeyCode.O)
    end
end)
