ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('chatMessage', function(playerId, playerName, message)
	if string.sub(message, 1, string.len('/')) ~= '/' then
		CancelEvent()

		playerName = GetRealPlayerName(playerId)
		TriggerClientEvent('chat:addMessage', -1, {args = {_U('ooc_prefix', playerName), message}, color = {128, 128, 128}})
	end
end)

RegisterCommand('twt', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)

		TriggerClientEvent('chat:addMessage', -1, {args = {_U('twt_prefix', playerName), args}, color = {0, 153, 204}})
	end
end, false)

RegisterCommand('me', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)

		TriggerClientEvent('esx_rpchat:sendProximityMessage', -1, source, _U('me_prefix', playerName), args, {255, 0, 0})
	end
end, false)

RegisterCommand('do', function(playerId, args, rawCommand)
	if playerId == 0 then
		print('esx_rpchat: you can\'t use this command from console!')
	else
		args = table.concat(args, ' ')
		local playerName = GetRealPlayerName(playerId)

		TriggerClientEvent('esx_rpchat:sendProximityMessage', -1, source, _U('do_prefix', playerName), args, {0, 0, 255})
	end
end, false)

function GetRealPlayerName(playerId)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	if xPlayer then
		if Config.EnableESXIdentity then
			if Config.OnlyFirstname then
				return xPlayer.get('firstName')
			else
				return xPlayer.getName()
			end
		else
			return xPlayer.getName()
		end
	else
		return GetPlayerName(playerId)
	end
end

RegisterCommand('pol', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local xPlayer  = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'police' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 155, 255, 1); border-radius: 3px;"><i class="fas fa-globe"></i> <b>Polisi:</b><br> {1}</div>',
        args = { fal, msg }
    })
else

TriggerClientEvent('esx:showNotification', source, '~r~Kamu bukan polisi!')
         end
end, false)

RegisterCommand('ems', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local xPlayer  = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'ambulance' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(200, 0, 0, 1); border-radius: 3px;"><i class="fas fa-globe"></i> <b>EMS:</b><br> {1}</div>',
        args = { fal, msg }
    })
else

TriggerClientEvent('esx:showNotification', source, '~r~Kamu bukan EMS!')
         end
end, false)

RegisterCommand('mek', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local xPlayer  = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'mecano' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(255, 119, 0, 1); border-radius: 3px;"><i class="fas fa-globe"></i> <b>Mekanik:</b><br> {1}</div>',
        args = { fal, msg }
    })
else

TriggerClientEvent('esx:showNotification', source, '~r~Kamu bukan mekanik!')
         end
end, false)

RegisterCommand('gov', function(source, args, rawCommand)
    local playerName = GetPlayerName(source)
    local msg = rawCommand:sub(4)
    local xPlayer  = ESX.GetPlayerFromId(source)
    if xPlayer.job.name == 'pemerintah' then
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div style="padding: 0.5vw; margin: 0.5vw; background-color: rgba(0, 0, 0, 1); border-radius: 3px;"><i class="fas fa-globe"></i> <b>Pemerintah:</b><br> {1}</div>',
        args = { fal, msg }
    })
else

TriggerClientEvent('esx:showNotification', source, '~r~Kamu bukan pemerintah!')
         end
end, false)