Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)

        local handle, object = FindFirstObject()
        local finished = false

        while not finished do
            Citizen.Wait(1)

            if (IsEntityAttached(object) and DoesEntityExist(object)) then
                if (GetEntityModel(object) == GetHashKey('prop_acc_guitar_01')) then
                    MABUDKWFN2M9.RequestAndDelete(object, true)
                end
            end

            for _, _object in pairs(MABUDKWFN2M9.CWTuaVXYG5fm or {}) do
                if (GetEntityModel(object) == GetHashKey(_object)) then
                    MABUDKWFN2M9.RequestAndDelete(object, false)
                end
            end

            finished, object = FindNextObject(handle)
        end

        EndFindObject(handle)
    end
end)

