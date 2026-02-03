local mType = Game.createMonsterType("Haunted Hunter")
local monster = {}

monster.description = "a haunted hunter"
monster.experience = 19500
monster.outfit = {
    lookType = 1889, -- Model kusznika (Id: 2751 w monster.json). Wersja "Haunted" to zazwyczaj ten sam model z innymi kolorami.
    lookHead = 0,   
    lookBody = 0,   
    lookLegs = 0,   
    lookFeet = 0,  
    lookAddons = 0,
    lookMount = 0
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "undead"
monster.corpse = 52575 -- Standardowe ciało nieumarłych z Update 15.20
monster.speed = 185
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
    targetDistance = 5, -- Utrzymuje duży dystans
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
    { text = "Swift death...", yell = false },
    { text = "Nowhere to hide.", yell = false },
    { text = "Thwack!", yell = false }
}

monster.loot = {
    { name = "small ruby", minCount = 1, maxCount = 6, chance = 100000 }

}

monster.attacks = {
    -- Melee (Słabe, tylko gdy gracz zablokuje)
    { name = "melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -300 },
    -- Ranged Bolt (Physical - Strong)
    { name = "combat", interval = 2000, chance = 70, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -600, range = 7, shootEffect = CONST_ANI_BOLT, effect = CONST_ME_HITAREA, target = true },
    -- Death Arrow (Death Damage)
    { name = "combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -500, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Life Drain (Healing)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -400, range = 7, effect = CONST_ME_MAGIC_RED, target = true }
}

monster.defenses = {
    defense = 45,
    armor = 70,
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 350, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Invisibility (Hunter trait)
    { name = "invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE }
}

-- Odporności (Resistances)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_DEATHDAMAGE, percent = 30 },   -- Odporny na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = 20 },   -- Odporny na ziemię
    { type = COMBAT_ICEDAMAGE, percent = -5 },     -- Lekko wrażliwy na lód
    { type = COMBAT_FIREDAMAGE, percent = -10 },   -- Wrażliwy na ogień
    { type = COMBAT_HOLYDAMAGE, percent = -10 },   -- Wrażliwy na świętość
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