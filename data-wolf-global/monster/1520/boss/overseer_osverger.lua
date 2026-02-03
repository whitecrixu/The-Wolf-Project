local mType = Game.createMonsterType("Overseer Osverger")
local monster = {}

monster.description = "Overseer Osverger"
monster.experience = 26000
monster.outfit = {
    lookType = 1902, -- Zgodne z Twoim JSONem
    lookHead = 114,
    lookBody = 76,
    lookLegs = 57,
    lookFeet = 57,
    lookAddons = 0, -- Model 1902 zazwyczaj nie ma addonów, ale można ustawić 1/2 jeśli serwer to obsługuje
    lookMount = 0
}

monster.health = 30000
monster.maxHealth = 30000
monster.race = "blood"
monster.corpse = 36517 -- Ciało Raubrittera (standard dla Bounac)
monster.speed = 175
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
    targetDistance = 1, -- Walczy w zwarciu (Broń obuchowa)
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
    { text = "Get back to work, scum!", yell = true },
    { text = "Discipline is the key to victory.", yell = false },
    { text = "I see everything.", yell = false },
    { text = "The Lion shall roar!", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 5, maxCount = 20, chance = 100000 },
    { name = "crystal coin", minCount = 1, maxCount = 3, chance = 100000 },
    { name = "spiked squelcher", chance = 15000 }, -- Broń pasująca do modelu (korbacz)
    { name = "knight armor", chance = 10000 },
    { name = "tower shield", chance = 8000 }
}

mType:register(monster)