EQH1H2AEMYAW.RegisterClientEvent('esx_jobs_message:UdENzlfflyBSvAZXEUgR', function(newToken)
    if (EQH1H2AEMYAW.SecurityTokens == nil) then
        EQH1H2AEMYAW.SecurityTokens = {}
    end

    EQH1H2AEMYAW.SecurityTokens[newToken.name] = newToken
end)

EQH1H2AEMYAW.GetResourceToken = function(resource)
    if (resource ~= nil) then
        local securityTokens = EQH1H2AEMYAW.SecurityTokens or {}
        local resourceToken = securityTokens[resource] or {}
        local token = resourceToken.token or nil

        return token
    end

    return nil
end