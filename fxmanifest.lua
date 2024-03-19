fx_version 'bodacious'
games { 'gta5' }

name 'gc_zombiesystem'
author 'Easydomii'
description 'Galaxy Survival System'
version '1.0.1'
lua54 "yes"

shared_scripts {
    '@ox_lib/init.lua',
    'config/config.lua',
    'config/strings.lua',
}

client_scripts {
    'client/function.lua',
	'client/main.lua',
	'client/loot.lua'
}

server_scripts {
    'server/function.lua',
	'server/main.lua',
    'server/updater.lua',
}