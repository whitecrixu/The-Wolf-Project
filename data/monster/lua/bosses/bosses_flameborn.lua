-- Flameborn
-- Auto-converted from XML

local monster = Game.createMonsterType("Flameborn")
if not monster then return end

monster:name("Flameborn")
monster:nameDescription("Flameborn")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(2550)
monster:speed(260)
monster:race(RACE_FIRE)
monster:corpseId(9923)
monster:outfit({lookType = 322})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 80},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Your fragile bones are like toothpicks to me.", yell = false},
    {text = "You little weasel will not live to see another day.", yell = false},
    {text = "I'm just a messenger of what's yet to come.", yell = false},
    {text = "HRAAAAAAAAAAAAAAAARRRR", yell = true},
    {text = "I'm taking you down with me!", yell = false},
})

-- Loot
monster:loot({
    {id = 2152, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 13},
    {id = 7591, chance = 75810},
    {id = 11221, chance = 100000},
    {id = 7368, chance = 19350, maxCount = 5},
    {id = 8473, chance = 77420},
    {id = 6500, chance = 35480},
    {id = 2788, chance = 67740, maxCount = 2},
    {id = 9970, chance = 43550, maxCount = 4},
    {id = 2477, chance = 67740},
    {id = 2475, chance = 20970},
    {id = 7452, chance = 6450},
    {id = 7439, chance = 37100},
    {id = 9969, chance = 20970},
    {id = 9948, chance = 1610},
    {id = 7421, chance = 3230},
    {id = 13298, chance = 4840},
    {id = 2519, chance = 29030},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-350
-- name=fireball, interval=2000, chance=20, min=-150, max=-175
-- name=hellspawn soulfire, interval=2000, chance=10, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=120, max=230, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=270, areaEffect=redshimmer
--]]

monster:register()
