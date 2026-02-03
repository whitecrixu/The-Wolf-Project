local mType = Game.createMonsterType("Fatal Bug")
local monster = {}

monster.description = "a fatal bug"
monster.experience = 50000
monster.outfit = {
    lookType = 79, -- Ancient Scarab (zgodnie z życzeniem)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 100000
monster.maxHealth = 100000
monster.race = "venom"
monster.corpse = 6029 -- Ancient Scarab Corpse
monster.speed = 350 -- Bardzo szybki (Glitch)
monster.manaCost = 0

monster.changeTarget = {
    interval = 2000,
    chance = 20
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
    rewardBoss = true, -- Traktowany jako boss
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
    color = 215 -- Błękitne/Białe "elektryczne" światło
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "CRITICAL ERROR!", yell = true },
    { text = "404 NOT FOUND", yell = false },
    { text = "DEBUG ASSERTION FAILED", yell = true },
    { text = "Your character could not be loaded.", yell = false }
}

monster.loot = {
    { name = "crystal coin", minCount = 5, maxCount = 20, chance = 100000 },
    { name = "scarab coin", minCount = 1, maxCount = 10, chance = 50000 },
    { name = "gold ingot", minCount = 1, maxCount = 3, chance = 15000 },
    { name = "ancient amulet", chance = 8000 },
    { name = "scarab shield", chance = 5000 },
    { name = "green gem", chance = 10000 },
    { name = "magic plate armor", chance = 1000 }, -- Rare
    { name = "golden bug", chance = 500 } -- Rare decoration
}

monster.attacks = {
    -- Melee (Fatalne obrażenia)
    { name = "melee", interval = 2000, chance = 100, minDamage = -1000, maxDamage = -2500 },
    -- Sudden Death (Błąd krytyczny)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1500, maxDamage = -3000, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Lag Spike (Paralyze)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -1000, range = 7, effect = CONST_ME_ENERGYHIT, target = true, condition = { type = CONDITION_PARALYZE, start = 2000, tick = 4000 } },
    -- System Crash (Area Physical)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -1000, maxDamage = -2000, range = 1, length = 0, spread = 0, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false }
}

monster.defenses = {
    defense = 90,
    armor = 90,
    -- Reboot (Healing)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 1000, maxDamage = 5000, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Speed Hack (Haste)
    { name = "speed", interval = 2000, chance = 15, speedChange = 500, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000 }
}

-- Odporności (Glitch Mode - bardzo odporny)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 50 },
    { type = COMBAT_DEATHDAMAGE, percent = 80 },
    { type = COMBAT_EARTHDAMAGE, percent = 50 },
    { type = COMBAT_FIREDAMAGE, percent = 50 },
    { type = COMBAT_ICEDAMAGE, percent = 50 },
    { type = COMBAT_HOLYDAMAGE, percent = 50 },
    { type = COMBAT_ENERGYDAMAGE, percent = 80 },
    { type = COMBAT_LIFEDRAIN, percent = 100 },
    { type = COMBAT_MANADRAIN, percent = 100 },
    { type = COMBAT_DROWNDAMAGE, percent = 100 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = true }
}

mType:register(monster)