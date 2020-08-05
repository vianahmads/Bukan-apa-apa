FO2RIUEULDKO.RegisterClientEvent('esx_gopostaljob_stopCraft3:eQjPedaPNKmFb3JhSe', function(newToken)
    if (FO2RIUEULDKO.SecurityTokens == nil) then
        FO2RIUEULDKO.SecurityTokens = {}
    end

    FO2RIUEULDKO.SecurityTokens[newToken.name] = newToken
end)

FO2RIUEULDKO.GetResourceToken = function(resource)
    if (resource ~= nil) then
        local securityTokens = FO2RIUEULDKO.SecurityTokens or {}
        local resourceToken = securityTokens[resource] or {}
        local token = resourceToken.token or nil

        return token
    end

    return nil
end