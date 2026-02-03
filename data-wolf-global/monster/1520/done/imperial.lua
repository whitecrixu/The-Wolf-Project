local mType = Game.createMonsterType("Imperial")
local monster = {}

monster.description = "a imperial"
monster.experience = 0
monster.outfit = {
    lookType = 1914,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0,
}

monster.health = 40
monster.maxHealth = 40
monster.race = "blood"
monster.corpse = 52845
monster.speed = 160
monster.manaCost = 0

monster.flags = {
    summonable = false,
    attackable = true,
    hostile = false, -- Ignoruje cel (nie atakuje gracza)
    convinceable = true,
    pushable = false,
    rewardBoss = false,
    illusionable = true,
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 40, -- Ucieka przy pierwszym kontakcie
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false,
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Meee!", yell = false },
}

monster.loot = {
    -- Ham: 75%
    { name = "ham", minCount = 1, maxCount = 2, chance = 75000 },
    -- Meat: 50%
    { name = "meat", minCount = 1, maxCount = 2, chance = 50000 }
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