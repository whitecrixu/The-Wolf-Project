local mType = Game.createMonsterType("Yorik Youngbook")
local monster = {}

monster.description = "Yorik Youngbook"
monster.experience = 4200
monster.outfit = {
    lookType = 268, -- Zgodne z Twoim JSONem
    lookHead = 57,
    lookBody = 77,
    lookLegs = 79,
    lookFeet = 114,
    lookAddons = 3,
    lookMount = 0
}

monster.health = 4800 -- Mag ma mniej HP niż Nigel/Percy
monster.maxHealth = 4800
monster.race = "blood"
monster.corpse = 23555 -- Standardowe ciało (humanoid)
monster.speed = 155
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 50,
    health = 20,
    damage = 30, -- Magowie często atakują tego, kto zadaje im obrażenia
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
    targetDistance = 5, -- Utrzymuje duży dystans (Mag)
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
    { text = "Knowledge is power!", yell = false },
    { text = "According to my calculations, you are dead.", yell = false },
    { text = "Did you read the manual?", yell = false },
    { text = "A simple spell, but quite unbreakable.", yell = true }
}

monster.loot = {
    { name = "platinum coin", minCount = 1, maxCount = 15, chance = 100000 },
    { name = "gold coin", minCount = 1, maxCount = 100, chance = 100000 },
    { name = "sudden death rune", minCount = 1, maxCount = 3, chance = 30000 },
    { name = "ultimate mana potion", minCount = 1, maxCount = 2, chance = 25000 },
    { name = "spellbook of enlightenment", chance = 8000 },
    { name = "yorik's journal", chance = 500 }, -- Custom quest item
    { name = "wand of starstorm", chance = 4000 },
    { name = "energy ring", chance = 5000 }
}

monster.attacks = {
    -- Melee (Słabe, ostateczność)
    { name = "melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -150 },
    -- Energy Strike (Single Target - Main Attack)
    { name = "combat", interval = 2000, chance = 90, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -500, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true },
    -- Sudden Death (Strong Magic)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -300, maxDamage = -600, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Energy Wave (Area)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -450, range = 7, length = 8, spread = 3, effect = CONST_ME_ENERGYAREA, target = false },
    -- Fireball (Area)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -350, range = 7, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true }
}

monster.defenses = {
    defense = 35,
    armor = 30, -- Lekki pancerz (szata)
    -- Exura Vita (Strong Healing)
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 200, maxDamage = 500, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Mana Shield (Visual buff)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Mage)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = -10 }, -- Wrażliwy na fizykę
    { type = COMBAT_ENERGYDAMAGE, percent = 80 },    -- Mistrz energii
    { type = COMBAT_FIREDAMAGE, percent = 40 },
    { type = COMBAT_ICEDAMAGE, percent = 20 },
    { type = COMBAT_DEATHDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = 0 },
    { type = COMBAT_EARTHDAMAGE, percent = 0 },
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