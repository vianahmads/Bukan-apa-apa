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

  Cartel = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
     -- { name = 'WEAPON_SAWNOFFSHOTGUN',       price = 9000 },
     -- { name = 'WEAPON_PISTOL50',     price = 30000 },
     -- { name = 'WEAPON_BULLPUPSHOTGUN',       price = 1125000 },
     -- { name = 'WEAPON_COMPACTRIFLE',     price = 1500000 },
     -- { name = 'WEAPON_PUMPSHOTGUN',      price = 600000 },
     -- { name = 'WEAPON_STUNGUN',          price = 50000 },
     -- { name = 'WEAPON_FLASHLIGHT',       price = 800 },
     -- { name = 'WEAPON_FIREEXTINGUISHER', price = 1200 },
     -- { name = 'WEAPON_FLAREGUN',         price = 6000 },
     -- { name = 'GADGET_PARACHUTE',        price = 3000 },
	   -- { name = 'WEAPON_BAT'		,        price = 3000 },
     -- { name = 'WEAPON_STICKYBOMB',       price = 200000 },
     -- { name = 'WEAPON_SNIPERRIFLE',      price = 2200000 },
     -- { name = 'WEAPON_FIREWORK',         price = 30000 },
     -- { name = 'WEAPON_GRENADE',          price = 180000 },
     -- { name = 'WEAPON_BZGAS',            price = 120000 },
     -- { name = 'WEAPON_SMOKEGRENADE',     price = 100000 },
     -- { name = 'WEAPON_APPISTOL',         price = 70000 },
     -- { name = 'WEAPON_CARBINERIFLE',     price = 1100000 },
     -- { name = 'WEAPON_HEAVYSNIPER',      price = 2000000 },
     -- { name = 'WEAPON_MINIGUN',          price = 700000 },
     -- { name = 'WEAPON_RAILGUN',          price = 2500000 },
    },

	  AuthorizedVehicles = {
		  { name = 'cognoscenti2',  label = 'Véhicule Blindé' },
		  { name = 'Manchez',    label = 'Moto' },
		  { name = 'Contender',   label = '4X4' },
		  { name = 'felon',      label = 'Véhicule Civil' },
	  },

    Cloakrooms = {
      { x = 2441.0107421875, y = 4973.1186523438, z = 50.564865112305},
    },

    Armories = {
      { x = 2432.5991210938, y = 4971.0986328125, z = 41.347564697266},
    },

    Vehicles = {
      {
        Spawner    = { x = 2478.5764160156, y = 4957.1899414063, z = 44.033519744873 },
        SpawnPoint = { x = 2466.0036621094, y = 4958.9047851563, z = 44.105583190918 },
        Heading    = 322.246704,
      }
    },

    Helicopters = {
      {
        Spawner    = { x = 0, y = 0, z = 0 },
        SpawnPoint = { x = 0, y = 0, z = 0 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = 2486.7216796875, y = 4959.291015625, z = 43.845527648926 },
      
    },

    BossActions = {
      { x = 2455.3745117188, y = 4977.3623046875, z = 50.564868927002 },
    },

  },

}
