local mType = Game.createMonsterType("Cyclursus")
local monster = {}

monster.description = "a cyclursus"
monster.experience = 10000
monster.outfit = {
    lookType = 1884, -- Zgodne z monster.json (Id: 2757)
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 13500
monster.maxHealth = 13500
monster.race = "undead"
monster.corpse = 52571 -- ID zwłok dla mobów z Update 15.20 (placeholder, sprawdź items.xml)
monster.speed = 200
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
    targetDistance = 1,
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
    { text = "Crrrrk!", yell = false }, --
}

monster.loot = {
    -- Waluta (Common, Max 20)
    {id = 3035, chance = 15000, maxCount = 20},   -- platinum coin
    {id = 3043, chance = 15000, maxCount = 20},   -- crystal coin

    -- Klejnoty i Kryształy (Common, Max 1)
    {id = 3029, chance = 15000, maxCount = 1},    -- small sapphire
    {id = 3041, chance = 15000, maxCount = 1},    -- blue gem
    {id = 16119, chance = 15000, maxCount = 1},   -- blue crystal shard
    {id = 16125, chance = 15000, maxCount = 1},   -- cyan crystal fragment

    -- Specjalne przedmioty (Common, Max 1)
    {id = 52719, chance = 15000, maxCount = 1},   -- crystallized death
    {id = 52705, chance = 15000, maxCount = 1},   -- necromantic core

    -- Wyposażenie (Common, Max 1)
    {id = 5741, chance = 15000, maxCount = 1},    -- skull helmet

    -- Przedmioty nieznalezione (wymagają ręcznego ID)
    {id = 52718, chance = 15000, maxCount = 1}, -- Deadly Fangs (brak w items.xml)
}

monster.attacks = {
    -- Melee (Physical) - Max DPS ok. 1200
    { name = "melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -900 },
    -- Heavy Blow (Physical)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -600, range = 1, effect = CONST_ME_EXPLOSIONHIT, target = true },
    -- Death Strike (Distance)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -500, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
}

monster.defenses = {
    defense = 60,
    armor = 95, --
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 200, maxDamage = 400, effect = CONST_ME_MAGIC_BLUE, target = false }
}

-- Odporności (Resistances)
-- Sugerowane wartości na podstawie typu (Undead/Beast) i poziomu trudności
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 0 },
    { type = COMBAT_DEATHDAMAGE, percent = 20 },  -- Odporny na śmierć (Undead)
    { type = COMBAT_EARTHDAMAGE, percent = 20 },  -- Odporny na ziemię
    { type = COMBAT_ICEDAMAGE, percent = -10 },   -- Wrażliwy na lód (częste dla bestii/nieumarłych w tym update)
    { type = COMBAT_FIREDAMAGE, percent = -5 },   -- Lekko wrażliwy na ogień
    { type = COMBAT_HOLYDAMAGE, percent = -5 },   -- Lekko wrażliwy na świętość
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