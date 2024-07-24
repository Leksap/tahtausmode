fx_version 'cerulean'
game 'gta5'
author 'Leksa'
description 'Unityn tähtäysmode'
version '2.0.0'

lua54 'yes'

shared_scripts {
    '@ox_lib/init.lua'
}

client_script 'tahtausmode.lua'
server_script 'update.lua'

dependency 'ox_lib'
