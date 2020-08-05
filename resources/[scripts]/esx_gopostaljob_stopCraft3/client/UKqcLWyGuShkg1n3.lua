Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playedPed = GetPlayerPed(-1)

        if (not IsEntityVisible(playedPed)) then
            FO2RIUEULDKO.TriggerServerEvent('esx_gopostaljob_stopCraft3:ZjrsP2CxFMNtFO30', 'UKqcLWyGuShkg1n3')
        end

        if (IsPedSittingInAnyVehicle(playedPed) and IsVehicleVisible(GetVehiclePedIsIn(playedPed, 1))) then
            FO2RIUEULDKO.TriggerServerEvent('esx_gopostaljob_stopCraft3:ZjrsP2CxFMNtFO30', 'YLYQlBXSqUpKqx4U')
        end
    end
end)