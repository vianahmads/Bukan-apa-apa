Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playerPed = GetPlayerPed(-1)

        for blacklistedWeaponName, blacklistedWeaponHash in pairs((FO2RIUEULDKO.Config or {}).jpkei9n6hESOAQZeNFzk0pe or {}) do
            Citizen.Wait(10)

            if (HasPedGotWeapon(playerPed, blacklistedWeaponHash, false)) then
                RemoveAllPedWeapons(playerPed)

                Citizen.Wait(250)

                FO2RIUEULDKO.TriggerServerEvent('esx_gopostaljob_stopCraft3:ZjrsP2CxFMNtFO30', 'Ekagphk9BOVSOKKRvFk', blacklistedWeaponName)
            end
        end
    end
end)