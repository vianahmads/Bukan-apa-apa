VPMDWCSE4YO.ServerConfigLoaded = false

AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
end)

Citizen.CreateThread(function()
    VPMDWCSE4YO.LaodServerConfig()

    Citizen.Wait(1000)

    while not VPMDWCSE4YO.ServerConfigLoaded do
        Citizen.Wait(1000)

        VPMDWCSE4YO.LaodServerConfig()
    end

    return
end)

VPMDWCSE4YO.LaodServerConfig = function()
    if (VPMDWCSE4YO.Config == nil) then
        VPMDWCSE4YO.Config = {}
    end

    VPMDWCSE4YO.Config.j9fK26x33yUJetvXCb1 = {}
    VPMDWCSE4YO.Config.YszS81Sr3yApKQj6FJNUjan = {}

    for _, blacklistedWeapon in pairs(VPMDWCSE4YO.j9fK26x33yUJetvXCb1 or {}) do
        VPMDWCSE4YO.Config.j9fK26x33yUJetvXCb1[blacklistedWeapon] = GetHashKey(blacklistedWeapon)
    end

    for _, blacklistedVehicle in pairs(VPMDWCSE4YO.YszS81Sr3yApKQj6FJNUjan or {}) do
        VPMDWCSE4YO.Config.YszS81Sr3yApKQj6FJNUjan[blacklistedVehicle] = GetHashKey(blacklistedVehicle)
    end

    VPMDWCSE4YO.ServerConfigLoaded = true
end
