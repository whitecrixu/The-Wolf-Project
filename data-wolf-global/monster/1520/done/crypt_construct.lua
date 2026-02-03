local mType = Game.createMonsterType("Crypt Construct")
local monster = {}

monster.description = "a crypt construct"
monster.experience = 20500
monster.outfit = {
    lookType = 1887, -- Zgodne z monster.json (Id: 2758 "crypt fiend"). Konstrukt używa tego samego modelu.
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 25000
monster.maxHealth = 25000
monster.race = "undead"
monster.corpse = 52555 
monster.speed = 170
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
    canPushCreatures = true, -- Jako "ciężki" potwór przepycha inne
    staticAttackChance = 90,
    targetDistance = 1, -- Walczy w zwarciu
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
    { text = "Clack... Clack...", yell = false },
    { text = "Crush...", yell = false },
    { text = "Serve...", yell = false }
}

monster.loot = {
    {id = 3043, chance = 100000, countmax = 20}, -- crystal coin (100%)
    -- Kosztowności (Gems & Crystals)
    {id = 3033,  chance = 50000},                -- small amethyst (50%)
    {id = 16119, chance = 50000},                -- blue crystal shard (50%)
    {id = 16125, chance = 50000},                -- cyan crystal fragment (50%)
    {id = 3041,  chance = 20000},                -- blue gem (20%)
    
    -- Produkty stworzeń (Creature Products)
    -- {id = 11706, chance = 50000},                -- toe nails (50%)
    {id = 52719, chance = 50000},                -- crystallized death (50%)
    {id = 52720, chance = 50000},                -- cluster of crystallized death (50%)
    
    -- Przedmioty z bursztynu (Amber)
    {id = 32626, chance = 50000},                -- amber (50%)
    {id = 32624, chance = 50000},                -- amber with a bug (50%)
    {id = 7426, chance = 50000}                 -- amber staff (50%)
}

monster.attacks = {
    -- Heavy Melee (Physical)
    { name = "melee", interval = 2000, chance = 100, minDamage = -400, maxDamage = -850 },
    -- Bone Spike (Physical - Area/Front)
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -350, maxDamage = -600, range = 1, length = 3, spread = 2, effect = CONST_ME_GROUNDSHAKER, target = false },
    -- Death Ball (Distance)
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -450, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    -- Life Drain
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -200, maxDamage = -400, range = 1, effect = CONST_ME_MAGIC_RED, target = true }
}

monster.defenses = {
    defense = 65,
    armor = 110, -- Bardzo wysoki pancerz (konstrukt)
    -- Self Healing
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 200, maxDamage = 450, effect = CONST_ME_MAGIC_BLUE, target = false },
    -- Harden (Buff defensywny - wizualny)
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_NONE, effect = CONST_ME_BLOCKHIT, target = false }
}

-- Odporności (Resistances)
monster.elements = {
    { type = COMBAT_PHYSICALDAMAGE, percent = 5 },   -- Lekko odporny (pancerz)
    { type = COMBAT_DEATHDAMAGE, percent = 50 },     -- Wysoka odporność na śmierć
    { type = COMBAT_EARTHDAMAGE, percent = 40 },     -- Odporny na ziemię
    { type = COMBAT_ICEDAMAGE, percent = -10 },      -- Wrażliwy na lód (kruchość kości)
    { type = COMBAT_FIREDAMAGE, percent = 0 },
    { type = COMBAT_HOLYDAMAGE, percent = -10 },     -- Wrażliwy na świętość
    { type = COMBAT_ENERGYDAMAGE, percent = 0 },
    { type = COMBAT_LIFEDRAIN, percent = 100 },      -- Nieumarły konstrukt (często odporny na drain)
    { type = COMBAT_MANADRAIN, percent = 0 },
    { type = COMBAT_DROWNDAMAGE, percent = 0 }
}

monster.immunities = {
    { type = "paralyze", condition = true },
    { type = "outfit", condition = false },
    { type = "invisible", condition = true },
    { type = "bleed", condition = true }, -- Konstrukty z kości nie krwawią
    { type = "drown", condition = true }
}

mType:register(monster)