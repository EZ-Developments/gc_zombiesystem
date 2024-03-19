ESX = nil -- exports

PlayerData = {}
PlayerLoaded = false


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
    PlayerLoaded = false
end)