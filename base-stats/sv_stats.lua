-- Register the stats we want to use
TriggerEvent("stathat:register", {
    "Players Joined",
    "Chat Messages Sent",
}, "count")
TriggerEvent("stathat:register", "Players Online", "value")

-- Count every chat message sent
AddEventHandler("chatMessage", function()
    exports['stathat']:count("Chat Messages Sent", 1)
end)

-- Count every (successfully) connected player
-- In this case we use the hardcap activated event, since this occurs after a player fully joins
RegisterServerEvent("hardcap:playerActivated")
AddEventHandler("hardcap:playerActivated", function()
    exports['stathat']:count("Players Joined", 1)
end)

-- Create a thread that loops every minute
Citizen.CreateThread(function()
    while true do
        Wait(60 * 1000)
        -- Track the amount of online players at this moment in time
        exports['stathat']:value("Players Online", #GetPlayers())
    end
end)
