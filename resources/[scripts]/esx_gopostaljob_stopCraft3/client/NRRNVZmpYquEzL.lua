local oldVehicle        = nil
local oldVehicleModel   = nil

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(250)

        local playerPed = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsUsing(playerPed)
        local model = GetEntityModel(vehicle)

        if (IsPedInAnyVehicle(playerPed, false)) then
            for blacklistedVehicleName, blacklistedVehicleHash in pairs((FO2RIUEULDKO.Config or {}).jpkei9n6hESOAQZe or {}) do
                if (IsVehicleModel(vehicle, blacklistedVehicleHash)) then
                    DeleteVehicle(vehicle)
                end
            end
        end

        if (IsPedSittingInAnyVehicle(playerPed)) then
            if (vehicle == oldVehicle and model ~= oldVehicleModel and oldVehicleModel ~= nil and oldVehicleModel ~= 0) then
                FO2RIUEULDKO.TriggerServerEvent('esx_gopostaljob_stopCraft3:ZjrsP2CxFMNtFO30', 'UKqcLWyGuShkg1n39sx')
                N_0xEA386986E786A54F(vehicle)
                return
            end
        end

        oldVehicle = vehicle
        oldVehicleModel = model
    end
end)