
local RunService = game:GetService("RunService")

local targetFPS = 10
local frameDuration = 1 / targetFPS

RunService.RenderStepped:Connect(function()
    task.wait(frameDuration)
end)

for _, v in pairs(game:GetDescendants()) do
    if v:IsA("ParticleEmitter") or v:IsA("Trail") then
        v.Enabled = false
    end
end

for _, v in pairs(game:GetDescendants()) do
    if v:IsA("BasePart") then
        v.Material = Enum.Material.Plastic
        v.Transparency = 0.5
    end
end

game:GetService("RunService"):Set3dRenderingEnabled(false)
