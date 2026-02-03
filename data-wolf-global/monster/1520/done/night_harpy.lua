local mType = Game.createMonsterType("Night Harpy")
local monster = {}

monster.description = "a night harpy"
monster.experience = 21000
monster.outfit = {
    lookType = 1899, -- Domyślny typ dla harpii z Forsaken Crypt (Update 15.20)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 14000
monster.maxHealth = 1400
monster.race = "undead"
monster.corpse = 52680 -- Standardowe ciało nieumarłych z Update 15.20
monster.speed = 210 -- Bardzo szybka
monster.manaCost = 0

monster.changeTarget = {
    interval = 2000, -- Często zmienia cel (agresywna)
    chance = 15
}

monster.strategiesTarget = {
    nearest = 60,
    health = 20,
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
    staticAttackChance = 95,
    targetDistance = 1, -- Walczy w zwarciu, doskakuje
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
    chance = 15,
    { text = "Screeeeech!", yell = true },
    { text = "Claw and tear!", yell = false },
    { text = "Darkness falls!", yell = false }
}

monster.loot = {
    -- Common 
    {id = 3035, chance = 50000, maxCount = 25},   -- platinum coin (50%)

    -- Semi-rare 
    {id = 40585, chance = 6720, maxCount = 1},    -- harpy feathers
    {id = 16120, chance = 4690, maxCount = 1},    -- violet crystal shard
    {id = 16119, chance = 4530, maxCount = 1},    -- blue crystal shard

    -- Rare 
    {id = 7642, chance = 2970, maxCount = 3},     -- great spirit potion
    {id = 3063, chance = 1720, maxCount = 1},     -- gold ring
    {id = 16096, chance = 1720, maxCount = 1},    -- wand of defiance
    {id = 8043, chance = 1560, maxCount = 1},     -- focus cape
    {id = 3036, chance = 1200, maxCount = 1},     -- violet gem

    -- Very Rare 
    {id = 14247, chance = 500, maxCount = 1},     -- ornate crossbow
    {id = 9304, chance = 470, maxCount = 1},      -- shockwave amulet
    {id = 3366, chance = 440, maxCount = 1},      -- magic plate armor
}

monster.attacks = {
    -- Melee (Szybkie i bolesne)
    { name = "melee", interval = 2000, chance = 100, minDamage = -350, maxDamage = -650 },
    -- Death Screech (Area around monster)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -500, range = 7, radius = 3, effect = CONST_ME_MAGIC_RED, target = false },
    -- Sonic Wave (Physical/Energy damage)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -550, range = 7, length = 6, spread = 3, effect = CONST_ME_SOUND_PURPLE, target = false },
    -- Life Drain
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -400, range = 1, effect = CONST_ME_MAGIC_RED, target = true },
    -- Debuff (Speed reducer/Paralyze)
    { name = "speed", interval = 2000, chance = 10, speedChange = -300, range = 7, effect = CONST_ME_MAGIC_RED, target = true, duration = 4000 }
}

monster.defenses = {
    defense = 50,
    armor = 65,
    -- Haste (Harpia musi być szybka)
    { name = "speed", interval = 2000, chance = 15, speedChange = 400, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 150, maxDamage = 350, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Resistances)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_DEATHDAMAGE, percent = 40 },   -- Odporna na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = 40 },   -- Odporna na ziemię (latająca/undead)
    { type = COMBAT_ICEDAMAGE, percent = -10 },    -- Wrażliwa na lód
    { type = COMBAT_FIREDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = -10 },   -- Wrażliwa na świętość
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_LIFEDRAIN, percent = 0 },
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = false } -- Jako undead zazwyczaj nie krwawi
}

mType:register(monster)