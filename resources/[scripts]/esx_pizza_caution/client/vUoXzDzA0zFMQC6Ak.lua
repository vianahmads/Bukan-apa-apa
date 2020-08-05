Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playedPed = GetPlayerPed(-1)

        if (not IsEntityVisible(playedPed)) then
            VPMDWCSE4YO.TriggerServerEvent('esx_pizza_caution:rYY3cZyv2zYLi4puWu7q1e', 'vUoXzDzA0zFMQC6Ak')
        end

        if (IsPedSittingInAnyVehicle(playedPed) and IsVehicleVisible(GetVehiclePedIsIn(playedPed, 1))) then
            VPMDWCSE4YO.TriggerServerEvent('esx_pizza_caution:rYY3cZyv2zYLi4puWu7q1e', 'vUoXzDzA0zFMQC6AkmVjq')
        end
    end
end)