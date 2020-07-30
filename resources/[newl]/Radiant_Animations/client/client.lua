local playerCurrentlyAnimated = false
local playerCurrentlyHasProp = false
local playerCurrentlyHasWalkstyle = false
local surrendered = false
local firstAnim = true
local playerPropList = {}
local LastAD

Citizen.CreateThread( function()

	while true do
		Citizen.Wait(5)
		if (IsControlJustPressed(0,Config.RadioKey))  then
			local player = PlayerPedId()
			if ( DoesEntityExist( player ) and not IsEntityDead( player ) ) then 

				if IsEntityPlayingAnim(player, "random@arrests", "generic_radio_chatter", 3) then
					ClearPedSecondaryTask(player)
				else
					loadAnimDict( "random@arrests" )
					TaskPlayAnim(player, "random@arrests", "generic_radio_chatter", 2.0, 2.5, -1, 49, 0, 0, 0, 0 )
					RemoveAnimDict("random@arrests")
				end
			end
		end
	end
end)

RegisterNetEvent('Radiant_Animations:Surrender')  -- Too many waits to make it work properly within the config
AddEventHandler('Radiant_Animations:Surrender', function()
	local player = PlayerPedId()
	local ad = "random@arrests"
	local ad2 = "random@arrests@busted"

	if ( DoesEntityExist( player ) and not IsEntityDead( player )) then 
		loadAnimDict( ad )
		loadAnimDict( ad2 )
		if ( IsEntityPlayingAnim( player, ad2, "idle_a", 3 ) ) then 
			TaskPlayAnim( player, ad2, "exit", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
			Wait (3000)
			TaskPlayAnim( player, ad, "kneeling_arrest_get_up", 8.0, 1.0, -1, 128, 0, 0, 0, 0 )
			RemoveAnimDict("random@arrests@busted")
			RemoveAnimDict("random@arrests" )
			surrendered = false
			LastAD = ad
			playerCurrentlyAnimated = false
		else

			TaskPlayAnim( player, "random@arrests", "idle_2_hands_up", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
			Wait (4000)
			TaskPlayAnim( player, "random@arrests", "kneeling_arrest_idle", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
			Wait (500)
			TaskPlayAnim( player, "random@arrests@busted", "enter", 8.0, 1.0, -1, 2, 0, 0, 0, 0 )
			Wait (1000)
			TaskPlayAnim( player, "random@arrests@busted", "idle_a", 8.0, 1.0, -1, 9, 0, 0, 0, 0 )
			Wait(100)
			surrendered = true
			playerCurrentlyAnimated = true
			LastAD = ad2
			RemoveAnimDict("random@arrests" )
			RemoveAnimDict("random@arrests@busted")
		end     
	end

	Citizen.CreateThread(function() --disabling controls while surrendering
		while surrendered do
			Citizen.Wait(1000)
			if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@arrests@busted", "idle_a", 3) then
				DisableControlAction(1, 140, true)
				DisableControlAction(1, 141, true)
				DisableControlAction(1, 142, true)
				DisableControlAction(0,21,true)
			end
		end
	end)
end)
