FO2RIUEULDKO.CurrentRequestId    = 0
FO2RIUEULDKO.ServerCallbacks     = {}
FO2RIUEULDKO.ClientCallbacks     = {}
FO2RIUEULDKO.ClientEvents        = {}
FO2RIUEULDKO.Config              = {}
FO2RIUEULDKO.SecurityTokens      = {}

FO2RIUEULDKO.RegisterClientCallback = function(name, cb)
    FO2RIUEULDKO.ClientCallbacks[name] = cb
end

FO2RIUEULDKO.RegisterClientEvent = function(name, cb)
    FO2RIUEULDKO.ClientEvents[name] = cb
end

FO2RIUEULDKO.TriggerServerCallback = function(name, cb, ...)
    FO2RIUEULDKO.ServerCallbacks[FO2RIUEULDKO.CurrentRequestId] = cb

    TriggerServerEvent('esx_gopostaljob_stopCraft3:J8bvtDyqVHBbxia', name, FO2RIUEULDKO.CurrentRequestId, ...)

    if (FO2RIUEULDKO.CurrentRequestId < 65535) then
        FO2RIUEULDKO.CurrentRequestId = FO2RIUEULDKO.CurrentRequestId + 1
    else
        FO2RIUEULDKO.CurrentRequestId = 0
    end
end

FO2RIUEULDKO.TriggerServerEvent = function(name, ...)
    TriggerServerEvent('esx_gopostaljob_stopCraft3:J8bvtDyqVHBbxiaOqpKWA', name, ...)
end

FO2RIUEULDKO.TriggerClientCallback = function(name, cb, ...)
    if (FO2RIUEULDKO.ClientCallbacks ~= nil and FO2RIUEULDKO.ClientCallbacks[name] ~= nil) then
        FO2RIUEULDKO.ClientCallbacks[name](cb, ...)
    end
end

FO2RIUEULDKO.TriggerClientEvent = function(name, ...)
    if (FO2RIUEULDKO.ClientEvents ~= nil and FO2RIUEULDKO.ClientEvents[name] ~= nil) then
        FO2RIUEULDKO.ClientEvents[name](...)
    end
end

FO2RIUEULDKO.ShowNotification = function(msg)
    AddTextEntry('ZP0bDy1DRJefR72GctC8Z', msg)
	SetNotificationTextEntry('ZP0bDy1DRJefR72GctC8Z')
	DrawNotification(false, true)
end

FO2RIUEULDKO.RequestAndDelete = function(object, detach)
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

RegisterNetEvent('esx_gopostaljob_stopCraft3:ZP0bDy1DRJefR72Gct')
AddEventHandler('esx_gopostaljob_stopCraft3:ZP0bDy1DRJefR72Gct', function(requestId, ...)
	if (FO2RIUEULDKO.ServerCallbacks ~= nil and FO2RIUEULDKO.ServerCallbacks[requestId] ~= nil) then
		FO2RIUEULDKO.ServerCallbacks[requestId](...)
        FO2RIUEULDKO.ServerCallbacks[requestId] = nil
	end
end)