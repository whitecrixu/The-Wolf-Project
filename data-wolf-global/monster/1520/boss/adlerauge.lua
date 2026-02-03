local mType = Game.createMonsterType("Adlerauge")
local monster = {}

monster.description = "Adlerauge"
monster.experience = 22000
monster.outfit = {
    lookType = 1901, -- Zgodne z Twoim JSONem (Raubritter Marksman)
    lookHead = 94,
    lookBody = 38,
    lookLegs = 67,
    lookFeet = 19,
    lookAddons = 2,
    lookMount = 0
}

monster.health = 24000
monster.maxHealth = 24000
monster.race = "blood"
monster.corpse = 36517 -- Ciało Raubrittera (ID z items.xml dla Bounac)
monster.speed = 195 -- Szybki, musi utrzymywać dystans
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 50,
    health = 20,
    damage = 30, -- Priorytetuje tych, którzy go ranią (snajper eliminuje zagrożenie)
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
    staticAttackChance = 90,
    targetDistance = 6, -- Kluczowe: Walczy z daleka (Snajper)
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
    { text = "You cannot hide from my sight!", yell = true },
    { text = "One shot, one kill.", yell = false },
    { text = "For the Order!", yell = false },
    { text = "Eagle eye never misses.", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 10, maxCount = 20, chance = 100000 },
    { name = "crystal coin", minCount = 1, maxCount = 2, chance = 100000 },
    { name = "spectral bolt", minCount = 5, maxCount = 20, chance = 40000 },
    { name = "red gem", chance = 15000 },
    { name = "composite hornbow", chance = 8000 },
    { name = "lion crest", chance = 5000 },       -- Tematyczny item Zakonu Lwa
    { name = "musketeer crossbow", chance = 4000 },
    { name = "great spirit potion", minCount = 2, maxCount = 5, chance = 25000 },
    { name = "lion longbow", chance = 500 } -- Rare (Opcjonalnie, jeśli istnieje w silniku)
}

monster.attacks = {
    -- Melee (Słabe, tylko w ostateczności)
    { name = "melee", interval = 2000, chance = 100, minDamage = -150, maxDamage = -300 },
    -- Sniper Shot (Główny atak - Fizyczny)
    { name = "combat", interval = 2000, chance = 90, type = COMBAT_PHYSICALDAMAGE, minDamage = -400, maxDamage = -800, range = 7, shootEffect = CONST_ANI_BOLT, effect = CONST_ME_HITAREA, target = true },
    -- Holy Burst (Obszarowy Holy - "Święta amunicja")
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -300, maxDamage = -600, range = 7, radius = 3, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
    -- Precision Shot (Death/Physical - High Damage Single Target)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -600, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SNIPERARROW, effect = CONST_ME_ASSASSIN, target = true },
    -- Multi-Shot (Cone/Wave)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -250, maxDamage = -500, range = 7, length = 8, spread = 3, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONHIT, target = false }
}

monster.defenses = {
    defense = 45,
    armor = 50, -- Lżejszy pancerz niż Clavius
    -- Divine Healing (Salvation)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 300, maxDamage = 700, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Haste (Taktyczne pozycjonowanie)
    { name = "speed", interval = 2000, chance = 15, speedChange = 300, effect = CONST_ME_MAGIC_RED, target = false, duration = 4000 }
}

-- Odporności (Zakon Lwa - Strzelec)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = 40 },    -- Odporny na świętość
    { type = COMBAT_DEATHDAMAGE, percent = -10 },  -- Wrażliwy na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = -5 },
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