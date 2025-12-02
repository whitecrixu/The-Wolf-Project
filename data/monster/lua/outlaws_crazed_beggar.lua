-- Crazed Beggar
-- Auto-converted from XML

local monster = Game.createMonsterType("Crazed Beggar")
if not monster then return end

monster:name("Crazed Beggar")
monster:nameDescription("a crazed beggar")
monster:health(100)
monster:maxHealth(100)
monster:experience(35)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(300)
monster:corpseId(20351)
monster:outfit({lookType = 153, lookHead = 59, lookBody = 38, lookLegs = 38, lookFeet = 97, lookAddons = 3})
monster:defense(15)
monster:armor(15)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Hehehe!", yell = false},
    {text = "Raahhh!", yell = false},
    {text = "You are one of THEM! Die!", yell = false},
    {text = "Wanna buy roses??", yell = false},
    {text = "They're coming!", yell = false},
    {text = "Make it stop!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 99000, maxCount = 9},
    {id = 2237, chance = 55000},
    {id = 2690, chance = 22500},
    {id = 2666, chance = 9500},
    {id = 2567, chance = 9750},
    {id = 2556, chance = 6500},
    {id = 2570, chance = 5650},
    {id = 2744, chance = 4700},
    {id = 1681, chance = 420},
    {id = 5553, chance = 420},
    {id = 2802, chance = 420},
    {id = 9808, chance = 80},
    {id = 2213, chance = 120},
    {id = 2072, chance = 360},
    {id = 6092, chance = 300},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=15, attack=20
--]]

monster:register()
