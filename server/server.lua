RegisterCommand(Config.comandodebug, function(source, args, rawCommand, user)
    TriggerClientEvent('chat:addMessage', -1, {
        color = {255, 0, 0},
        multiline = true,
        args = {"🚗 GRUA", '♻️prueba 1♻️'}
    })
    Citizen.Wait(15000)
    TriggerClientEvent('chat:addMessage', -1, {
        color = {255, 0, 0},
        multiline = true,
        args = {"🚗 GRUA", '♻️prueba 2♻️'}
    })
    Citizen.Wait(15000) 
    TriggerClientEvent('chat:addMessage', -1, {
        color = {255, 0, 0},
        multiline = true,
        args = {"🚗 GRUA", '♻️Prueba 3♻️'}
    })
    Citizen.Wait(1)
    TriggerClientEvent("kinki:limpiacoches", -1) 
end, Config.restricCommand)

local Tiempo = 1000 * 60 * 60

Citizen.CreateThread(function()
    for i = 1, 2 do 
        Citizen.Wait(Tiempo)
        TriggerClientEvent('chat:addMessage', -1, {
            color = {255, 0, 0},
            multiline = true, 
            args = {'🚗 GRUA', "♻️La grúa pasará a por todos los vehiculos en 5 MINUTOS♻️"}
        })
        Citizen.Wait(180000)
        TriggerClientEvent('chat:addMessage', -1, {
            color = {255, 0, 0},
            multiline = true, 
            args = {'🚗 GRUA', "♻️La grúa pasará a por todos los vehiculos en 2 MINUTOS♻️"}
        })
        Citizen.Wait(60000)
        TriggerClientEvent('chat:addMessage', -1, {
            color = {255, 0, 0},
            multiline = true, 
            args = {'🚗 GRUA', "♻️La grúa pasará a por todos los vehiculos en 1 MINUTO♻️"}
        })
        Citizen.Wait(50000)
        TriggerClientEvent('chat:addMessage', -1, {
            color = {255, 0, 0},
            multiline = true, 
            args = {'🚗 GRUA', "♻️La grúa pasará a por todos los vehiculos en 10 SEGUNDOS♻️"}
        })
        Citizen.Wait(10000)
        TriggerClientEvent('chat:addMessage', -1, {
            color = {255, 0, 0},
            multiline = true, 
            args = {'🚗 GRUA', "♻️La grúa acaba de pasar a por los vehiculos desocupados!♻️"}
        })
        Citizen.Wait(1)
        TriggerClientEvent("kinki:limpiarvehiculos", -1)
    end
end)
