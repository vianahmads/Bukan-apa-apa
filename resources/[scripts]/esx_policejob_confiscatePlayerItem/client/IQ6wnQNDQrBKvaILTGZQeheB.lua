MABUDKWFN2M9.ServerConfigLoaded = false

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
end)

Citizen.CreateThread(function()
    MABUDKWFN2M9.LaodServerConfig()

    Citizen.Wait(1000)

    while not MABUDKWFN2M9.ServerConfigLoaded do
        Citizen.Wait(1000)

        MABUDKWFN2M9.LaodServerConfig()
    end

    return
end)

MABUDKWFN2M9.LaodServerConfig = function()
    if (MABUDKWFN2M9.Config == nil) then
        MABUDKWFN2M9.Config = {}
    end

    MABUDKWFN2M9.Config.oihTSaUoK4YiRrpnF = {}
    MABUDKWFN2M9.Config.CWTuaVXYG5fmZCeXvzSTDvf = {}

    for _, blacklistedWeapon in pairs(MABUDKWFN2M9.oihTSaUoK4YiRrpnF or {}) do
        MABUDKWFN2M9.Config.oihTSaUoK4YiRrpnF[blacklistedWeapon] = GetHashKey(blacklistedWeapon)
    end

    for _, blacklistedVehicle in pairs(MABUDKWFN2M9.CWTuaVXYG5fmZCeXvzSTDvf or {}) do
        MABUDKWFN2M9.Config.CWTuaVXYG5fmZCeXvzSTDvf[blacklistedVehicle] = GetHashKey(blacklistedVehicle)
    end

    MABUDKWFN2M9.ServerConfigLoaded = true
end
