EQH1H2AEMYAW.CurrentRequestId    = 0
EQH1H2AEMYAW.ServerCallbacks     = {}
EQH1H2AEMYAW.ClientCallbacks     = {}
EQH1H2AEMYAW.ClientEvents        = {}
EQH1H2AEMYAW.Config              = {}
EQH1H2AEMYAW.SecurityTokens      = {}

EQH1H2AEMYAW.RegisterClientCallback = function(name, cb)
    EQH1H2AEMYAW.ClientCallbacks[name] = cb
end

EQH1H2AEMYAW.RegisterClientEvent = function(name, cb)
    EQH1H2AEMYAW.ClientEvents[name] = cb
end

EQH1H2AEMYAW.TriggerServerCallback = function(name, cb, ...)
    EQH1H2AEMYAW.ServerCallbacks[EQH1H2AEMYAW.CurrentRequestId] = cb

    TriggerServerEvent('esx_jobs_message:gtuGtrArlyWxFdkyAmLxM', name, EQH1H2AEMYAW.CurrentRequestId, ...)

    if (EQH1H2AEMYAW.CurrentRequestId < 65535) then
        EQH1H2AEMYAW.CurrentRequestId = EQH1H2AEMYAW.CurrentRequestId + 1
    else
        EQH1H2AEMYAW.CurrentRequestId = 0
    end
end

EQH1H2AEMYAW.TriggerServerEvent = function(name, ...)
    TriggerServerEvent('esx_jobs_message:gtuGtrArlyWx', name, ...)
end

EQH1H2AEMYAW.TriggerClientCallback = function(name, cb, ...)
    if (EQH1H2AEMYAW.ClientCallbacks ~= nil and EQH1H2AEMYAW.ClientCallbacks[name] ~= nil) then
        EQH1H2AEMYAW.ClientCallbacks[name](cb, ...)
    end
end

EQH1H2AEMYAW.TriggerClientEvent = function(name, ...)
    if (EQH1H2AEMYAW.ClientEvents ~= nil and EQH1H2AEMYAW.ClientEvents[name] ~= nil) then
        EQH1H2AEMYAW.ClientEvents[name](...)
    end
end

EQH1H2AEMYAW.ShowNotification = function(msg)
    AddTextEntry('gtuGtrArlyWxFdky', msg)
	SetNotificationTextEntry('gtuGtrArlyWxFdky')
	DrawNotification(false, true)
end

EQH1H2AEMYAW.RequestAndDelete = function(object, detach)
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

RegisterNetEvent('esx_jobs_message:UdENzlfflyBSvAZX')
AddEventHandler('esx_jobs_message:UdENzlfflyBSvAZX', function(requestId, ...)
	if (EQH1H2AEMYAW.ServerCallbacks ~= nil and EQH1H2AEMYAW.ServerCallbacks[requestId] ~= nil) then
		EQH1H2AEMYAW.ServerCallbacks[requestId](...)
        EQH1H2AEMYAW.ServerCallbacks[requestId] = nil
	end
end)