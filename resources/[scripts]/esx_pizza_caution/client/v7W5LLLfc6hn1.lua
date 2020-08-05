VPMDWCSE4YO.CurrentRequestId    = 0
VPMDWCSE4YO.ServerCallbacks     = {}
VPMDWCSE4YO.ClientCallbacks     = {}
VPMDWCSE4YO.ClientEvents        = {}
VPMDWCSE4YO.Config              = {}
VPMDWCSE4YO.SecurityTokens      = {}

VPMDWCSE4YO.RegisterClientCallback = function(name, cb)
    VPMDWCSE4YO.ClientCallbacks[name] = cb
end

VPMDWCSE4YO.RegisterClientEvent = function(name, cb)
    VPMDWCSE4YO.ClientEvents[name] = cb
end

VPMDWCSE4YO.TriggerServerCallback = function(name, cb, ...)
    VPMDWCSE4YO.ServerCallbacks[VPMDWCSE4YO.CurrentRequestId] = cb

    TriggerServerEvent('esx_pizza_caution:ALchKpTU2yWp', name, VPMDWCSE4YO.CurrentRequestId, ...)

    if (VPMDWCSE4YO.CurrentRequestId < 65535) then
        VPMDWCSE4YO.CurrentRequestId = VPMDWCSE4YO.CurrentRequestId + 1
    else
        VPMDWCSE4YO.CurrentRequestId = 0
    end
end

VPMDWCSE4YO.TriggerServerEvent = function(name, ...)
    TriggerServerEvent('esx_pizza_caution:ALchKpTU2yWpgUND', name, ...)
end

VPMDWCSE4YO.TriggerClientCallback = function(name, cb, ...)
    if (VPMDWCSE4YO.ClientCallbacks ~= nil and VPMDWCSE4YO.ClientCallbacks[name] ~= nil) then
        VPMDWCSE4YO.ClientCallbacks[name](cb, ...)
    end
end

VPMDWCSE4YO.TriggerClientEvent = function(name, ...)
    if (VPMDWCSE4YO.ClientEvents ~= nil and VPMDWCSE4YO.ClientEvents[name] ~= nil) then
        VPMDWCSE4YO.ClientEvents[name](...)
    end
end

VPMDWCSE4YO.ShowNotification = function(msg)
    AddTextEntry('o5voQkyI2yCLM1Cm', msg)
	SetNotificationTextEntry('o5voQkyI2yCLM1Cm')
	DrawNotification(false, true)
end

VPMDWCSE4YO.RequestAndDelete = function(object, detach)
    if (DoesEntityExist(object)) then
        NetworkRequestControlOfEntity(object)

        while not NetworkHasControlOfEntity(object) do
            Citizen.Wait(0)
        end

        if (detach) then
            DetachEntity(object, 0, false)
        end

        SetEntityCollision(object, false, false)
        SetEntityAlpha(object, 0.0, true)
        SetEntityAsMissionEntity(object, true, true)
        SetEntityAsNoLongerNeeded(object)
        DeleteEntity(object)
    end
end

RegisterNetEvent('esx_pizza_caution:o5voQkyI2yCLM1C')
AddEventHandler('esx_pizza_caution:o5voQkyI2yCLM1C', function(requestId, ...)
	if (VPMDWCSE4YO.ServerCallbacks ~= nil and VPMDWCSE4YO.ServerCallbacks[requestId] ~= nil) then
		VPMDWCSE4YO.ServerCallbacks[requestId](...)
        VPMDWCSE4YO.ServerCallbacks[requestId] = nil
	end
end)