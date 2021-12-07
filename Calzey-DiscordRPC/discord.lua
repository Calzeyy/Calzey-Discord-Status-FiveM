Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        Citizen.Wait(5*1000)

        -- Discord ID Bot
        SetDiscordAppId()

        -- Calzey Config
        SetRichPresence( GetPlayerName(source) .. " Is On " .. GetStreetNameFromHashKey( GetStreetNameAtCoord( table.unpack( GetIntityCoords(player) ) ) ) )

        -- Logo Besar
        SetDiscordRichPresenceAsset("big")
        SetDiscordRichPresenceAssetText(GetPlayerName(source))

        -- Logo Kecil
        SetDiscordRichPresenceAssetSmall("small")
        SetDiscordRichPresenceAssetSmallText("Darah: ".. (GetEntityHealth(player) - 100 ) )

        -- Calzey Button
        SetDiscordRichPresenceAction(0, "Discord", "")
        SetDiscordRichPresenceAction(1, "Website", "")

    end
end)