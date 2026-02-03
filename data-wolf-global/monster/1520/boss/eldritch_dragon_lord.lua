local mType = Game.createMonsterType("Eldritch Dragon Lord")
local monster = {}

monster.description = "an eldritch dragon lord"
monster.experience = 65000
monster.outfit = {
    lookType = 1879, -- Zgodne z boss.json (Id: 2739)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 85000
monster.maxHealth = 85000
monster.race = "blood"
monster.corpse = 5973 -- Standardowe ciało Dragon Lorda (lub użyj dedykowanego ID jeśli masz w items.xml, np. 28628)
monster.speed = 190
monster.manaCost = 0

monster.changeTarget = {
    interval = 2000,
    chance = 15 -- Dość często zmienia cel, siejąc chaos
}

monster.strategiesTarget = {
    nearest = 60,
    health = 20,
    damage = 20,
    random = 0,
}

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = true,
    convinceable = false,
    pushable = false,
    rewardBoss = true, -- System Reward Chest
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 95,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.light = {
    level = 5,
    color = 215 -- Biało-błękitne "eldritch" światło
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "YOUR REALITY WILL SHATTER!", yell = true },
    { text = "BURN IN THE VOID!", yell = true },
    { text = "GROOOAAAAHR!", yell = true }
}

monster.loot = {
    { name = "platinum coin", minCount = 10, maxCount = 50, chance = 100000 },
    { name = "crystal coin", minCount = 1, maxCount = 5, chance = 100000 },
    { name = "dragon scale mail", chance = 5000 },
    { name = "dragon scale legs", chance = 4000 },
    { name = "royal scale robe", chance = 2500 },
    { name = "magma boots", chance = 6000 },
    { name = "fire sword", chance = 15000 },
    { name = "wand of draconia", chance = 8000 },
    { name = "spellbook of ancient arcana", chance = 1500 }, -- Rare
    { name = "eldritch crystal", chance = 100000 }, -- Crafting item
    { name = "dragon lord trophy", chance = 1000 }
}

monster.attacks = {
    -- Heavy Melee
    { name = "melee", interval = 2000, chance = 100, minDamage = -800, maxDamage = -1500 },
    -- Eldritch Fire Breath (Fire/Energy Mix)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -600, maxDamage = -1200, range = 7, length = 8, spread = 3, effect = CONST_ME_FIREAREA, target = false },
    -- Void Wave (Energy - Strong)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -800, maxDamage = -1400, range = 7, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false },
    -- Great Fireball (Target)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -500, maxDamage = -900, range = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
    -- Electrified Ground (Self AoE)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -800, range = 7, radius = 4, effect = CONST_ME_PURPLEENERGY, target = false }
}

monster.defenses = {
    defense = 85,
    armor = 85,
    -- Strong Healing
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 500, maxDamage = 1500, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Speed Buff
    { name = "speed", interval = 2000, chance = 10, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000 }
}

-- Odporności (Smocze + Eldritch)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 10 },
    { type = COMBAT_FIREDAMAGE, percent = 100 },    -- Całkowicie odporny na ogień
    { type = COMBAT_ENERGYDAMAGE, percent = 50 },    -- Częściowo odporny na energię
    { type = COMBAT_EARTHDAMAGE, percent = 80 },     -- Bardzo odporny na ziemię
    { type = COMBAT_ICEDAMAGE, percent = -10 },      -- Wrażliwy na lód (klasyczna słabość smoków)
    { type = COMBAT_DEATHDAMAGE, percent = 20 },
    { type = COMBAT_HOLYDAMAGE, percent = 0 },
    { type = COMBAT_LIFEDRAIN, percent = 100 },
    { type = COMBAT_MANADRAIN, percent = 100 },
    { type = COMBAT_DROWNDAMAGE, percent = 100 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false } -- Smoki mogą krwawić
}

mType:register(monster)