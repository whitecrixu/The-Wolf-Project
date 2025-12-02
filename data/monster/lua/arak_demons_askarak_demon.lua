-- Askarak Demon
-- Auto-converted from XML

local monster = Game.createMonsterType("Askarak Demon")
if not monster then return end

monster:name("Askarak Demon")
monster:nameDescription("an askarak demon")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(900)
monster:speed(220)
monster:race(RACE_VENOM)
monster:corpseId(13815)
monster:outfit({lookType = 420})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -30},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "POWER TO THE ASKARAK!", yell = false},
    {text = "GREEN WILL RULE!", yell = false},
    {text = "GREEN IS MEAN!", yell = false},
    {text = "ONLY WE ARE TRUE DEMONS!", yell = false},
    {text = "RED IS MAD", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 40000, maxCount = 35},
    {id = 2149, chance = 6250, maxCount = 4},
    {id = 7589, chance = 5263},
    {id = 7588, chance = 5263},
    {id = 7368, chance = 4761, maxCount = 5},
    {id = 2789, chance = 3846, maxCount = 5},
    {id = 2114, chance = 1052},
    {id = 2167, chance = 961},
    {id = 8912, chance = 512},
    {id = 7440, chance = 431},
    {id = 7885, chance = 123},
    {id = 5904, chance = 102},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=57
-- name=earth, interval=2000, chance=20, range=7, min=-20, max=-60, radius=6, shootEffect=poison, areaEffect=greenbubble
-- name=earth, interval=2000, chance=15, min=-75, max=-140, length=4, spread=3, areaEffect=greenbubble
-- name=earth, interval=2000, chance=10, min=-130, max=-170, length=4, areaEffect=greenbubble
-- name=speed, interval=2000, chance=10, radius=1, target=1, duration=15000, speedchange=-600, areaEffect=redshimmer
--]]

monster:register()
