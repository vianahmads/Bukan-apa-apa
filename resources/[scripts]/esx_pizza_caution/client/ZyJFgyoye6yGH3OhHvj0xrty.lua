local oldVehicle        = nil
local oldVehicleModel   = nil

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(250)

        local playerPed = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(playerPed)
        local model = GetEntityModel(vehicle)

        if (IsPedInAnyVehicle(playerPed, false)) then
            for blacklistedVehicleName, blacklistedVehicleHash in pairs((VPMDWCSE4YO.Config or {}).YszS81Sr3yApKQj6FJNUjan or {}) do
                if (IsVehicleModel(vehicle, blacklistedVehicleHash)) then
                    DeleteVehicle(vehicle)
                end
            end
        end

        if (IsPedSittingInAnyVehicle(playerPed)) then
            if (vehicle == oldVehicle and model ~= oldVehicleModel and oldVehicleModel ~= nil and oldVehicleModel ~= 0) then
                VPMDWCSE4YO.TriggerServerEvent('esx_pizza_caution:rYY3cZyv2zYLi4puWu7q1e', 'vUoXzDzA0zFMQC6Akm')
                N_0xEA386986E786A54F(vehicle)
                return
            end
        end

        oldVehicle = vehicle
        oldVehicleModel = model
    end
end)