local mType = Game.createMonsterType("The Gravedigger")
local monster = {}

monster.description = "The Gravedigger"
monster.experience = 55000
monster.outfit = {
    lookType = 1880, -- Zgodne z boss.json (Id: 2721)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 65000
monster.maxHealth = 65000
monster.race = "undead"
monster.corpse = 36526 -- Standardowe ciało bossów z Update 15.20
monster.speed = 165
monster.manaCost = 0

monster.changeTarget = {
    interval = 2000,
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
    staticAttackChance = 95,
    targetDistance = 1, -- Walczy w zwarciu
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

-- Przyzywa pomocników do kopania grobów
monster.maxSummons = 2
monster.summons = {
    { name = "Walking Dread", chance = 15, interval = 2000, count = 2 }
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Six feet under...", yell = false },
    { text = "I have a spot reserved just for you!", yell = true },
    { text = "Buried alive!", yell = false },
    { text = "Rest in pieces.", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 10, maxCount = 30, chance = 100000 },
    { name = "crystal coin", minCount = 2, maxCount = 5, chance = 100000 },
    { name = "grave flower", chance = 100000 }, -- Decorative
    { name = "crystallized death", chance = 15000 },
    { name = "necromantic core", chance = 10000 },
    { name = "skull helmet", chance = 5000 },
    { name = "heavy mace", chance = 4500 },
    { name = "chaos mace", chance = 2000 },
    { name = "soul stone", chance = 1000 }, -- Very Rare
    { name = "gravedigger's shovel", chance = 500 } -- Unikalny przedmiot (jeśli istnieje w items.xml) lub placeholder
}

monster.attacks = {
    -- Heavy Shovel Strike (Physical - Frontal)
    { name = "melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1200 },
    -- Earth Slam (Area around boss)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -900, range = 7, radius = 4, effect = CONST_ME_GROUNDSHAKER, target = false },
    -- Grave Mud (Paralyze + Earth)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -200, maxDamage = -400, range = 7, effect = CONST_ME_POISONAREA, target = true, condition = { type = CONDITION_PARALYZE, start = 2000, tick = 4000 } },
    -- Death Breath (Beam)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -1000, range = 1, length = 7, spread = 3, effect = CONST_ME_MORTAREA, target = false },
    -- Life Drain
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -600, range = 7, effect = CONST_ME_MAGIC_RED, target = true }
}

monster.defenses = {
    defense = 80,
    armor = 90,
    -- Strong Healing
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 400, maxDamage = 1000, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Stone Skin (Buff)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_BLOCKHIT, target = false }
}

-- Odporności (Resistances)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 10 },
    { type = COMBAT_DEATHDAMAGE, percent = 60 },    -- Wysoka odporność
    { type = COMBAT_EARTHDAMAGE, percent = 100 },   -- Całkowita odporność (Ziemia to jego żywioł)
    { type = COMBAT_FIREDAMAGE, percent = -10 },    -- Lekko wrażliwy na ogień
    { type = COMBAT_ICEDAMAGE, percent = -5 },
    { type = COMBAT_HOLYDAMAGE, percent = -15 },    -- Wrażliwy na świętość (Undead)
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_LIFEDRAIN, percent = 100 },
    { type = COMBAT_MANADRAIN, percent = 100 },
    { type = COMBAT_DROWNDAMAGE, percent = 100 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = true } -- Nie krwawi
}

mType:register(monster)