local mType = Game.createMonsterType("Grendel Greenlunch")
local monster = {}

monster.description = "Grendel Greenlunch"
monster.experience = 3000
monster.outfit = {
    lookType = 144, -- Ogre Brute (Standard dla Grendela)
    lookHead = 22,
    lookBody = 62,
    lookLegs = 101,
    lookFeet = 58,
    lookAddons = 3,
    lookMount = 0
}

monster.health = 5000
monster.maxHealth = 5000
monster.race = "blood"
monster.corpse = 23354 -- Ciało Ogra
monster.speed = 145
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 70,
    health = 10,
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
    { text = "Me hungry!", yell = false },
    { text = "Green lunch! Good lunch!", yell = false },
    { text = "Me smash you into pulp!", yell = true }
}

monster.loot = {
    { name = "gold coin", minCount = 1, maxCount = 100, chance = 100000 },
    { name = "platinum coin", minCount = 1, maxCount = 5, chance = 80000 },
    { name = "meat", minCount = 1, maxCount = 4, chance = 50000 },
    { name = "ham", minCount = 1, maxCount = 3, chance = 40000 },
    { name = "ogre nose ring", chance = 15000 },
    { name = "heavy mace", chance = 9000 },
    { name = "fur boots", chance = 5000 },
    { name = "strong health potion", minCount = 1, maxCount = 2, chance = 15000 },
    { name = "great health potion", chance = 5000 },
    { name = "ogre ear stud", chance = 2000 } -- Rare decoration
}

monster.attacks = {
    -- Melee (Silne uderzenie fizyczne)
    { name = "melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -450 },
    -- Groundshaker (Obszarowy fizyczny)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -350, range = 1, length = 0, spread = 0, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
    -- Stone Throw (Dystansowy)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -200, range = 5, shootEffect = CONST_ANI_LARGEROCK, target = true },
    -- Stun (Paralyze)
    { name = "speed", interval = 2000, chance = 10, speedChange = -300, range = 7, effect = CONST_ME_STUN, target = true, duration = 3000 }
}

monster.defenses = {
    defense = 40,
    armor = 45,
    -- Self Healing (Jedzenie)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Haste (Szarża)
    { name = "speed", interval = 2000, chance = 10, speedChange = 200, effect = CONST_ME_POFF, target = false, duration = 4000 }
}

-- Odporności (Ogre Traits)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 10 },
    { type = COMBAT_EARTHDAMAGE, percent = 40 },    -- Odporny na naturę
    { type = COMBAT_FIREDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = -10 },      -- Wrażliwy na lód (częste u ogrów)
    { type = COMBAT_DEATHDAMAGE, percent = -5 },
    { type = COMBAT_HOLYDAMAGE, percent = 0 },
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