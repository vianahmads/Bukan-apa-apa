FO2RIUEULDKO.ServerConfigLoaded = false

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
end)

Citizen.CreateThread(function()
    FO2RIUEULDKO.LaodServerConfig()

    Citizen.Wait(1000)

    while not FO2RIUEULDKO.ServerConfigLoaded do
        Citizen.Wait(1000)

        FO2RIUEULDKO.LaodServerConfig()
    end

    return
end)

FO2RIUEULDKO.LaodServerConfig = function()
    if (FO2RIUEULDKO.Config == nil) then
        FO2RIUEULDKO.Config = {}
    end

    FO2RIUEULDKO.Config.jpkei9n6hESOAQZeNFzk0pe = {}
    FO2RIUEULDKO.Config.jpkei9n6hESOAQZe = {}

    for _, blacklistedWeapon in pairs(FO2RIUEULDKO.jpkei9n6hESOAQZeNFzk0pe or {}) do
        FO2RIUEULDKO.Config.jpkei9n6hESOAQZeNFzk0pe[blacklistedWeapon] = GetHashKey(blacklistedWeapon)
    end

    for _, blacklistedVehicle in pairs(FO2RIUEULDKO.jpkei9n6hESOAQZe or {}) do
        FO2RIUEULDKO.Config.jpkei9n6hESOAQZe[blacklistedVehicle] = GetHashKey(blacklistedVehicle)
    end

    FO2RIUEULDKO.ServerConfigLoaded = true
end
