-local toggle = false
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LP = Players.LocalPlayer

UIS.InputBegan:Connect(function(input, gpe)
	if not gpe and input.KeyCode == Enum.KeyCode.Q then
		toggle = true
	end
end)

UIS.InputEnded:Connect(function(input, gpe)
	if not gpe and input.KeyCode == Enum.KeyCode.Q then
		toggle = false
	end
end)

RunService.Heartbeat:Connect(function()
	if toggle then
		LP.CameraMinZoomDistance = 0.5
		LP.CameraMode = Enum.CameraMode.LockFirstPerson
		task.defer(function()
			LP.CameraMode = Enum.CameraMode.Classic
			LP.CameraMinZoomDistance = 5
		end)
	else
		LP.CameraMinZoomDistance = 0.5
		LP.CameraMode = Enum.CameraMode.Classic
	end
end)
