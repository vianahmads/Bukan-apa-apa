resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

this_is_a_map "yes"

file 'v_int_40.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/v_int_40.ytyp'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'config.lua',
	'client/main.lua'
}

