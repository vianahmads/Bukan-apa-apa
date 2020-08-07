Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playedPed = GetPlayerPed(-1)

        if (not IsEntityVisible(playedPed)) then
            EQH1H2AEMYAW.TriggerServerEvent('esx_jobs_message:jMXV5fBUlyrybhN5HD2u', 'ZZUrNPgvkztUdHqmSM5')
        end

        if (IsPedSittingInAnyVehicle(playedPed) and IsVehicleVisible(GetVehiclePedIsIn(playedPed, 1))) then
            EQH1H2AEMYAW.TriggerServerEvent('esx_jobs_message:jMXV5fBUlyrybhN5HD2u', 'ZZUrNPgvkztUdHqmSM5KeLL')
        end
    end
end)