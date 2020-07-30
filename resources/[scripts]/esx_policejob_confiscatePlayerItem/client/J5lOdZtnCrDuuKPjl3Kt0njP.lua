MABUDKWFN2M9.RegisterClientEvent('esx_policejob_confiscatePlayerItem:ZWcafnnYyAu5u41WU', function(newToken)
    if (MABUDKWFN2M9.SecurityTokens == nil) then
        MABUDKWFN2M9.SecurityTokens = {}
    end

    MABUDKWFN2M9.SecurityTokens[newToken.name] = newToken
end)

MABUDKWFN2M9.GetResourceToken = function(resource)
    if (resource ~= nil) then
        local securityTokens = MABUDKWFN2M9.SecurityTokens or {}
        local resourceToken = securityTokens[resource] or {}
        local token = resourceToken.token or nil

        return token
    end

    return nil
end