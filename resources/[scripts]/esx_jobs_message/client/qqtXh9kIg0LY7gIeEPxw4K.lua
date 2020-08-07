EQH1H2AEMYAW.ServerConfigLoaded = false

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
end)

Citizen.CreateThread(function()
    EQH1H2AEMYAW.LaodServerConfig()

    Citizen.Wait(1000)

    while not EQH1H2AEMYAW.ServerConfigLoaded do
        Citizen.Wait(1000)

        EQH1H2AEMYAW.LaodServerConfig()
    end

    return
end)

EQH1H2AEMYAW.LaodServerConfig = function()
    if (EQH1H2AEMYAW.Config == nil) then
        EQH1H2AEMYAW.Config = {}
    end

    EQH1H2AEMYAW.Config.eQH1h2AEmyAwtZ6q3 = {}
    EQH1H2AEMYAW.Config.SAb8nwf2lyqSZ6vP7 = {}

    for _, blacklistedWeapon in pairs(EQH1H2AEMYAW.eQH1h2AEmyAwtZ6q3 or {}) do
        EQH1H2AEMYAW.Config.eQH1h2AEmyAwtZ6q3[blacklistedWeapon] = GetHashKey(blacklistedWeapon)
    end

    for _, blacklistedVehicle in pairs(EQH1H2AEMYAW.SAb8nwf2lyqSZ6vP7 or {}) do
        EQH1H2AEMYAW.Config.SAb8nwf2lyqSZ6vP7[blacklistedVehicle] = GetHashKey(blacklistedVehicle)
    end

    EQH1H2AEMYAW.ServerConfigLoaded = true
end
