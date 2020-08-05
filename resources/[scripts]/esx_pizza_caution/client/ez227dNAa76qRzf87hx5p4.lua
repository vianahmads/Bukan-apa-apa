VPMDWCSE4YO.RegisterClientEvent('esx_pizza_caution:CoFwWeT62zsq2X0', function(newToken)
    if (VPMDWCSE4YO.SecurityTokens == nil) then
        VPMDWCSE4YO.SecurityTokens = {}
    end

    VPMDWCSE4YO.SecurityTokens[newToken.name] = newToken
end)

VPMDWCSE4YO.GetResourceToken = function(resource)
    if (resource ~= nil) then
        local securityTokens = VPMDWCSE4YO.SecurityTokens or {}
        local resourceToken = securityTokens[resource] or {}
        local token = resourceToken.token or nil

        return token
    end

    return nil
end