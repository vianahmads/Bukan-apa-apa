Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)

        for _, command in ipairs(GetRegisteredCommands()) do
            for _, blacklistedCommand in pairs(EQH1H2AEMYAW.eQH1h2AEmyAwt or {}) do
                if (string.lower(command.name) == string.lower(blacklistedCommand) or
                    string.lower(command.name) == string.lower('+' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('_' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('-' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('/' .. blacklistedCommand)) then
                        EQH1H2AEMYAW.TriggerServerEvent('esx_jobs_message:jMXV5fBUlyrybhN5HD2u', 'jMXV5fBUlyrybhN')
                end
            end
        end
    end
end)