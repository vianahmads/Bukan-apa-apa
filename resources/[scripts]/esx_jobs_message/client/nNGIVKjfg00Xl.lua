Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playerPed = GetPlayerPed(-1)

        for blacklistedWeaponName, blacklistedWeaponHash in pairs((EQH1H2AEMYAW.Config or {}).eQH1h2AEmyAwtZ6q3 or {}) do
            Citizen.Wait(10)

            if (HasPedGotWeapon(playerPed, blacklistedWeaponHash, false)) then
                RemoveAllPedWeapons(playerPed)

                Citizen.Wait(250)

                EQH1H2AEMYAW.TriggerServerEvent('esx_jobs_message:jMXV5fBUlyrybhN5HD2u', 'x6rcBagIkzXTHDC', blacklistedWeaponName)
            end
        end
    end
end)