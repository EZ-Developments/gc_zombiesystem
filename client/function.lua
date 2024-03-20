ESX = nil -- exports

PlayerData = {}
PlayerLoaded = false


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
    PlayerLoaded = false
end)



function ShowTooltip(message)
    SetTextComponentFormat("STRING")
    AddTextComponentString(message)
    EndTextCommandDisplayHelp(0, 0, 0, 4000)
end

function RemoveHandWeapons()
    SetCurrentPedWeapon(PlayerPedId(), -1569615261, true)
end

function Draw3DText(coords, textInput, scaleX)
    scaleX = scaleX * (Config.textScale or 1.0)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, coords, true)
    local scale = (1 / dist) * 20
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov

    SetTextScale(scaleX * scale, scaleX * scale)
    SetTextFont(Config.textFont or 4)
    SetTextProportional(1)
    SetTextDropshadow(1, 1, 1, 1, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(textInput)
    SetDrawOrigin(coords, 0)
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end

function AddEntityToTargeting(entity, hash, message, event, key)
    

        local system = "ox_target"

        
        local options = {
            {
                type = 'client',
                event = event,
                icon = 'fas fa-egg',
                label = message,
                key = key
            }
        }
    
        if system == 'ox-target' or system == 'ox_target' then
            exports[system]:addLocalEntity({entity}, options)
        else
            exports[system]:AddEntityZone(hash, entity, {
                name = hash,
                debugPoly = false,
                useZ = true,
            }, {
                options = options,
                distance = 1.5
            })
        end
    
end




