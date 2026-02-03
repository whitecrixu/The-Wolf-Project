local mType = Game.createMonsterType("Ink Splash")
local monster = {}

monster.description = "an ink splash"
monster.experience = 1450
monster.outfit = {
    lookType = 1064,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.raceId = 2639
monster.Bestiary = {
    class = "Inkborn",
    race = BESTY_RACE_INKBORN,
    toKill = 1000,
    FirstUnlock = 25,
    SecondUnlock = 250,
    CharmsPoints = 25,
    Stars = 3,
    Occurrence = 1,
    Locations = "Fields of Glory.",
}

monster.health = 1950
monster.maxHealth = 1950
monster.race = "ink"
monster.corpse = 28601
monster.speed = 190
monster.manaCost = 0

monster.voices = {
    interval = 5000,
    chance = 10,
}

monster.loot = {
    -- Platinum Coin: 63.66%
    { name = "platinum coin", minCount = 1, maxCount = 9, chance = 63660 },
    -- Gold Coin: 58.9%
    { name = "gold coin", minCount = 1, maxCount = 99, chance = 58900 },
    -- Inkwell (Vase icon): 7.27%
    { id = 3509, chance = 7270 },
    -- Poisonous Slime: 5.26%
    { name = "poisonous slime", chance = 5260 },
    -- Star Ink (Nib/Vial): 4.76%
    { name = "star ink", chance = 4760 },
    -- Giant Shimmering Pearl (Green): 3.01%
    { id = 281, chance = 3010 },
    -- Terra Hood: 1.0%
    { name = "terra hood", chance = 1000 },
    -- Candlestick: 0.75%
    { name = "candlestick", chance = 750 },
    -- Black Pearl: 0.75%
    { name = "black pearl", chance = 750 },
    -- Terra Legs: 0.5%
    { name = "terra legs", chance = 500 },
    -- Terra Mantle (Coat): 0.5%
    { name = "terra mantle", chance = 500 },
    -- Terra Amulet: 0.25%
    { name = "terra amulet", chance = 250 },
    -- Terra Boots: 0.25%
    { name = "terra boots", chance = 250 }
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = -45, maxDamage = -130 },
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -210, maxDamage = -220, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true },
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -205, maxDamage = -270, range = 7, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_SMALLPLANTS, target = true },
    { name = "combat", interval = 2000, chance = 18, type = COMBAT_EARTHDAMAGE, minDamage = -320, maxDamage = -370, radius = 3, effect = CONST_ME_POISONAREA, target = false },
}

monster.defenses = {
    defense = 45,
    armor = 36,
    mitigation = 0.99,
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = -10 },
    { type = COMBAT_ENERGYDAMAGE, percent = 10 },
    { type = COMBAT_EARTHDAMAGE, percent = -15 },
    { type = COMBAT_FIREDAMAGE, percent = 5 },
    { type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = false },
    { type = "bleed", condition = false },
}

mType:register(monster)