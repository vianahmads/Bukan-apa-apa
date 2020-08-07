local open = false
local ESX	 = nil

-- ESX
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

-- Open ID card
RegisterNetEvent('jsfour-idcard:open')
AddEventHandler('jsfour-idcard:open', function( data, type )
	open = true
	SendNUIMessage({
		action = "open",
		array  = data,
		type   = type
	})
end)

-- Key events
Citizen.CreateThread(function()
	while true do
		Wait(0)
		if IsControlJustReleased(0, 322) and open or IsControlJustReleased(0, 177) and open then
			SendNUIMessage({
				action = "close"
			})
			open = false
		end
	end
end)

RegisterCommand("lihatktp", function()
   cekKTP()
end)

function cekKTP()
	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
end

RegisterCommand("lihatsim", function()
   cekSIM()
end)

function cekSIM()
	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
end

RegisterCommand("lihatlisensi", function()
   cekLISENSI()
end)

function cekLISENSI()
	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
end

RegisterCommand("menunjukkanktp", function()
   menunjukkanKTP()
end)

function menunjukkanKTP()
	local player, distance = ESX.Game.GetClosestPlayer()
	if distance ~= -1 and distance <= 1.5 then
		TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
	else
		ESX.ShowNotification('No players nearby')
	end
end

RegisterCommand("menunjukkansim", function()
   menunjukkanSIM()
end)

function menunjukkanSIM()
	local player, distance = ESX.Game.GetClosestPlayer()
	if distance ~= -1 and distance <= 1.5 then
		TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
	else
		ESX.ShowNotification('No players nearby')
	end
end

RegisterCommand("menunjukkanlisensi", function()
   menunjukkanLISENSI()
end)

function menunjukkanLISENSI()
	local player, distance = ESX.Game.GetClosestPlayer()
	if distance ~= -1 and distance <= 1.5 then
		TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon')
	else
		ESX.ShowNotification('No players nearby')
	end
end