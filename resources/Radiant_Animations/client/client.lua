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
