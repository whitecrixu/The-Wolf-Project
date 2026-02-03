local mType = Game.createMonsterType("Crypt Fiend")
local monster = {}

monster.description = "a crypt fiend"
monster.experience = 22500
monster.outfit = {
    lookType = 1885, -- Zgodne z monster.json (Id: 2758)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 30000
monster.maxHealth = 30000
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
    canPushCreatures = true, -- Masywny, przepycha graczy i moby
    staticAttackChance = 90,
    targetDistance = 1, -- Walczy w zwarciu
    runHealth = 0,
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
    { text = "Crush the living!", yell = false },
    { text = "Bones... break...", yell = false },
    { text = "Eternal... service...", yell = false }
}

monster.loot = {
    -- Waluta i Klejnoty
    {id = 3043, chance = 100000, maxCount = 20},    -- crystal coin
    {id = 3029, chance = 50000, maxCount = 1},     -- small sapphire
    {id = 3041, chance = 50000, maxCount = 1},     -- blue gem

    -- Kryształy i Fragmenty
    {id = 16119, chance = 50000, maxCount = 1},    -- blue crystal shard
    {id = 16125, chance = 50000, maxCount = 1},    -- cyan crystal fragment

    -- Nowe przedmioty z Twojego items.xml
    {id = 52719, chance = 50000, maxCount = 1},    -- crystallized death
    {id = 52720, chance = 50000, maxCount = 1},    -- cluster of crystallized death
    {id = 52707, chance = 50000, maxCount = 1},    -- giant tusk
    {id = 52705, chance = 50000, maxCount = 1},    -- necromantic core

    -- Ambry
    {id = 32626, chance = 50000, maxCount = 1},     -- amber
    {id = 32624, chance = 50000, maxCount = 1},    -- amber with a bug
    {id = 32625, chance = 50000, maxCount = 1},    -- amber with a dragonfly
}

monster.attacks = {
    -- Heavy Melee (Physical)
    { name = "melee", interval = 2000, chance = 100, minDamage = -450, maxDamage = -900 },
    -- Bone Smash (Physical - Area Front)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -700, range = 1, length = 3, spread = 2, effect = CONST_ME_GROUNDSHAKER, target = false },
    -- Death Strike (Distance)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -550, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Life Drain
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -250, maxDamage = -500, range = 1, effect = CONST_ME_MAGIC_RED, target = true },
    -- Curse
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -100, range = 7, effect = CONST_ME_SMALLCLOUDS, target = true, condition = { type = CONDITION_CURSED, start = 100, tick = 4000 } }
}

monster.defenses = {
    defense = 70,
    armor = 110, -- Bardzo twardy
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 250, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Bone Armor (Buff)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_BLOCKHIT, target = false }
}

-- Odporności (Resistances)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 10 },  -- Naturalny pancerz
    { type = COMBAT_DEATHDAMAGE, percent = 50 },     -- Odporny na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = 40 },     -- Odporny na ziemię
    { type = COMBAT_ICEDAMAGE, percent = -10 },      -- Wrażliwy na lód (kruchość)
    { type = COMBAT_FIREDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = -10 },     -- Wrażliwy na świętość
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_LIFEDRAIN, percent = 100 },      -- Konstrukt (brak krwi/życia do wyssania w tradycyjnym sensie)
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = true }, -- Nie krwawi (kości)
    { type = "drown", condition = true }
}

mType:register(monster)