Config = {}
Config.Locale = 'en'
Config.IncludeCash = true -- DONT TOUCH!
Config.IncludeWeapons = true -- TRUE or FALSE
Config.IncludeAccounts = false -- TRUE or FALSE
Config.ExcludeAccountsList = {"bank", "money"} --  DONT TOUCH!
Config.OpenControl = 289 -- Key for opening inventory. Edit html/js/config.js to change key for closing it.
Config.CloseControl = 200

-- List of item names that will close ui when used
Config.CloseUiItems = {"phone", "weed_seed", "tunerchip", "fixkit", "medikit", "radio"} -- Add your own items here!

Config.ShopBlipID = 52
Config.LiquorBlipID = 93
Config.YouToolBlipID = 402
Config.HospitalShopBlipID = 52
Config.WeaponShopBlipID = 110

Config.ShopLength = 14
Config.LiquorLength = 10
Config.YouToolLength = 2
Config.HospitalShopLength = 2

Config.MarkerSize = {x = 1.5, y = 1.5, z = 1.5}
Config.MarkerColor = {r = 0, g = 128, b = 255}
Config.Color = 2
Config.WeaponColor = 1

Config.LicensePrice = 50000

Config.Shops = {
    RegularShop = {
        Locations = {
		{x = 373.875,   y = 325.896,  z = 102.566},
		{x = 2557.458,  y = 382.282,  z = 107.622},
		{x = -3038.939, y = 585.954,  z = 6.908},
		{x = -3241.927, y = 1001.462, z = 11.830},
		{x = 547.431,   y = 2671.710, z = 41.156},
		{x = 1961.464,  y = 3740.672, z = 31.343},
		{x = 2678.916,  y = 3280.671, z = 54.241},
		{x = 1729.216,  y = 6414.131, z = 34.037},
		{x = -48.519,   y = -1757.514, z = 28.421},
		{x = 1163.373,  y = -323.801,  z = 68.205},
		{x = -707.501,  y = -914.260,  z = 18.215},
		{x = -1820.523, y = 792.518,   z = 137.118},
		{x = 1698.388,  y = 4924.404,  z = 41.063},
		{x = 25.723,   y = -1346.966, z = 28.497}, 

        },
        Items = {
            {name = 'bread'},
            {name = 'donut'},
            {name = 'donut2'},
            {name = 'water'},
            {name = 'radio'},
            {name = 'bag'}
        }
    },

    RobsLiquor = {
	Locations = {
       -- {x = 1135.808,  y = -982.281,  z = 45.415},
       -- {x = -1222.915, y = -906.983,  z = 11.326},
       -- {x = -1487.553, y = -379.107,  z = 39.163},
       -- {x = -2968.243, y = 390.910,   z = 14.043},
       -- {x = 1166.024,  y = 2708.930,  z = 37.157},
       -- {x = 1392.562,  y = 3604.684,  z = 33.980},
       -- {x = 127.830,   y = -1284.796, z = 28.280}, --StripClub
       -- {x = -1393.409, y = -606.624,  z = 29.319}, --Bahamamas
       -- {x = -559.906,  y = 287.093,   z = 81.176},  --Tequila la 
       -- {x = -5.821, y = -1820.257, z = 25.444} -- grove street
	
        },
        Items = {
            {name = 'beer'}, -- add more items here
            {name = 'wine'},
            {name = 'vodka'}
        }
	},

    YouTool = {
        Locations = {
            {x = 2748.0, y = 3473.0, z = 55.68},
        },
        Items = {
            {name = 'fixkit'}, -- add more items here
            {name = 'blowtorch'},
            {name = 'lockpick'}
        }
    },

    HospitalShop = {
        Locations = {
            {x = 315.92,  y = -589.93,  z = 43.75},
        },
        Items = {
            {name = 'bread'}, -- add more items here
            {name = 'water'},
            {name = 'donut'},
            {name = 'donut2'}
        }
    },

    WeaponShop = {
        Locations = {
            { x = -662.180, y = -934.961, z = 20.829 },
			{ x = 810.2, y = -2157.3, z = 28.6},
			{ x = 1693.4, y = 3759.5, z = 33.7},
			{ x = -330.2, y = 6083.8, z = 30.4},
			{ x = 252.3, y = -50.0, z = 68.9},
			{ x = 22.0, y = -1107.2, z = 28.8},
			{ x = 2567.6, y = 294.3, z = 107.7},
			{ x = -1117.5, y = 2698.6, z = 17.5},
			{ x = 842.4, y = -1033.4, z = 27.1}
        
        },
        Weapons = {
            {name = "WEAPON_FLASHLIGHT", ammo = 1},
            {name = "WEAPON_KNIFE", ammo = 1},
            {name = "WEAPON_BAT", ammo = 1},
            {name = "WEAPON_PISTOL", ammo = 45},
            {name = "WEAPON_MACHETE", ammo = 1}
        },
        Ammo = {
            {name = "WEAPON_PISTOL_AMMO", weaponhash = "WEAPON_PISTOL", ammo = 45},
            {name = "WEAPON_PISTOL50_AMMO", weaponhash = "WEAPON_PISTOL50", ammo = 45},
            {name = "WEAPON_APPISTOL_AMMO", weaponhash = "WEAPON_APPISTOL", ammo = 75},
            {name = "WEAPON_SMG_AMMO", weaponhash = "WEAPON_SMG", ammo = 100},
            {name = "WEAPON_ADVANCEDRIFLE_AMMO", weaponhash = "WEAPON_ADVANCEDRIFLE", ammo = 100},
            {name = "WEAPON_ASSAULTRIFLE_AMMO", weaponhash = "WEAPON_ASSAULTRIFLE", ammo = 100},
            {name = "WEAPON_CARBINERIFLE_AMMO", weaponhash = "WEAPON_CARBINERIFLE", ammo = 100},
            {name = "WEAPON_COMBATPISTOL_AMMO", weaponhash = "WEAPON_COMBATPISTOL", ammo = 45},
            {name = "WEAPON_SNIPERRIFLE_AMMO", weaponhash = "WEAPON_SNIPERRIFLE", ammo = 24}
          },
        Items = {
        }
    },
    LicenseShop = {
        Locations = {
            { x = 12.47, y = -1105.5, z = 29.8}
        }
    }
}
