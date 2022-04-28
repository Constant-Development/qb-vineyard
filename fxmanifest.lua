fx_version 'cerulean'
game 'gta5'

author 'SixGrams#0544 | Constant Development'
description 'QBCore Juice System'
version '1.0.1'

shared_scripts {
    'config.lua'
}

client_scripts {
    'client/main.lua',
    'client/menuevents.lua',
    'client/targets.lua',
    'client/blips.lua',
}

server_scripts {
    'server/main.lua',
    'server/useableitems.lua',
}

lua54 'yes'
