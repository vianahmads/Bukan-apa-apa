resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

description 'ESX THIEF'

version '1.0.1'

client_scripts {
    '@es_extended/locale.lua',
	'locales/pl.lua',
    'locales/en.lua',
    'locales/fr.lua',
    'config.lua',
    'client/main.lua'
}

server_scripts {
    '@es_extended/locale.lua',
	'locales/pl.lua',
    'locales/en.lua',
    'locales/fr.lua',
    'config.lua',
	'server/main.lua'
}