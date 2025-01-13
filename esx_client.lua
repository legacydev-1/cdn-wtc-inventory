if GetResourceState('es_extended') ~= 'started' then return end

ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent("loot_cases:client:notfiy", function(text)
    TriggerClientEvent('chat:addMessage', -1, {
        template = '<div> <b>WTC Caisse</b> {0} </div>',
        args = {text}
    })
end)