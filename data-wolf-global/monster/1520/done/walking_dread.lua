local mType = Game.createMonsterType("Walking Dread")
local monster = {}

monster.description = "a walking dread"
monster.experience = 18000
monster.outfit = {
    lookType = 1886, -- Zgodne z monster.json (Id: 2759)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 25500
monster.maxHealth = 25500
monster.race = "undead"
monster.corpse = 52559 -- Standardowe ciało nieumarłych z Update 15.20
monster.speed = 175
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
    targetDistance = 1, -- Walczy w zwarciu
    runHealth = 0,      -- Walczy do końca
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Groooaan!", yell = false },
    { text = "Must... kill...", yell = false },
    { text = "Flesh...", yell = false }
}

monster.loot = {
    -- Waluta (Common)
    {id = 3043, chance = 50000, maxCount = 20},   -- crystal coin

    -- Kryształy i Klejnoty (Common)
    {id = 3029, chance = 15000, maxCount = 1},    -- small sapphire
    {id = 3041, chance = 15000, maxCount = 1},    -- blue gem
    {id = 16119, chance = 15000, maxCount = 1},   -- blue crystal shard
    {id = 16125, chance = 15000, maxCount = 1},   -- cyan crystal fragment

    -- Specjalne przedmioty (Common)
    {id = 52719, chance = 15000, maxCount = 1},   -- crystallized death
    {id = 52705, chance = 15000, maxCount = 1},   -- necromantic core

    -- Przedmioty nieznalezione
    {id = 52706, chance = 15000, maxCount = 1}, -- Toe Nails
}

monster.attacks = {
    -- Melee (Physical)
    { name = "melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -700 },
    -- Life Drain (Silny, typowy dla Dreadów)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -450, range = 1, effect = CONST_ME_MAGIC_RED, target = true },
    -- Death Strike (Dystansowy - by nie dał się łatwo kite'ować)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -400, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Curse (Klątwa)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -100, range = 1, effect = CONST_ME_SMALLCLOUDS, target = true, condition = { type = CONDITION_CURSED, start = 50, tick = 4000 } }
}

monster.defenses = {
    defense = 50,
    armor = 80,
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Resistances)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },  -- Neutralny na fizykę
    { type = COMBAT_DEATHDAMAGE, percent = 40 },    -- Odporny na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = 20 },    -- Odporny na ziemię
    { type = COMBAT_ICEDAMAGE, percent = -10 },     -- Wrażliwy na lód
    { type = COMBAT_FIREDAMAGE, percent = -5 },     -- Lekko wrażliwy na ogień
    { type = COMBAT_HOLYDAMAGE, percent = -10 },    -- Wrażliwy na świętość
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false }
}

mType:register(monster)