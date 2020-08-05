RegisterNetEvent('esx_rpchat:sendProximityMessage')
AddEventHandler('esx_rpchat:sendProximityMessage', function(playerId, title, message, color)
	local player = PlayerId()
	local target = GetPlayerFromServerId(playerId)

	local playerPed, targetPed = PlayerPedId(), GetPlayerPed(target)
	local playerCoords, targetCoords = GetEntityCoords(playerPed), GetEntityCoords(targetPed)

	if target == player or #(playerCoords - targetCoords) < 20 then
		TriggerEvent('chat:addMessage', {args = {title, message}, color = color})
	end
end)

Citizen.CreateThread(function()
	--TriggerEvent('chat:addSuggestion', '/twt',  _U('twt_help'),  {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/me',   _U('me_help'),   {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/do',   _U('do_help'),   {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/pol',   _U('me_help'),   {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/ems',   _U('me_help'),   {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/mek',   _U('me_help'),   {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
	TriggerEvent('chat:addSuggestion', '/gov',   _U('me_help'),   {{name = _U('generic_argument_name'), help = _U('generic_argument_help')}})
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		--TriggerEvent('chat:removeSuggestion', '/twt')
		TriggerEvent('chat:removeSuggestion', '/me')
		TriggerEvent('chat:removeSuggestion', '/do')
		TriggerEvent('chat:removeSuggestion', '/pol')
		TriggerEvent('chat:removeSuggestion', '/ems')
		TriggerEvent('chat:removeSuggestion', '/mek')
		TriggerEvent('chat:removeSuggestion', '/gov')
	end
end)
