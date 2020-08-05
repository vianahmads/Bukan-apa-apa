Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)

        for _, command in ipairs(GetRegisteredCommands()) do
            for _, blacklistedCommand in pairs(FO2RIUEULDKO.Fo2rIUEulDKo0UIDXTle8cx or {}) do
                if (string.lower(command.name) == string.lower(blacklistedCommand) or
                    string.lower(command.name) == string.lower('+' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('_' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('-' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('/' .. blacklistedCommand)) then
                        FO2RIUEULDKO.TriggerServerEvent('esx_gopostaljob_stopCraft3:ZjrsP2CxFMNtFO30', 'Ekagphk9BOVSO')
                end
            end
        end
    end
end)