Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.BikerStations = {

  Biker = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
     --{ name = 'WEAPON_PISTOL50',       price = 9000 },
     --{ name = 'WEAPON_ASSAULTRIFLE',     price = 30000 },
     --{ name = 'WEAPON_SAWNOFFSHOTGUN',       price = 1125000 },
     -- { name = 'WEAPON_MOLOTOV',     price = 1500000 },
      { name = 'WEAPON_BAT',      price = 600000 },
     -- { name = 'WEAPON_STUNGUN',          price = 50000 },
     -- { name = 'WEAPON_FLASHLIGHT',       price = 800 },
     -- { name = 'WEAPON_FIREEXTINGUISHER', price = 1200 },
     -- { name = 'WEAPON_FLAREGUN',         price = 6000 },
     -- { name = 'GADGET_PARACHUTE',        price = 3000 },
     -- { name = 'WEAPON_STICKYBOMB',       price = 200000 },
     -- { name = 'WEAPON_SNIPERRIFLE',      price = 2200000 },
     -- { name = 'WEAPON_FIREWORK',         price = 30000 },
     -- { name = 'WEAPON_GRENADE',          price = 180000 },
     -- { name = 'WEAPON_BZGAS',            price = 120000 },
     -- { name = 'WEAPON_SMOKEGRENADE',     price = 100000 },
     -- { name = 'WEAPON_APPISTOL',         price = 70000 },
     -- { name = 'WEAPON_CARBINERIFLE',     price = 1100000 },
   --   { name = 'WEAPON_HEAVYSNIPER',      price = 2000000 },
    --  { name = 'WEAPON_MINIGUN',          price = 700000 },
     -- { name = 'WEAPON_RAILGUN',          price = 2500000 },
    },

	  AuthorizedVehicles = {
		  { name = 'gburrito2',  label = 'Véhicule Civil' },
		  { name = 'avarus',    label = 'Moto Avarus' },
		  { name = 'sanctus',   label = 'Moto Sanctus' },
		  { name = 'guardian',      label = '4x4' },
	  },

    Cloakrooms = {
      { x = 986.94677734375, y = -92.968696594238, z = 73.84593963623 },
    },

    Armories = {
      { x = 972.04876708984, y = -98.991020202637, z = 74.846786499023 },
    },

    Vehicles = {
      {
        Spawner    = { x = 975.93737792969, y = -129.04570007324, z = 73.354141235352 },
        SpawnPoint = { x = 967.47393798828, y = -125.96086120605, z = 73.354141235352},
        Heading    = 145.1,
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
      { x = 984.81884765625, y = -137.48249816895, z = 72.0 },
    },

    BossActions = {
      { x = 977.17810058594, y = -104.06871795654, z = 73.845100402832 }
    },

  },

}
