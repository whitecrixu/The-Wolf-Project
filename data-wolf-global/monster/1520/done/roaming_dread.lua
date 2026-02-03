local mType = Game.createMonsterType("Roaming Dread")
local monster = {}

monster.description = "a roaming dread"
monster.experience = 9000
monster.outfit = {
    lookType = 1904, -- Zgodne z monster.json (Id: 2765)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 14500
monster.maxHealth = 14500
monster.race = "undead"
monster.corpse = 52563 -- Standardowe ciało dla nowych nieumarłych (sprawdź w items.xml, alternatywnie 6080)
monster.speed = 190
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
    targetDistance = 1,
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
    { text = "Dooooom!", yell = false },
    { text = "Your end is nigh...", yell = false },
    { text = "Cold... so cold...", yell = false }
}

monster.loot = {
    -- Waluta (Common)
    {id = 3035, chance = 50000, maxCount = 20},   -- platinum coin
    {id = 3043, chance = 50000, maxCount = 20},   -- crystal coin

    -- Kryształy i Klejnoty (Common)
    {id = 3032, chance = 15000, maxCount = 1},    -- small emerald
    {id = 3038, chance = 15000, maxCount = 1},    -- green gem
    {id = 16127, chance = 15000, maxCount = 1},   -- green crystal fragment
    {id = 16121, chance = 15000, maxCount = 1},   -- green crystal shard

    -- Specjalne przedmioty (Common)
    {id = 52719, chance = 15000, maxCount = 1},   -- crystallized death
    {id = 52705, chance = 15000, maxCount = 1},   -- necromantic core

    -- Wyposażenie (Common)
    {id = 7422, chance = 15000, maxCount = 1},    -- jade hammer
    {id = 3333, chance = 15000, maxCount = 1},    -- crystal mace
    {id = 8050, chance = 15000, maxCount = 1},    -- crystalline armor

    -- Przedmioty nieznalezione (Wymagają ręcznego ID)
    {id = 52706, chance = 15000, maxCount = 1}, -- Toe Nails
}

monster.attacks = {
    -- Melee (Physical)
    { name = "melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -650 },
    -- Life Drain (Death/Healing)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_LIFEDRAIN, minDamage = -250, maxDamage = -450, range = 7, effect = CONST_ME_MAGIC_RED, target = true },
    -- Death Strike (Distance)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -550, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Paralyze
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -50, maxDamage = -100, range = 7, effect = CONST_ME_SMALLCLOUDS, target = true, condition = { type = CONDITION_PARALYZE, start = 2000, tick = 4000 } }
}

monster.defenses = {
    defense = 65,
    armor = 120, -- Wysoki pancerz zgodnie z wiki
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 350, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Resistances)
-- Physical: 109% (wrażliwy) -> -9%
-- Death: 103% (wrażliwy) -> -3%
-- Ice: 112% (wrażliwy) -> -12%
-- Energy: 109% (wrażliwy) -> -9%
-- Fire: 88% (odporny) -> 12%
-- Earth: 91% (odporny) -> 9%
-- Holy: 100% (neutralny) -> 0%
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = -9 },
    { type = COMBAT_DEATHDAMAGE, percent = -3 },
    { type = COMBAT_ICEDAMAGE, percent = -12 },
    { type = COMBAT_ENERGYDAMAGE, percent = -9 },
    { type = COMBAT_FIREDAMAGE, percent = 12 },
    { type = COMBAT_EARTHDAMAGE, percent = 9 },
    { type = COMBAT_HOLYDAMAGE, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 }
}

monster.immunities = {
    { type = "paralyze", condition = true }, -- Zazwyczaj odporne na paraliż
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false }
}

mType:register(monster)