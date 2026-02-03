local mType = Game.createMonsterType("Nigel Neverguess")
local monster = {}

monster.description = "Nigel Neverguess"
monster.experience = 3800
monster.outfit = {
    lookType = 1837, -- Zgodne z Twoim JSONem
    lookHead = 38,
    lookBody = 4,
    lookLegs = 8,
    lookFeet = 11,
    lookAddons = 3,
    lookMount = 0
}

monster.health = 5500
monster.maxHealth = 5500
monster.race = "blood"
monster.corpse = 23555 -- Standardowe ciało bossa (humanoid)
monster.speed = 150
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
    targetDistance = 1, -- Walczy w zwarciu, ale ma ataki dystansowe
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
    { text = "You'll never guess what I found!", yell = false },
    { text = "My discovery!", yell = false },
    { text = "Stay away from my treasure!", yell = true },
    { text = "Curiosity killed the... well, you!", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 1, maxCount = 10, chance = 100000 },
    { name = "gold coin", minCount = 1, maxCount = 100, chance = 100000 },
    { name = "explorer brooch", chance = 15000 },
    { name = "rope", chance = 20000 },
    { name = "shovel", chance = 20000 },
    { name = "backpack", chance = 10000 },
    { name = "small diamond", minCount = 1, maxCount = 2, chance = 5000 },
    { name = "stealth ring", chance = 2000 },
    { name = "nigel's notes", chance = 500 } -- Custom quest item (przykładowo)
}

monster.attacks = {
    -- Melee
    { name = "melee", interval = 2000, chance = 100, minDamage = -200, maxDamage = -400 },
    -- Throw Stone (Physical Distance)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -150, maxDamage = -300, range = 5, shootEffect = CONST_ANI_LARGEROCK, target = true },
    -- Poison Trap (Earth Area)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -100, maxDamage = -250, range = 7, radius = 3, effect = CONST_ME_POISONAREA, target = true },
    -- Sudden Death (Magic)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -350, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true }
}

monster.defenses = {
    defense = 45,
    armor = 40,
    -- Potion Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Haste (Running)
    { name = "speed", interval = 2000, chance = 10, speedChange = 200, effect = CONST_ME_POFF, target = false, duration = 4000 }
}

-- Odporności (Human Adventurer)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_EARTHDAMAGE, percent = 20 },   -- Zna się na naturze
    { type = COMBAT_FIREDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_DEATHDAMAGE, percent = -10 },  -- Wrażliwy na śmierć
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