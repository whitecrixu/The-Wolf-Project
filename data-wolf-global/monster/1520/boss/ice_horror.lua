local mType = Game.createMonsterType("Ice Horror")
local monster = {}

monster.description = "an ice horror"
monster.experience = 7800
monster.outfit = {
    lookType = 1881, -- Zgodne z boss.json (Id: 2733)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 8200
monster.maxHealth = 8200
monster.race = "undead"
monster.corpse = 36526 -- Standardowe ciało dla tego update'u (sprawdź items.xml)
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
    rewardBoss = false,
    illusionable = false,
    canPushItems = true,
    canPushCreatures = true,
    staticAttackChance = 90,
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.light = {
    level = 3,
    color = 100 -- Jasnoniebieska poświata
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Freeze...", yell = false },
    { text = "Your warmth... give it to me...", yell = false },
    { text = "Shatter like glass!", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 1, maxCount = 10, chance = 100000 },
    { name = "crystal coin", minCount = 0, maxCount = 1, chance = 20000 },
    { name = "small sapphire", minCount = 1, maxCount = 2, chance = 15000 },
    { name = "green crystal fragment", chance = 12000 },
    { name = "frosty heart", chance = 8000 },
    { name = "glacial rod", chance = 4000 },
    { name = "northwind rod", chance = 4000 },
    { name = "crystallized death", chance = 6000 },
    { name = "necromantic core", chance = 1500 }, -- Rare
    { name = "crystalline armor", chance = 800 } -- Very Rare
}

monster.attacks = {
    -- Melee (Silne fizyczne + szansa na zamrożenie)
    { name = "melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -600 },
    -- Ice Strike (Distance)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -250, maxDamage = -450, range = 7, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK, target = true },
    -- Freezing Breath (Wave/Cone)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -300, maxDamage = -550, range = 7, length = 8, spread = 3, effect = CONST_ME_ICETORNADO, target = false },
    -- Paralyze (Strong)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -50, maxDamage = -100, range = 7, effect = CONST_ME_ICEAREA, target = true, condition = { type = CONDITION_PARALYZE, start = 2000, tick = 4000 } },
    -- Life Drain
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -150, maxDamage = -350, range = 1, effect = CONST_ME_MAGIC_RED, target = true }
}

monster.defenses = {
    defense = 55,
    armor = 65,
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 350, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Lodowy Horror)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 10 },
    { type = COMBAT_ICEDAMAGE, percent = 100 },     -- Niewrażliwy na lód
    { type = COMBAT_FIREDAMAGE, percent = -20 },     -- Wrażliwy na ogień
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_EARTHDAMAGE, percent = 40 },     -- Odporny na ziemię/truciznę
    { type = COMBAT_HOLYDAMAGE, percent = -10 },     -- Wrażliwy na świętość
    { type = COMBAT_DEATHDAMAGE, percent = 20 },     -- Częściowo odporny (Undead)
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false },
    { type = "drown", condition = true }
}

mType:register(monster)