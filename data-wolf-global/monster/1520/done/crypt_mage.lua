local mType = Game.createMonsterType("Crypt Mage")
local monster = {}

monster.description = "a crypt mage"
monster.experience = 11000
monster.outfit = {
    lookType = 1905, -- Zgodne z monster.json (Id: 2766)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 14000
monster.maxHealth = 14000
monster.race = "undead"
monster.corpse = 52563 -- Standardowe ciało nieumarłych z Update 15.20 (sprawdź items.xml)
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
    interval = 4000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 70,
    health = 10,
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
    { text = "Czchhh!", yell = false },
    { text = "Maaahhh!", yell = false }
}

monster.loot = {
    -- Waluta (Common, Max 20)
    {id = 3035, chance = 15000, maxCount = 20},   -- platinum coin
    {id = 3043, chance = 15000, maxCount = 20},   -- crystal coin

    -- Klejnoty i Kryształy (Common, Max 1)
    {id = 3032, chance = 15000, maxCount = 1},    -- small emerald
    {id = 3038, chance = 15000, maxCount = 1},    -- green gem
    {id = 16127, chance = 15000, maxCount = 1},   -- green crystal fragment
    {id = 16121, chance = 15000, maxCount = 1},   -- green crystal shard

    -- Specjalne przedmioty (Common, Max 1)
    {id = 52719, chance = 15000, maxCount = 1},   -- crystallized death
    {id = 52705, chance = 15000, maxCount = 1},   -- necromantic core
    
    -- Wyposażenie (Common, Max 1)
    {id = 3324, chance = 15000, maxCount = 1},    -- skull staff
    {id = 8074, chance = 15000, maxCount = 1},    -- spellbook of mind control

    {id = 52706, chance = 15000, maxCount = 1}, -- Toe Nails (brak dokładnej nazwy w pliku)
}

monster.attacks = {
    -- Melee (Słabe, jeśli gracz podejdzie)
    { name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -300 },
    -- Death Missile (Główny atak)
    { name = "combat", interval = 2000, chance = 40, type = COMBAT_DEATHDAMAGE, minDamage = -400, maxDamage = -750, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Energy Wave (Obszarowy)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_ENERGYDAMAGE, minDamage = -350, maxDamage = -600, range = 7, length = 8, spread = 3, effect = CONST_ME_ENERGYHIT, target = false },
    -- Life Drain (Leczenie)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -550, range = 7, effect = CONST_ME_MAGIC_RED, target = true }
}

monster.defenses = {
    defense = 55,
    armor = 105,
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 300, maxDamage = 600, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Mana Shield (Opjonalnie, wizualne)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Resistances)
-- Na podstawie statystyk z Winter Update 15.20
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = -9 }, -- Wrażliwy na fizykę (typowe dla casterów w tym update)
    { type = COMBAT_DEATHDAMAGE, percent = 50 },    -- Wysoka odporność na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = 20 },    -- Odporny na ziemię
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_FIREDAMAGE, percent = -5 },     -- Lekko wrażliwy na ogień
    { type = COMBAT_ICEDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = -10 },    -- Wrażliwy na świętość
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