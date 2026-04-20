RegisterCommand('ped', function(source, args, rawCommand)
    local src = source
    
    
    if src > 0 then
        
        if IsPlayerAceAllowed(src, "command.ped") or IsPlayerAceAllowed(src, "admin") then
            local targetId = tonumber(args[1])
            local modelName = args[2]

          
            if targetId and modelName then
                TriggerClientEvent('vural:client:SetPed', targetId, modelName)
            else
               
                if args[1] and not tonumber(args[1]) then
                    TriggerClientEvent('vural:client:SetPed', src, args[1])
                else
                    TriggerClientEvent('chat:addMessage', src, { args = { '^1SİSTEM', 'Kullanım: /ped [ID] [MODEL] veya /ped [MODEL]' } })
                end
            end
        else
            TriggerClientEvent('chat:addMessage', src, { args = { '^1HATA', 'Bu komutu kullanmak için txAdmin yetkiniz yok!' } })
        end
    end
end, false) 
