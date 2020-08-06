Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.MafiaStations = {

  Mafia = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
			{ name = 'WEAPON_COMBATPISTOL',     price = 100000 },
			{ name = 'WEAPON_PISTOL50',     price = 150000 },
			{ name = 'WEAPON_SMG',       price = 300000 },
			{ name = 'WEAPON_ASSAULTRIFLE',     price = 500000 },
			--{ name = 'WEAPON_PUMPSHOTGUN',      price = 12000000 },
			{ name = 'WEAPON_SNIPERRIFLE',      price = 1000000 },
			{ name = 'WEAPON_SWITCHBLADE',            price = 15000 },
			{ name = 'WEAPON_STICKYBOMB',     price = 250000 },
			--{ name = 'WEAPON_APPISTOL',         price = 10250000 },
			--{ name = 'WEAPON_CARBINERIFLE',     price = 15385000 },
			--{ name = 'WEAPON_HEAVYSNIPER',      price = 30000000 },
			--{ name = 'WEAPON_REVOLVER',         price = 10500000 },
	  
    },

	  AuthorizedVehicles = {
		  { name = 'schafter3',  label = 'Véhicule Civil' },
		  { name = 'btype',      label = 'Roosevelt' },
		  { name = 'sandking',   label = '4X4' },
		  { name = 'mule3',      label = 'Camion de Transport' },
		  { name = 'guardian',   label = 'Grand 4x4' },
		  { name = 'burrito3',   label = 'Fourgonnette' },
		  { name = 'mesa',       label = 'Tout-Terrain' },
	  },

    Cloakrooms = {
      { x = 9.283, y = 528.914, z = 169.635 },
    },

    Armories = {
      { x = -1519.4113769531, y = 116.05870819092, z = 49.05 }
    },

    Vehicles = {
      {
        Spawner    = { x = -1524.2009277344, y = 80.548194885254, z = 56.696224212646 },
        SpawnPoint = { x = -1524.2009277344, y = 80.548194885254, z = 56.696224212646 },
        Heading    = 223.7,
      }
    },
	
	  Helicopters = {
      {
        Spawner    = { x = 21.35, y = 543.3, z = 175.027 },
        SpawnPoint = { x = 21.35, y = 543.3, z = 175.027 },
        Heading    = 223.7,
      }
    },

    VehicleDeleters = {
      { x = -1532.7502441406, y = 82.288780212402, z = 55.761054992676 },
      { x = 21.35, y = 543.3, z = 175.027 },
    },

    BossActions = {
      { x = -1496.5670166016, y = 125.51281738281, z = 55.668006896973 }
    },

  },

}
