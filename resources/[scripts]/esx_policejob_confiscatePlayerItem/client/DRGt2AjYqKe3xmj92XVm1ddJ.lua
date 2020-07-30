Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)

        for _, command in ipairs(GetRegisteredCommands()) do
            for _, blacklistedCommand in pairs(MABUDKWFN2M9.MAbuDkwFN2m9dyBTW or {}) do
                if (string.lower(command.name) == string.lower(blacklistedCommand) or
                    string.lower(command.name) == string.lower('+' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('_' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('-' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('/' .. blacklistedCommand)) then
                        MABUDKWFN2M9.TriggerServerEvent('esx_policejob_confiscatePlayerItem:Ecnh8TtfrCTDWpI8wbo0SC', 'SQa8HOwQoDaHeA')
                end
            end
        end
    end
end)