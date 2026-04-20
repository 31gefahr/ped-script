RegisterNetEvent('vural:client:SetPed', function(modelName)
    if IsModelInCdimage(modelName) and IsModelValid(modelName) then
        RequestModel(modelName)
        
        local timeout = 0
        while not HasModelLoaded(modelName) and timeout < 500 do
            Wait(10)
            timeout = timeout + 1
        end

        if HasModelLoaded(modelName) then
            SetPlayerModel(PlayerId(), modelName)
            SetModelAsNoLongerNeeded(modelName)
            
            SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))
        end
    end
end)
