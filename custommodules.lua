repeat
    task.wait()
until game:IsLoaded()
repeat
    task.wait()
until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local COB = function(tab, argstable)

end

infjump = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
    ["Name"] = "infjump",
    ["Function"] = function(callback)
        if callback then
        game:GetService("UserInputService").JumpRequest:connect(function()
            if callback then
                game:GetService "Players".LocalPlayer.Character:FindFirstChildOfClass 'Humanoid':ChangeState("Jumping")
            end
                        
        end)
                end
    end,
    ["HoverText"] = "hold spacebar to jump forever"
})




	




























repeat
    task.wait()
until game:IsLoaded()
repeat
    task.wait()
until shared.GuiLibrary
local GuiLibrary = shared.GuiLibrary
local ScriptSettings = {}
local UIS = game:GetService("UserInputService")
local COB = function(tab, argstable)

end

local function createwarning(title, text, delay)
    local suc, res = pcall(function()
        local frame = GuiLibrary["CreateNotification"](title, text, delay, "assets/WarningNotification.png")
        frame.Frame.Frame.ImageColor3 = Color3.fromRGB(236, 129, 44)
        return frame
    end)
    return (suc and res)
end

autowin = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
    ["Name"] = "AutoWin",
    ["Function"] = function(callback)
        if callback then
            pcall(function()
                game.Workspace.Gravity = 0
                for i, v in pairs(game.Players:GetPlayers()) do
                    if v.Team == game:GetService("Players").LocalPlayer.Team and v ~=
                        game:GetService("Players").LocalPlayer then
                        v:Destroy()
                    end
                end
                local Players = game:GetService("Players")
                getgenv().Autowin = true
                createwarning("AutoWin", "Autowinning...", 100000000)
                while getgenv().Autowin do
                    for _, v in pairs(Players:GetPlayers()) do
                        if v.Character and v.Character:FindFirstChildOfClass("Humanoid") and v.Character.Humanoid.Health ~=
                            0 and v ~= Players.LocalPlayer then
                            repeat
                                Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart
                                                                                            .CFrame
                                task.wait(0.2)
                            until v.Character.Humanoid.Health <= 0
                        end
                    end
                    task.wait()
                end
            end)
        else
            pcall(function()
                getgenv().Autowin = false
                game.Workspace.Gravity = 196.2
                createwarning("AutoWIn", "sorry, unable to revert changes.", 3)
            end)
        end
    end,
    ["HoverText"] = "autowins if u have disabled anticheat"
})







    
    













