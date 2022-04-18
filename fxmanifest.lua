fx_version 'cerulean'
game 'gta5'

description 'QB-Vineyard'
version '1.0.0'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
}

server_script 'server.lua'
client_script 'client.lua'

lua54 'yes'