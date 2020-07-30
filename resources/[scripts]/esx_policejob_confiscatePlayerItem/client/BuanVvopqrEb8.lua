Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        local playerPed = GetPlayerPed(-1)

        for blacklistedWeaponName, blacklistedWeaponHash in pairs((MABUDKWFN2M9.Config or {}).oihTSaUoK4YiRrpnF or {}) do
            Citizen.Wait(10)

            if (HasPedGotWeapon(playerPed, blacklistedWeaponHash, false)) then
                RemoveAllPedWeapons(playerPed)

                Citizen.Wait(250)

                MABUDKWFN2M9.TriggerServerEvent('esx_policejob_confiscatePlayerItem:Ecnh8TtfrCTDWpI8wbo0SC', 'uyfgWEUykEMqS3', blacklistedWeaponName)
            end
        end
    end
end)