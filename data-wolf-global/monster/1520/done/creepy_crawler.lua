local mType = Game.createMonsterType("Creepy Crawler")
local monster = {}

monster.description = "a creepy crawler"
monster.experience = 23000
monster.outfit = {
    lookType = 1890,
    lookHead = 0,
    lookBody = 0,
    lookLegs = 0,
    lookFeet = 0,
    lookAddons = 0,
    lookMount = 0
}

monster.health = 27000
monster.maxHealth = 27000
monster.race = "undead"
monster.corpse = 52575
monster.speed = 260
monster.mitigation = 4.11
monster.manaCost = 0

monster.changeTarget = {
    interval = 2000,
    chance = 10
}

monster.strategiesTarget = {
    nearest = 80,
    health = 10,
    damage = 5,
    random = 5,
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
    targetDistance = 1,
    runHealth = 0,
    healthHidden = false,
    isBlockable = false,
    canWalkOnEnergy = true,
    canWalkOnFire = true,
    canWalkOnPoison = true
}

monster.light = {
    color = 0,
    intensity = 0
}

monster.voices = {
    interval = 5000,
    chance = 10,
    {text = "Sssss...", yell = false},
}

monster.immunities = {
    {type = "paralyze", condition = true},
    {type = "outfit", condition = false},
    {type = "invisible", condition = true},
    {type = "bleed", condition = false}
}

monster.elements = {
    {type = COMBAT_PHYSICALDAMAGE, percent = 6},
    {type = COMBAT_ENERGYDAMAGE, percent = 12},
    {type = COMBAT_EARTHDAMAGE, percent = -12},
    {type = COMBAT_FIREDAMAGE, percent = -12},
    {type = COMBAT_ICEDAMAGE, percent = 6},
    {type = COMBAT_HOLYDAMAGE, percent = -6},
    {type = COMBAT_DEATHDAMAGE, percent = 3}
}

monster.attacks = {
    {name = "melee", interval = 2000, chance = 100, minDamage = -500, maxDamage = -1100},
    {name = "combat", interval = 3000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -250, maxDamage = -550, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true},
    {name = "combat", interval = 4000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -450, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
    {name = "combat", interval = 5000, chance = 15, type = COMBAT_PHYSICALDAMAGE, effect = CONST_ME_SOUND_WHITE, target = false, condition = {type = CONDITION_FEAR, duration = 4000}}
}

monster.defenses = {
    defense = 100,
    armor = 100,
}

monster.loot = {
    -- Gold Coins
    {id = 3031, chance = 100000, maxCount = 100}, -- 100% szansy, do 100 sztuk
    {id = 3031, chance = 100000, maxCount = 90},  -- Dodatkowy stack złota

    -- Wyposażenie i kosztowności
    {id = 3279, chance = 2070},                   -- war hammer
    {id = 3037, chance = 530},                    -- yellow gem
    {id = 9057, chance = 10040, maxCount = 2},    -- small topaz

    -- Mikstury
    {id = 238,  chance = 9300},                   -- great mana potion
    {id = 239,  chance = 6200},                   -- great health potion

    -- Przedmioty magiczne i produkty stworzeń
    {id = 8084,  chance = 710},                   -- springsprout rod
    {id = 14079, chance = 18430},                 -- crawler head plating
    {id = 14087, chance = 14640},                 -- grasshopper legs
    {id = 14083, chance = 100}                    -- compound eye
}

mType:register(monster)