local mType = Game.createMonsterType("Adventurer Group")
local monster = {}

monster.description = "an adventurer group"
monster.experience = 35000
monster.outfit = {
    lookType = 0,      -- Wymagane 0, aby użyć lookTypeEx
    lookTypeEx = 52836, -- ID z boss.json
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 45000
monster.maxHealth = 45000
monster.race = "blood"
monster.corpse = 23555 -- Standardowe ciało (lub 0, jeśli ma znikać)
monster.speed = 0      -- Stacjonarny (LookTypeEx zazwyczaj nie ma animacji chodu)
monster.manaCost = 0

monster.changeTarget = {
    interval = 2000,
    chance = 20
}

monster.strategiesTarget = {
    nearest = 50,
    health = 20,
    damage = 30,
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
    targetDistance = 4,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = false,
    canWalkOnFire = false,
    canWalkOnPoison = false
}

monster.light = {
    level = 0,
    color = 0
}

monster.voices = {
    interval = 5000,
    chance = 10,
    { text = "Focus fire on the target!", yell = true },
    { text = "Heal me!", yell = false },
    { text = "Hold the line!", yell = false },
    { text = "Exori Gran!", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 10, maxCount = 50, chance = 100000 },
    { name = "crystal coin", minCount = 1, maxCount = 5, chance = 100000 },
    { name = "ultimate mana potion", minCount = 2, maxCount = 10, chance = 30000 },
    { name = "ultimate health potion", minCount = 2, maxCount = 10, chance = 30000 },
    { name = "sudden death rune", minCount = 5, maxCount = 10, chance = 25000 },
    { name = "stone skin amulet", chance = 10000 },
    { name = "might ring", chance = 8000 },
    { name = "magic plate armor", chance = 5000 },
    { name = "mastermind shield", chance = 5000 },
    { name = "golden legs", chance = 4000 },
    { name = "boots of haste", chance = 6000 },
    { name = "adventurer's backpack", chance = 2000 } -- Opcjonalny custom item
}

monster.attacks = {
    -- Knight Attack (Exori Gran - Physical Area)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -800, range = 1, length = 0, spread = 0, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
    -- Paladin Attack (Divine Missile - Holy)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -600, range = 7, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
    -- Sorcerer Attack (Sudden Death)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -900, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Druid Attack (Terra Wave)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -300, maxDamage = -700, range = 7, length = 8, spread = 3, effect = CONST_ME_CARNIPHILA, target = false },
    -- Combined Assault (Energy - Beam)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -400, maxDamage = -800, range = 7, length = 8, spread = 0, effect = CONST_ME_ENERGYAREA, target = false }
}

monster.defenses = {
    defense = 60,
    armor = 60,
    -- Mass Healing (Sio)
    { name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 500, maxDamage = 1500, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Magic Shield (Utamo Vita)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Zbalansowana drużyna)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 20 },
    { type = COMBAT_DEATHDAMAGE, percent = 20 },
    { type = COMBAT_EARTHDAMAGE, percent = 20 },
    { type = COMBAT_FIREDAMAGE, percent = 20 },
    { type = COMBAT_ICEDAMAGE, percent = 20 },
    { type = COMBAT_HOLYDAMAGE, percent = 20 },
    { type = COMBAT_ENERGYDAMAGE, percent = 20 },
    { type = COMBAT_LIFEDRAIN, percent = 100 }, -- Nie można wyssać życia z grupy/obiektu
    { type = COMBAT_MANADRAIN, percent = 100 },
    { type = COMBAT_DROWNDAMAGE, percent = 100 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = true },
    { type = "invisible", condition = true },
    { type = "bleed", condition = true },
    { type = "push", condition = true }
}

mType:register(monster)