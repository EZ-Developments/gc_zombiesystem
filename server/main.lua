ESX  = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Players = {}

RegisterServerEvent("esx_zombiesystem:newplayer")
AddEventHandler("esx_zombiesystem:newplayer", function(id)
    Players[source] = id
    TriggerClientEvent("esx_zombiesystem:playerupdate", -1, Players)
end)

AddEventHandler("playerDropped", function(reason)
    Players[source] = nil
    TriggerClientEvent("esx_zombiesystem:clear", source)
    TriggerClientEvent("esx_zombiesystem:playerupdate", -1, Players)
end)

AddEventHandler("onResourceStop", function()
	 TriggerClientEvent("esx_zombiesystem:clear", -1)
end)

RegisterServerEvent('esx_zombiesystem:moneyloot')
AddEventHandler('esx_zombiesystem:moneyloot', function()
    local xPlayer = ESX.GetPlayerFromId(source)
	local random = math.random(1, 20)
    xPlayer.addMoney(random)
    TriggerClientEvent("esx:showNotification", xPlayer.source, ('You found ~g~$' .. random .. ' dolars'))
end)

RegisterServerEvent('esx_zombiesystem:itemloot')
AddEventHandler('esx_zombiesystem:itemloot', function(item)
    local xPlayer = ESX.GetPlayerFromId(source)
	local random = math.random(1, 3)
    if Inventory.CanCarryItem(source, item, random) then
        Inventory.AddItem(source, item, random, nil, {})
        TriggerClientEvent("esx:showNotification", xPlayer.source, ('You found ~y~' .. random .. 'x ~b~' .. item))
    else
        xPlayer.showNotification(DE.inventory_full)
    end
end)

Entitys = {}

RegisterServerEvent("RegisterNewZombie")
AddEventHandler("RegisterNewZombie", function(entity)
	TriggerClientEvent("ZombieSync", -1, entity)
	table.insert(Entitys, entity)
end)
