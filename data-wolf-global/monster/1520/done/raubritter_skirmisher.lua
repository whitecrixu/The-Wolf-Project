local mType = Game.createMonsterType("Raubritter Skirmisher")
local monster = {}

monster.description = "a raubritter skirmisher"
monster.experience = 9000
monster.outfit = {
    lookType = 1900, -- Zgodne z monster.json (Id: 2750)
    lookHead = 94,
    lookBody = 19,
    lookLegs = 3,
    lookFeet = 19,
    lookAddons = 0, -- Zazwyczaj Skirmisherzy nie mają pełnych addonów, ale można zmienić na 1/2
    lookMount = 0
}

monster.health = 11000
monster.maxHealth = 11000
monster.race = "blood"
monster.corpse = 52849 -- Dedykowane ciało Raubrittera (jeśli brak w items.xml, użyj 6080)
monster.speed = 155
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
    canPushCreatures = true, -- Rycerz przepycha słabsze potwory
    staticAttackChance = 90,
    targetDistance = 1, -- Walczy w zwarciu
    runHealth = 20,     -- Walczy prawie do końca
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
    { text = "No mercy!", yell = false },
    { text = "Your gold or your life!", yell = false },
    { text = "Just business, nothing personal.", yell = false },
    { text = "Charge!", yell = true }
}

monster.loot = {
    -- Waluta (Common)
    {id = 3035, chance = 15000, maxCount = 20},   -- platinum coin

    -- Wyposażenie (Common)
    {id = 22085, chance = 15000, maxCount = 1},   -- fur armor
    {id = 3381, chance = 15000, maxCount = 1},    -- crown armor
    {id = 3419, chance = 15000, maxCount = 1},    -- crown shield
    {id = 7386, chance = 15000, maxCount = 1},    -- mercenary sword

    -- Kosztowności (Common)
    {id = 3063, chance = 15000, maxCount = 1},    -- gold ring
    {id = 9058, chance = 15000, maxCount = 1},    -- gold ingot
    {id = 50151, chance = 15000, maxCount = 1},   -- ring of orange plasma

    -- Przedmioty nieznalezione (Wymagają ręcznego ID)
    {id = 52662, chance = 15000, maxCount = 1}, -- Silver poniard
    {id = 52664, chance = 15000, maxCount = 1}, -- Cuirass Plate (brak w items.xml)
}

monster.attacks = {
    -- Podstawowy atak melee
    { name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -250 },
    -- Silne uderzenie fizyczne (exori style)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -180, maxDamage = -300, range = 1, effect = CONST_ME_HITAREA, target = true },
    -- Krwawienie (Bleed)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -50, range = 1, effect = CONST_ME_DRAWBLOOD, target = true, condition = { type = CONDITION_BLEEDING, start = 50, tick = 10000 } }
}

monster.defenses = {
    defense = 40,
    armor = 40,
    -- Haste (przyspieszenie, by dogonić gracza)
    { name = "speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 }
}

-- Odporności (Standardowy profil Raubrittera/Mercenary)
-- Weak: Earth (+5%), Death (+10%)
-- Strong: Holy (-10%)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_EARTHDAMAGE, percent = -5 },
    { type = COMBAT_FIREDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = 10 },
    { type = COMBAT_DEATHDAMAGE, percent = -10 }
}

monster.immunities = {
    { type = "paralyze", condition = false },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false }
}

mType:register(monster)