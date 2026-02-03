local mType = Game.createMonsterType("Clavius")
local monster = {}

monster.description = "Clavius"
monster.experience = 25000
monster.outfit = {
    lookType = 1902, -- Zgodne z Twoim JSONem
    lookHead = 94,
    lookBody = 19,
    lookLegs = 36,
    lookFeet = 56,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 28000
monster.maxHealth = 28000
monster.race = "blood"
monster.corpse = 36517 -- Ciało Raubrittera/Rycerza (ID z items.xml dla Update 12.x+)
monster.speed = 220
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
    staticAttackChance = 95,
    targetDistance = 1, -- Walczy w zwarciu (Rycerz)
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
    { text = "The Order shall fall!", yell = true },
    { text = "My flail will crush you!", yell = false },
    { text = "You stand no chance against the usurpers.", yell = false },
    { text = "Feel the weight of my steel!", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 10, maxCount = 25, chance = 100000 },
    { name = "crystal coin", minCount = 1, maxCount = 3, chance = 100000 },
    { name = "violet gem", chance = 15000 },
    { name = "knight armor", chance = 8000 },
    { name = "spiked squelcher", chance = 2000 }, -- Broń, którą trzyma (morgenstern)
    { name = "lion crest", chance = 5000 },       -- Tematyczny item
    { name = "tower shield", chance = 4000 },
    { name = "great health potion", minCount = 2, maxCount = 5, chance = 25000 },
    { name = "order of the lion banner", chance = 500 } -- Rare decoration
}

monster.attacks = {
    -- Melee (Silne fizyczne)
    { name = "melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -900 },
    -- Groundshaker (Exori Gran - Physical Area)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1100, range = 1, length = 0, spread = 0, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
    -- Holy Strike (Exori San - Holy Distance)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -600, range = 4, effect = CONST_ME_HOLYDAMAGE, target = true },
    -- Bleed Attack (Specyfika broni obuchowej z kolcami)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 0, maxDamage = -150, range = 1, effect = CONST_ME_DRAWBLOOD, target = true, condition = { type = CONDITION_BLEEDING, start = 100, tick = 4000 } }
}

monster.defenses = {
    defense = 65,
    armor = 80, -- Ciężka zbroja
    -- Great Healing (Exura Gran Ico)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 300, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Shielding (Buff)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_MAGIC_YELLOW, target = false }
}

-- Odporności (Rycerz Zakonu)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 20 },
    { type = COMBAT_HOLYDAMAGE, percent = 40 },    -- Odporny na świętość
    { type = COMBAT_DEATHDAMAGE, percent = -10 },  -- Wrażliwy na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = -5 },   -- Lekko wrażliwy na truciznę
    { type = COMBAT_FIREDAMAGE, percent = 10 },
    { type = COMBAT_ICEDAMAGE, percent = 0 },
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