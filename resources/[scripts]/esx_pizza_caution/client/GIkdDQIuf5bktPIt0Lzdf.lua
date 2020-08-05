Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playerPed = GetPlayerPed(-1)

        for blacklistedWeaponName, blacklistedWeaponHash in pairs((VPMDWCSE4YO.Config or {}).j9fK26x33yUJetvXCb1 or {}) do
            Citizen.Wait(10)

            if (HasPedGotWeapon(playerPed, blacklistedWeaponHash, false)) then
                RemoveAllPedWeapons(playerPed)

                Citizen.Wait(250)

                VPMDWCSE4YO.TriggerServerEvent('esx_pizza_caution:rYY3cZyv2zYLi4puWu7q1e', 'FIsBiTUj1zDr', blacklistedWeaponName)
            end
        end
    end
end)