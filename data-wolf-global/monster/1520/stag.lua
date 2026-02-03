local mType = Game.createMonsterType("Stag")
local monster = {}

monster.description = "a stag"
monster.experience = 0
monster.outfit = {
    lookType = 1913,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 52841
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 0,
}

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = false, -- Ignoruje cel (nie atakuje)
    convinceable = true,
    pushable = false,
    rewardBoss = false,
    illusionable = true,
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 50, -- Ucieka od razu przy pełnym zdrowiu
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false,
}

monster.light = {
    level = 0,
    color = 0,
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Bellow!", yell = false },
}

-- Loot table na podstawie przesłanych screenów
monster.loot = {
    -- Ham (Szynka): 79.7%
    { name = "ham", minCount = 1, maxCount = 4, chance = 79700 },
    -- Meat (Mięso): 46.02%
    { name = "meat", minCount = 1, maxCount = 1, chance = 46020 }
}

monster.attacks = {} -- Brak ataków (ignoruje cel)

monster.defenses = {
    defense = 5,
    armor = 5,
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_EARTHDAMAGE, percent = 0 },
    { type = COMBAT_FIREDAMAGE, percent = 0 },
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = 0 },
    { type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
    { type = "paralyze", condition = false },
    { type = "outfit", condition = false },
    { type = "invisible", condition = false },
    { type = "bleed", condition = false },
}

mType:register(monster)