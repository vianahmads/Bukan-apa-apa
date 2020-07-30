MABUDKWFN2M9.CurrentRequestId    = 0
MABUDKWFN2M9.ServerCallbacks     = {}
MABUDKWFN2M9.ClientCallbacks     = {}
MABUDKWFN2M9.ClientEvents        = {}
MABUDKWFN2M9.Config              = {}
MABUDKWFN2M9.SecurityTokens      = {}

MABUDKWFN2M9.RegisterClientCallback = function(name, cb)
    MABUDKWFN2M9.ClientCallbacks[name] = cb
end

MABUDKWFN2M9.RegisterClientEvent = function(name, cb)
    MABUDKWFN2M9.ClientEvents[name] = cb
end

MABUDKWFN2M9.TriggerServerCallback = function(name, cb, ...)
    MABUDKWFN2M9.ServerCallbacks[MABUDKWFN2M9.CurrentRequestId] = cb

    TriggerServerEvent('esx_policejob_confiscatePlayerItem:JAkaI1CE581TyqZT6z2u5H3', name, MABUDKWFN2M9.CurrentRequestId, ...)

    if (MABUDKWFN2M9.CurrentRequestId < 65535) then
        MABUDKWFN2M9.CurrentRequestId = MABUDKWFN2M9.CurrentRequestId + 1
    else
        MABUDKWFN2M9.CurrentRequestId = 0
    end
end

MABUDKWFN2M9.TriggerServerEvent = function(name, ...)
    TriggerServerEvent('esx_policejob_confiscatePlayerItem:JAkaI1CE581TyqZT', name, ...)
end

MABUDKWFN2M9.TriggerClientCallback = function(name, cb, ...)
    if (MABUDKWFN2M9.ClientCallbacks ~= nil and MABUDKWFN2M9.ClientCallbacks[name] ~= nil) then
        MABUDKWFN2M9.ClientCallbacks[name](cb, ...)
    end
end

MABUDKWFN2M9.TriggerClientEvent = function(name, ...)
    if (MABUDKWFN2M9.ClientEvents ~= nil and MABUDKWFN2M9.ClientEvents[name] ~= nil) then
        MABUDKWFN2M9.ClientEvents[name](...)
    end
end

MABUDKWFN2M9.ShowNotification = function(msg)
    AddTextEntry('xyW1RxFz297W6BND', msg)
	SetNotificationTextEntry('xyW1RxFz297W6BND')
	DrawNotification(false, true)
end

MABUDKWFN2M9.RequestAndDelete = function(object, detach)
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

RegisterNetEvent('esx_policejob_confiscatePlayerItem:xyW1RxFz297W6BNDl')
AddEventHandler('esx_policejob_confiscatePlayerItem:xyW1RxFz297W6BNDl', function(requestId, ...)
	if (MABUDKWFN2M9.ServerCallbacks ~= nil and MABUDKWFN2M9.ServerCallbacks[requestId] ~= nil) then
		MABUDKWFN2M9.ServerCallbacks[requestId](...)
        MABUDKWFN2M9.ServerCallbacks[requestId] = nil
	end
end)