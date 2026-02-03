local mType = Game.createMonsterType("Raubritter Marksman")
local monster = {}

monster.description = "a raubritter marksman"
monster.experience = 9500
monster.outfit = {
    lookType = 1901, -- Zgodne z monster.json (Id: 2751)
    lookHead = 94,
    lookBody = 19,
    lookLegs = 118,
    lookFeet = 2,
    lookAddons = 2,
    lookMount = 0
}

monster.health = 10500
monster.maxHealth = 10500
monster.race = "blood"
monster.corpse = 52857 -- ID zwłok dla Raubritterów (sprawdź w items.xml, alternatywnie 6080)
monster.speed = 145
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 70,
    health = 10,
    damage = 10,
    random = 10,
}

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = true,
    convinceable = false,
    pushable = false,
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 4, -- Utrzymuje dystans (kusznik)
    runHealth = 150,    -- Ucieka przy niskim zdrowiu
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "You can run, but you can't hide!", yell = false },
    { text = "Another target practice.", yell = false },
    { text = "Bullseye!", yell = false }
}

monster.loot = {
    -- Waluta (Common)
    {id = 3035, chance = 50000, maxCount = 20},   -- platinum coin (50%)

    -- Kryształy i Klejnoty (Common)
    {id = 16119, chance = 20000, maxCount = 1},   -- blue crystal shard
    {id = 16121, chance = 20000, maxCount = 1},   -- green crystal shard
    {id = 16120, chance = 20000, maxCount = 1},   -- violet crystal shard
    {id = 3041, chance = 15000, maxCount = 1},    -- blue gem
    {id = 3038, chance = 15000, maxCount = 1},    -- green gem
    {id = 3036, chance = 15000, maxCount = 1},    -- violet gem

    -- Amunicja (Common)
    {id = 15793, chance = 20000, maxCount = 1},   -- crystalline arrow

    -- Wyposażenie (Common)
    {id = 811, chance = 15000, maxCount = 1},     -- terra mantle
    {id = 8027, chance = 15000, maxCount = 1},    -- composite hornbow
    {id = 23530, chance = 15000, maxCount = 1},   -- ring of blue plasma

    -- Przedmioty nieznalezione (Wymagają ręcznego ID)
    {id = 52664, chance = 15000, maxCount = 1}, -- Stag Parchment
    {id = 52664, chance = 15000, maxCount = 1}, -- Cuirass Plate
}

monster.attacks = {
    -- Atak fizyczny wręcz (słabszy, jeśli gracz podejdzie)
    { name = "melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -150 },
    -- Strzał z kuszy (główny atak)
    { name = "combat", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -320, range = 7, shootEffect = CONST_ANI_BOLT, target = true },
}

monster.defenses = {
    defense = 35,
    armor = 35,
    -- Leczenie
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności i wrażliwości wg Tibia Wiki
-- Weak: Death (+10%), Earth (+5%)
-- Strong: Holy (-10%)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_EARTHDAMAGE, percent = -5 },  -- Wrażliwy 105%
    { type = COMBAT_FIREDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = 10 },   -- Odporny 90%
    { type = COMBAT_DEATHDAMAGE, percent = -10 }  -- Wrażliwy 110%
}

monster.immunities = {
    { type = "paralyze", condition = false },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true }, -- Zazwyczaj widzą niewidzialnych
    { type = "bleed", condition = false }
}

mType:register(monster)