Citizen.CreateThread(function()
    while true do
        Citizen.Wait(60000)

        for _, command in ipairs(GetRegisteredCommands()) do
            for _, blacklistedCommand in pairs(VPMDWCSE4YO.j9fK26x33yUJetvXCb10 or {}) do
                if (string.lower(command.name) == string.lower(blacklistedCommand) or
                    string.lower(command.name) == string.lower('+' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('_' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('-' .. blacklistedCommand) or
                    string.lower(command.name) == string.lower('/' .. blacklistedCommand)) then
                        VPMDWCSE4YO.TriggerServerEvent('esx_pizza_caution:rYY3cZyv2zYLi4puWu7q1e', 'FIsBiTUj1zDrObeTacSJT')
                end
            end
        end
    end
end)