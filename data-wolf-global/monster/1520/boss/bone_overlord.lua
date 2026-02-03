local mType = Game.createMonsterType("Bone Overlord")
local monster = {}

monster.description = "a bone overlord"
monster.experience = 20000
monster.outfit = {
    lookType = 0,       -- Wymagane 0, aby użyć lookTypeEx
    lookTypeEx = 52831, -- Zgodne z Twoim JSONem (ID 52831)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 35000 -- Zwiększone HP dla wersji stacjonarnej/bossa
monster.maxHealth = 35000
monster.race = "undead"
monster.corpse = 23555 -- Standardowe ciało (lub 0, jeśli ma znikać po śmierci)
monster.speed = 0      -- Stacjonarny (LookTypeEx zazwyczaj nie ma animacji ruchu)
monster.manaCost = 0

monster.changeTarget = {
    interval = 2000,
    chance = 20
}

monster.strategiesTarget = {
    nearest = 50,
    health = 20,
    damage = 30, -- Atakuje tych, którzy go ranią
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
    canPushItems = false,
    canPushCreatures = false,
    staticAttackChance = 95,
    targetDistance = 5, -- Walczy na dystans
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

-- Overlord przyzywa armię do obrony (skoro sam się nie rusza)
monster.maxSummons = 4
monster.summons = {
    { name = "Walking Dread", chance = 20, interval = 2000, count = 2 },
    { name = "Skeleton Elite Warrior", chance = 15, interval = 2000, count = 2 }
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Bow before the throne of bones!", yell = true },
    { text = "Rise, my servants!", yell = false },
    { text = "Your flesh will rot, but your bones will serve.", yell = false },
    { text = "Eternal service awaits.", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 10, maxCount = 30, chance = 100000 },
    { name = "crystal coin", minCount = 1, maxCount = 3, chance = 100000 },
    { name = "gold ingot", minCount = 1, maxCount = 2, chance = 20000 },
    { name = "necromantic core", chance = 10000 },
    { name = "bone shield", chance = 8000 },
    { name = "skull helmet", chance = 6000 },
    { name = "maxilla", chance = 3000 }, -- Rare mount item
    { name = "bonebreaker", chance = 4000 },
    { name = "cluster of solace", chance = 5000 },
    { name = "soul stone", chance = 1000 } -- Very Rare
}

monster.attacks = {
    -- Death Missile (Główny atak dystansowy)
    { name = "combat", interval = 2000, chance = 80, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -800, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Bone Spikes (Earth Area - "wyrastające kości z ziemi")
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -700, range = 7, radius = 4, effect = CONST_ME_PLANTATTACK, target = false },
    -- Curse (Klątwa)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -100, maxDamage = -200, range = 7, effect = CONST_ME_SMALLCLOUDS, target = true, condition = { type = CONDITION_CURSED, start = 200, tick = 4000 } },
    -- Life Drain (Silny wampiryzm)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = true }
}

monster.defenses = {
    defense = 70,
    armor = 70,
    -- Summon Healing (Leczy swoje sługi i siebie)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 300, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false, radius = 5 },
    -- Bone Shield (Buff)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_MAGIC_RED, target = false }
}

-- Odporności (Szkieletowy Władca)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 20 },
    { type = COMBAT_DEATHDAMAGE, percent = 80 },    -- Wysoka odporność na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = 60 },    -- Odporny na truciznę/ziemię
    { type = COMBAT_FIREDAMAGE, percent = -5 },     -- Lekko wrażliwy na ogień
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = -10 },    -- Wrażliwy na świętość
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_LIFEDRAIN, percent = 100 },     -- Nie można wyssać życia (Undead/Object)
    { type = COMBAT_MANADRAIN, percent = 100 },
    { type = COMBAT_DROWNDAMAGE, percent = 100 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = true }, -- Kości nie krwawią
    { type = "push", condition = true }
}

mType:register(monster)