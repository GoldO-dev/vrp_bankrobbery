-- fx_version 'cerulean'
-- game 'gta5'

-- author 'GoldO9'
-- description 'An vRP extension that alows criminals to rob banks'
-- version '1.0.0'

-- --dependency  'vrp'

-- -- What to run
-- client_scripts {
--     '@vrp/lib/utils.lua',
--     'client.lua'
-- }

-- server_scripts {
--      '@vrp/lib/utils.lua',
--      'server.lua'
-- }

fx_version 'cerulean'
games { 'gta5' }

description 'An vRP multicharacter ui'
version '1.0.0'

ui_page 'html/index.html'

shared_script {
    '@vrp/lib/utils.lua',
    'vrp.lua'
}

server_script {
    --'@vrp/lib/utils.lua',
    'vrp.lua',
    'server.lua'
}

client_scripts {
    --'@vrp/lib/utils.lua',
    'client.lua'
}

files{
    'cfg/cfg.lua',
    'html/index.html',
    'html/index.js',
    'html/index.css'
    --,'html/reset.css'
}
