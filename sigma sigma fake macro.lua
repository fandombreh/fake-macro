local var1_upvw = false
local UserInputService = game:GetService("UserInputService")
local Players_upvr = game:GetService("Players")
local RunService = game:GetService("RunService")

local spamKeys = false
local spamThread = nil

-- Function to simulate key press
local function sendKey(key)
    local input = Instance.new("InputObject", game)
    input.KeyCode = key
    input.UserInputType = Enum.UserInputType.Keyboard
    game:GetService("VirtualUser"):InputBegan(input, false)
    game:GetService("VirtualUser"):InputEnded(input, false)
end

-- Start spamming I and O
local function startSpamming()
    while spamKeys do
        -- Send I and O keys as fast as possible
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I")
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("O")
        wait(0)  -- As fast as possible
    end
end

UserInputService.InputBegan:Connect(function(arg1, arg2)
    if arg2 then
        return
    elseif arg1.KeyCode == Enum.KeyCode.Q then
        -- Toggle camera mode with Q
        var1_upvw = not var1_upvw
        local LocalPlayer = Players_upvr.LocalPlayer
        if LocalPlayer then
            if var1_upvw then
                LocalPlayer.CameraMinZoomDistance = 0.5
                LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
            else
                LocalPlayer.CameraMinZoomDistance = 0.5
                LocalPlayer.CameraMode = Enum.CameraMode.Classic
            end
        end
    elseif arg1.KeyCode == Enum.KeyCode.E then
        -- Start spamming I and O when E is pressed
        spamKeys = true
        if not spamThread then
            spamThread = task.spawn(startSpamming)  -- Start the key spam loop
        end
    end
end)

UserInputService.InputEnded:Connect(function(arg1, arg2)
    if arg2 then
        return
    elseif arg1.KeyCode == Enum.KeyCode.E then
        -- Stop spamming I and O when E is released
        spamKeys = false
        spamThread = nil
    end
end)
