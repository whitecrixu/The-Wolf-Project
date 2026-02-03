local mType = Game.createMonsterType("Percy Peacetinker")
local monster = {}

monster.description = "Percy Peacetinker"
monster.experience = 3900
monster.outfit = {
    lookType = 137, -- Zgodne z Twoim JSONem
    lookHead = 79,
    lookBody = 31,
    lookLegs = 101,
    lookFeet = 130,
    lookAddons = 3,
    lookMount = 0
}

monster.health = 5200
monster.maxHealth = 5200
monster.race = "blood"
monster.corpse = 23555 -- Standardowe ciało (humanoid)
monster.speed = 160
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
    staticAttackChance = 90,
    targetDistance = 4, -- Utrzymuje dystans (Hunter/Tinker)
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
    { text = "I call this the Peacemaker!", yell = false },
    { text = "Just a little tinkering required...", yell = false },
    { text = "Boom! Did you see that?", yell = true },
    { text = "Mind the shrapnel!", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 1, maxCount = 12, chance = 100000 },
    { name = "gold coin", minCount = 1, maxCount = 100, chance = 100000 },
    { name = "gear wheel", minCount = 1, maxCount = 3, chance = 20000 },
    { name = "iron ore", minCount = 1, maxCount = 2, chance = 15000 },
    { name = "power bolt", minCount = 1, maxCount = 10, chance = 25000 },
    { name = "crossbow", chance = 8000 },
    { name = "percy's wrench", chance = 500 }, -- Custom quest item (przykładowo)
    { name = "sniper gloves", chance = 2000 } -- Rare
}

monster.attacks = {
    -- Melee (Słabe, tylko gdy gracz podejdzie)
    { name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -250 },
    -- Crossbow Shot (Physical Distance)
    { name = "combat", interval = 2000, chance = 90, type = COMBAT_PHYSICALDAMAGE, minDamage = -200, maxDamage = -450, range = 7, shootEffect = CONST_ANI_BOLT, effect = CONST_ME_HITAREA, target = true },
    -- Explosive Gadget (Fire Area)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -350, range = 7, radius = 3, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONHIT, target = true },
    -- Shrapnel Grenade (Physical Bleed)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -100, maxDamage = -250, range = 5, effect = CONST_ME_DRAWBLOOD, target = true, condition = { type = CONDITION_BLEEDING, start = 50, tick = 4000 } }
}

monster.defenses = {
    defense = 40,
    armor = 35,
    -- Potion Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 100, maxDamage = 300, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Invisibility (Hunter Stealth)
    { name = "invisible", interval = 2000, chance = 10, effect = CONST_ME_MAGIC_BLUE, duration = 3000 }
}

-- Odporności (Tinker)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_FIREDAMAGE, percent = 40 },    -- Pracuje z materiałami wybuchowymi
    { type = COMBAT_ENERGYDAMAGE, percent = 20 },   -- Gadżeciarz
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_DEATHDAMAGE, percent = -10 },   -- Wrażliwy na śmierć
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