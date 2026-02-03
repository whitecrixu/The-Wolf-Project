local mType = Game.createMonsterType("Michael the Stalwart")
local monster = {}

monster.description = "Michael the Stalwart"
monster.experience = 28000
monster.outfit = {
    lookType = 1900, -- Zgodne z Twoim JSONem
    lookHead = 94,
    lookBody = 31,
    lookLegs = 19,
    lookFeet = 38,
    lookAddons = 3,
    lookMount = 0
}

monster.health = 35000 -- Wysokie HP (Tank)
monster.maxHealth = 35000
monster.race = "blood"
monster.corpse = 36517 -- Ciało Raubrittera/Rycerza
monster.speed = 170
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
    targetDistance = 1, -- Walczy w zwarciu (Polearm)
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
    { text = "My shield is unbreakable!", yell = true },
    { text = "Stand firm!", yell = false },
    { text = "For the glory of the Order!", yell = false },
    { text = "I shall not be moved.", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 10, maxCount = 20, chance = 100000 },
    { name = "crystal coin", minCount = 1, maxCount = 3, chance = 100000 },
    { name = "violet gem", chance = 15000 },
    { name = "giant sword", chance = 8000 },
    { name = "tower shield", chance = 8000 },
    { name = "lion crest", chance = 5000 },       -- Tematyczny item Zakonu
    { name = "great health potion", minCount = 2, maxCount = 5, chance = 25000 },
    { name = "halberd", chance = 5000 },
    { name = "lion hammer", chance = 500 } -- Rare (Opcjonalnie)
}

monster.attacks = {
    -- Melee (Silne uderzenie bronią drzewcową)
    { name = "melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -1000 },
    -- Groundshaker (Area Physical - Tąpnięcie)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1200, range = 1, length = 0, spread = 0, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false }
}

mType:register(monster)