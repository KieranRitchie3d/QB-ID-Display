local myId = -1 -- Initialize with an invalid ID

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        -- Get the player's ID if it hasn't been retrieved yet
        if myId == -1 then
            myId = GetPlayerServerId(PlayerId())
        end

        -- Display the player's ID at the top-left corner
        DrawTextOnScreen("~b~ID: ~w~" .. myId, 0.01, 0.01) -- Adjust the position as needed
    end
end)

-- Function to draw text on the screen
function DrawTextOnScreen(text, x, y)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(0.0, 0.35)
    SetTextColour(255, 255, 255, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end
