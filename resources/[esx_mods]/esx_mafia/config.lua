Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 2.0, y = 2.0, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = false -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'id'

Config.MafiaStations = {

	Mafia = {

		AuthorizedWeapons = {
			{ name = 'WEAPON_COMBATPISTOL',     price = 35000 },
			{ name = 'WEAPON_PISTOL50',     price = 50000 },
			{ name = 'WEAPON_SMG',       price = 100000 },
			{ name = 'WEAPON_ASSAULTRIFLE',     price = 150000 },
			--{ name = 'WEAPON_PUMPSHOTGUN',      price = 12000000 },
			{ name = 'WEAPON_SNIPERRIFLE',      price = 200000 },
			--{ name = 'WEAPON_BZGAS',            price = 500000 },
			{ name = 'WEAPON_STICKYBOMB',     price = 75000 },
			--{ name = 'WEAPON_APPISTOL',         price = 10250000 },
			--{ name = 'WEAPON_CARBINERIFLE',     price = 15385000 },
			--{ name = 'WEAPON_HEAVYSNIPER',      price = 30000000 },
			--{ name = 'WEAPON_REVOLVER',         price = 10500000 },
	  
		  },
	  
			AuthorizedVehicles = {
				{ name = 'schafter3',  label = 'Civil vehicle' },
				{ name = 'btype',      label = 'Roosevelt' },
				{ name = 'sandking',   label = '4X4' },
				{ name = 'mule3',      label = 'Transport truck' },
				{ name = 'guardian',   label = 'Grand 4x4' },
				{ name = 'burrito3',   label = 'minivan' },
				{ name = 'mesa',       label = 'Tout-Terrain' },
			},
	  

		Cloakrooms = {
			vector3(-1531.2329101563, 142.45376586914, 55.667976379395)
		},

		Armories = {
			vector3(-1507.759765625, 105.11976623535, 52.240760803223)
		},

		Vehicles = {
			{
				Spawner = vector3(-1524.2009277344, 80.548194885254, 56.696224212646),
				SpawnPoints = {
					{ coords = vector3(-1526.1616210938, 97.160385131836, 56.666744232178), heading = 223.7, radius = 6.0 }
				}
			}
		},

		VehicleDeleters = {
			{ x = -1532.7502441406, y = 82.288780212402, z = 55.761054992676 },
		},

		BossActions = {
			vector3(-1496.5670166016, 125.51281738281, 55.668006896973)
		}

	}

}
