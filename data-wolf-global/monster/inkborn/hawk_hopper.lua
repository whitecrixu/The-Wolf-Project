local mType = Game.createMonsterType("Hawk Hopper")
local monster = {}

monster.description = "a hawk hopper"
monster.experience = 1770
monster.outfit = {
    lookType = 1858,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.raceId = 2674
monster.Bestiary = {
    class = "Inkborn",
    race = BESTY_RACE_INKBORN,
    toKill = 1000,
    FirstUnlock = 50,
    SecondUnlock = 500,
    CharmsPoints = 25,
    Stars = 3,
    Occurrence = 2,
    Locations = "Book World.",
}

monster.health = 2180
monster.maxHealth = 2180
monster.race = "ink"
monster.corpse = 51560
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 0,
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
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true,
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Coo?", yell = false },
    { text = "Sniff, sniff.", yell = false },
    { text = "Chipper!", yell = false },
}

-- Chance 100000 = 100%
monster.loot = {
    -- Gold Coin: 95.66%
    { name = "gold coin", minCount = 1, maxCount = 100, chance = 95660 },
    -- Platinum Coin: 70.43%
    { name = "platinum coin", minCount = 1, maxCount = 12, chance = 70430 },
    -- Earth Arrow: 8.61%
    { name = "earth arrow", minCount = 1, maxCount = 10, chance = 8610 },
    -- Pressed Flower (New item icon): 6.89%
    { id = 47514, chance = 6890 }, 
    -- Small Topaz: 6.29%
    { name = "small topaz", minCount = 1, maxCount = 3, chance = 6290 },
    -- Rainbow Quartz: 5.39%
    { name = "rainbow quartz", minCount = 1, maxCount = 3, chance = 5390 },
    -- Opal: 3.07%
    { name = "opal", chance = 3070 },
    -- Royal Star (Red flower icon): 2.99%
    { name = "royal star", minCount = 1, maxCount = 3, chance = 2990 },
    -- Fish: 2.54%
    { id = 3578, minCount = 1, maxCount = 2, chance = 2540 },
    -- Carrot: 1.72%
    { id = 3595, minCount = 1, maxCount = 5, chance = 1720 },
    -- Butterfly Ring: 0.52%
    { name = "butterfly ring", chance = 520 },
    -- Etcher (Nib-like item): 0.52%
    { id = 47513, chance = 520 },
    -- Elvish Bow: 0.3%
    { name = "elvish bow", chance = 300 }
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -240 },
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -200, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_SMALLPLANTS, target = true },
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -190, maxDamage = -230, radius = 4, effect = CONST_ME_STONES, target = false },
}

monster.defenses = {
    defense = 58,
    armor = 36,
    mitigation = 0.94,
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = -5 },
    { type = COMBAT_ENERGYDAMAGE, percent = 10 },
    { type = COMBAT_EARTHDAMAGE, percent = 15 },
    { type = COMBAT_FIREDAMAGE, percent = -10 },
    { type = COMBAT_ICEDAMAGE, percent = -10 },
    { type = COMBAT_DEATHDAMAGE, percent = -5 },
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = false },
    { type = "bleed", condition = false },
}

mType:register(monster)