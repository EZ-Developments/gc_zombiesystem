Config = {}

-- Hier kannst du den Debug Modus an und ausstellen
Config.Debug = true 

Config.DiscordDebug = false
Config.DebugWebhook = ""

Config.LogDebug = true
Config.LogModules = ""

------------
---- Standard Einstellungen
------------

-- Targetsystem an/aus
Config.Tatget = false 
Config.TextUI = true 
Config.DrawText3D = false

Config.Options = {
    NoPeds = true,
    Blackout = true,
    MuteAmbience = true,
    NotHealthRecharge = false
}

Config.Support = {
    ["qs-fuelstations"] = true,
    ["qs-housing"] = true,
    ["qs-smartphone-pro"] = true,

    ["AdvancedParking"] = true,

    ["okokBanking"] = true,

    ["wasabi_ambulanc"] = true,
    ["rcore_shortcuts"] = true,
    ["rcore_guidebook"] = false,

}


Config.SpawnZombie = 250
Config.MinSpawnDistance = 60
Config.MaxSpawnDistance = 200
Config.DespawnDistance = 250


Config.SafeZone = {
    Enable = true,
    SafeZoneRadioBlip = true,
    SafeZoneCoords = {
	    {x = 226.56, y = -1993.84, z = 19.55, radio = 30.0}
	    --{x = 226.56, y = -1993.84, z = 19.55, radio = 30.0}
	    --{x = 226.56, y = -1993.84, z = 19.55, radio = 30.0}
	    --{x = 226.56, y = -1993.84, z = 19.55, radio = 30.0}
	   -- {x = 226.56, y = -1993.84, z = 19.55, radio = 30.0}
	    --{x = 226.56, y = -1993.84, z = 19.55, radio = 30.0}
    }
}

Config.ZombieDropLoot = true
Config.ProbabilityWeaponLoot = 3 -- 3%
Config.ProbabilityMoneyLoot = 33 -- 3-33 = 30%
Config.ProbabilityItemLoot = 53 -- 53-43-3 = 7%
--Weapons and Money are 40% and 60% is 'you not found nothing' alert, see the code to understand.
Config.WeaponLoot = {
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_PISTOL",
	"WEAPON_MACHETE",
	"WEAPON_CROWBAR",
	"WEAPON_BAT",
	"WEAPON_HATCHET"
}
Config.ItemLoot = {
	'bandage',
	'medikit'
}



Config.ObjectDropLoot = true --false if you experience low performance of server
Config.ObjectsLoot = {
    'prop_box_ammo03a'
}

Config.ProbabilityWeaponLootObject = 2 -- 2%
Config.ProbabilityMoneyLootObject = 22 -- 22-2 20%
Config.ProbabilityItemLootObject = 42 -- 52-22-2 18%
--Weapons and Money are 40% and 60% is 'you not found nothing' alert, see the code to understand.
Config.WeaponLootObject ={
	"WEAPON_ASSAULTRIFLE",
	"WEAPON_PUMPSHOTGUN",
	"WEAPON_PISTOL",
	"WEAPON_MACHETE",
	"WEAPON_CROWBAR",
	"WEAPON_BAT",
	"WEAPON_HATCHET"
}
Config.ItemLootObject = {
	'bread',
	'water'
}
