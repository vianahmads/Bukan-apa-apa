
Config = {}

Config.CheckOwnership = false -- If true, Only owner of vehicle can store items in trunk.
Config.AllowPolice = true -- If true, police will be able to search players' trunks.

Config.Locale = "en"

Config.OpenKey = 170

-- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Weight = 25000

-- Default weight for an item:
-- weight == 0 : The item do not affect character inventory weight
-- weight > 0 : The item cost place on inventory
-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 10

Config.localWeight = {
    bread = 125,
    water = 330,
    WEAPON_SMG = 5000
}

Config.VehicleWeight = {
    [0] = 5000, --Compact
    [1] = 7000, --Sedan
    [2] = 10000, --SUV
    [3] = 9000, --Coupes
    [4] = 10000, --Muscle
    [5] = 10000, --Sports Classics
    [6] = 10000, --Sports
    [7] = 3000, --Super
    [8] = 1000, --Motorcycles
    [9] = 10000, --Off-road
    [10] = 10000, --Industrial
    [11] = 10000, --Utility
    [12] = 10000, --Vans
    [13] = 0, --Cycles
    [14] = 10000, --Boats
    [15] = 10000, --Helicopters
    [16] = 0, --Planes
    [17] = 10000, --Service
    [18] = 10000, --Emergency
    [19] = 0, --Military
    [20] = 10000, --Commercial
    [21] = 0 --Trains
}

Config.VehiclePlate = {
    taxi = "TAXI",
    cop = "LSPD",
    ambulance = "EMS0",
    mecano = "MECA"
}
