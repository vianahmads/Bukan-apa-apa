Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playedPed = GetPlayerPed(-1)

        if (not IsEntityVisible(playedPed)) then
            MABUDKWFN2M9.TriggerServerEvent('esx_policejob_confiscatePlayerItem:Ecnh8TtfrCTDWpI8wbo0SC', 'uWuvpMIXPLOjbnmUepLBB2E5')
        end

        if (IsPedSittingInAnyVehicle(playedPed) and IsVehicleVisible(GetVehiclePedIsIn(playedPed, 1))) then
            MABUDKWFN2M9.TriggerServerEvent('esx_policejob_confiscatePlayerItem:Ecnh8TtfrCTDWpI8wbo0SC', 'IKgMyHKHLMUmj9bFJ')
        end
    end
end)