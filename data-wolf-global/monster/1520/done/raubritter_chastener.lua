local mType = Game.createMonsterType("Raubritter Chastener")
local monster = {}

monster.description = "an raubritter chastener"
monster.experience = 10000
monster.outfit = {
    lookType = 1902,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 52861
monster.speed = 210
monster.manaCost = 0

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
    runHealth = 100,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = true,
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "I'll... hunt you... down! Purification! Sal... vation! Deliver... This is ours now! Bow... to the master... You... will be cleansed.", yell = true },
}

monster.loot = {
    -- Waluta (Common)
    {id = 3035, chance = 15000, maxCount = 20},   -- Platinum Coin

    -- Klejnoty (Common)
    {id = 3030, chance = 15000, maxCount = 1},    -- Small Ruby
    {id = 3033, chance = 15000, maxCount = 1},    -- Small Amethyst
    {id = 3039, chance = 15000, maxCount = 1},    -- Red Gem (Classic ID)
    {id = 3036, chance = 15000, maxCount = 1},    -- Violet Gem

    -- Wyposażenie Magiczne (Common)
    {id = 827, chance = 15000, maxCount = 1},     -- Magma Monocle
    {id = 817, chance = 15000, maxCount = 1},     -- Magma Amulet
    {id = 9304, chance = 15000, maxCount = 1},    -- Shockwave Amulet
    {id = 23532, chance = 15000, maxCount = 1},   -- Ring of Green Plasma
    {id = 3073, chance = 15000, maxCount = 1},    -- Wand of Cosmic Energy
    {id = 8092, chance = 15000, maxCount = 1},    -- Wand of Starstorm
    {id = 825, chance = 15000, maxCount = 1},     -- Lightning Robe
    {id = 25699, chance = 15000, maxCount = 1},   -- Wooden Spellbook

    -- Przedmioty brakujące w items.xml (Uzupełnij ID)
    {id = 52662, chance = 15000, maxCount = 1}, -- Silver poniard
    {id = 52664, chance = 15000, maxCount = 1}, -- Stag Parchment
    {id = 52745, chance = 15000, maxCount = 1}, -- Bottle of Raubritter Lager
}

monster.attacks = {
    { name = "melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -120 },
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -80, maxDamage = -150, range = 7, shootEffect = CONST_ANI_SMALLSTONE, effect = CONST_ME_BLOCKHIT, target = true },
}

monster.defenses = {
    defense = 25,
    armor = 20,
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 5 },
    { type = COMBAT_FIREDAMAGE, percent = -10 },
    { type = COMBAT_EARTHDAMAGE, percent = 20 },
}

mType:register(monster)