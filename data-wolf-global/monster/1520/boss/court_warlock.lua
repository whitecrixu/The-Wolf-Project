local mType = Game.createMonsterType("Court Warlock")
local monster = {}

monster.description = "a court warlock"
monster.experience = 4200
monster.outfit = {
    lookType = 1903, -- Zgodne z Twoim JSONem
    lookHead = 0,    -- Brak danych o kolorach, ustawiono domyślne
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 1,  -- Zgodne z Twoim JSONem
    lookMount = 0
}

monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 36517 -- Ciało typowe dla Bounac (alternatywnie 6080)
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 100,
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
    targetDistance = 4, -- Mag, utrzymuje dystans
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
    { text = "My magic is superior!", yell = false },
    { text = "The Order prevails.", yell = false },
    { text = "Ignorance is fatal.", yell = false },
    { text = "Shocking, isn't it?", yell = false }
}

monster.loot = {
    { name = "platinum coin", minCount = 1, maxCount = 10, chance = 100000 },
    { name = "gold coin", minCount = 1, maxCount = 80, chance = 100000 },
    { name = "great mana potion", minCount = 1, maxCount = 2, chance = 20000 },
    { name = "wand of starstorm", chance = 5000 },
    { name = "hailstorm rod", chance = 5000 },
    { name = "terra rod", chance = 5000 },
    { name = "spellbook of mind control", chance = 1500 }, -- Rare
    { name = "lion crest", chance = 3500 },              -- Item tematyczny
    { name = "cyan crystal fragment", chance = 8000 },
    { name = "blue robe", chance = 6000 },
    { name = "magma monocle", chance = 4000 }
}

monster.attacks = {
    -- Melee (Słabe, ostateczność)
    { name = "melee", interval = 2000, chance = 100, minDamage = -50, maxDamage = -100 },
    -- Energy Missile (Główny atak)
    { name = "combat", interval = 2000, chance = 80, type = COMBAT_ENERGYDAMAGE, minDamage = -250, maxDamage = -450, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true },
    -- Great Energy Beam (Silny atak liniowy)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -550, range = 7, length = 7, spread = 0, effect = CONST_ME_ENERGYAREA, target = false },
    -- Fireball (Obszarowy)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -300, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true }
}

monster.defenses = {
    defense = 35,
    armor = 30,
    -- Healing
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_HEALING, minDamage = 150, maxDamage = 350, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Invisibility
    { name = "invisible", interval = 2000, chance = 15, effect = CONST_ME_MAGIC_BLUE, duration = 3000 },
    -- Mana Shield (Wizualne)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Standardowy Mag Bounac)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = -5 }, -- Lekko wrażliwy na fizykę
    { type = COMBAT_ENERGYDAMAGE, percent = 90 },   -- Prawie odporny na energię
    { type = COMBAT_EARTHDAMAGE, percent = 20 },
    { type = COMBAT_FIREDAMAGE, percent = 20 },
    { type = COMBAT_ICEDAMAGE, percent = 50 },      -- Odporny na lód
    { type = COMBAT_HOLYDAMAGE, percent = 0 },
    { type = COMBAT_DEATHDAMAGE, percent = -10 },   -- Wrażliwy na śmierć
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