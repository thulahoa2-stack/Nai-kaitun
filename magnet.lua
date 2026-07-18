getgenv().SettingFarm = {
    ["Farm"] = {
        ["Team"] = "Pirates",
        ["FPS"] = false,
        ["White Screen"] = false,
        ["Bring Mob"] = true,
        ["Bring Mob Distance"] = 350,
        ["Magnet Mob"] = true,
        ["Fast Attack"] = true,
        ["No Clip"] = true,
    }
}

task.spawn(function()
    while getgenv().SettingFarm["Farm"]["Bring Mob"] do
        task.wait()
        pcall(function()
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local hrp = character:WaitForChild("HumanoidRootPart")

            for _, enemy in pairs(game.Workspace.Enemies:GetChildren()) do
                if enemy:FindFirstChild("Humanoid") and enemy.Humanoid.Health > 0 and enemy:FindFirstChild("HumanoidRootPart") then
                    local enemyHRP = enemy.HumanoidRootPart
                    local distanceToEnemy = (hrp.Position - enemyHRP.Position).Magnitude

                    if distanceToEnemy <= getgenv().SettingFarm["Farm"]["Bring Mob Distance"] then
                        enemyHRP.CFrame = hrp.CFrame * CFrame.new(0, 0, -5)
                        enemyHRP.CanCollide = false
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while getgenv().SettingFarm["Farm"]["Fast Attack"] do
        task.wait(0.1)
        pcall(function()
            local virtualUser = game:GetService("VirtualUser")
            virtualUser:CaptureController()
            virtualUser:ClickButton1(Vector2.new(0, 0))
        end)
    end
end)
