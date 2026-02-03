local mType = Game.createMonsterType("Fiona Firstdream")
local monster = {}

monster.description = "Fiona Firstdream"
monster.experience = 35000
monster.outfit = {
    lookType = 1681,
    lookHead = 92,
    lookBody = 91,
    lookLegs = 94,
    lookFeet = 79,
    lookAddons = 3,
    lookMount = 0
}
monster.health = 55000
monster.maxHealth = 55000
monster.race = "blood"
monster.corpse = 23555
monster.speed = 190
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
    rewardBoss = true,
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

monster.maxSummons = 2
monster.summons = {
    { name = "Phantasm", chance = 15, interval = 2000, count = 2 }
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "I will protect the dream!", yell = true },
    { text = "You cannot break my resolve!", yell = false },
    { text = "For the Seven!", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 5, maxCount = 20, chance = 100000 },
    { name = "crystal coin", minCount = 1, maxCount = 3, chance = 100000 },
    { name = "dream matter", minCount = 1, maxCount = 2, chance = 100000 },
    { name = "violet gem", chance = 15000 },
    { name = "wand of cosmic energy", chance = 8000 },
    { name = "piggy bank", chance = 5000 },
    { name = "mysterious remains", chance = 10000 },
    { name = "cluster of solace", chance = 4000 },
    { name = "dream warrior trophy", chance = 1000 }
}

monster.attacks = {
    -- Melee
    { name = "melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1200 },
    -- Exori Gran Style
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -500, maxDamage = -1000, range = 1, length = 0, spread = 0, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
    -- Divine Missile
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -600, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
    -- Sword Throw (POPRAWIONE)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -700, range = 5, shootEffect = CONST_ANI_WHIRLWINDSWORD, target = true }
}

monster.defenses = {
    defense = 65,
    armor = 75,
    -- Ultimate Healing
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 400, maxDamage = 900, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Divine Shield
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_MAGIC_YELLOW, target = false }
}

monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 30 },
    { type = COMBAT_HOLYDAMAGE, percent = 50 },
    { type = COMBAT_DEATHDAMAGE, percent = 20 },
    { type = COMBAT_EARTHDAMAGE, percent = 0 },
    { type = COMBAT_FIREDAMAGE, percent = -10 },
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_ENERGYDAMAGE, percent = -5 },
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