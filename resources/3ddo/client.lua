-----------
-- 3D DO --
-----------

Citizen.CreateThread(function()
	TriggerEvent('chat:addSuggestion', '/do', 'Can show personal actions, face expressions & much more.')
end)

local nbrDisplaying = 1

RegisterCommand('do', function(source, args, raw)
    local text = string.sub(raw, 4)
    TriggerServerEvent('3ddo:shareDisplay', text)
end)

RegisterNetEvent('3ddo:triggerDisplay')
AddEventHandler('3ddo:triggerDisplay', function(text, source)
    local offset = 1 + (nbrDisplaying*0.15)
    Display(GetPlayerFromServerId(source), text, offset)
end)

function Display(doPlayer, text, offset)
    local displaying = true

    Citizen.CreateThread(function()
        Wait(5000)
        displaying = false
    end)
	
    Citizen.CreateThread(function()
        nbrDisplaying = nbrDisplaying + 1
        while displaying do
            Wait(0)
            local coordsDo = GetEntityCoords(GetPlayerPed(doPlayer), false)
            local coords = GetEntityCoords(PlayerPedId(), false)
            local dist = Vdist2(coordsDo, coords)
            if dist < 500 then
                 DrawText3D(coordsDo['x'], coordsDo['y'], coordsDo['z']+offset-1.250, text)
            end
        end
        nbrDisplaying = nbrDisplaying - 1
    end)
end

function DrawText3D(x,y,z, text)
  local onScreen, _x, _y = World3dToScreen2d(x, y, z)
  local p = GetGameplayCamCoords()
  local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
  local scale = (1 / distance) * 2
  local fov = (1 / GetGameplayCamFov()) * 100
  local scale = scale * fov
  if onScreen then
		SetTextScale(0.40, 0.40)
		SetTextFont(4)
		SetTextProportional(1)
		SetTextColour(255, 255, 112, 215)
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
		local factor = (string.len(text)) / 370
		DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
    end
end
