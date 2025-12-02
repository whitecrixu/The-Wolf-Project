-- Askarak Lord
-- Auto-converted from XML

local monster = Game.createMonsterType("Askarak Lord")
if not monster then return end

monster:name("Askarak Lord")
monster:nameDescription("an askarak lord")
monster:health(2100)
monster:maxHealth(2100)
monster:experience(1200)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(13956)
monster:outfit({lookType = 410})
monster:defense(20)
monster:armor(20)

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
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "WE RULE!", yell = false},
    {text = "RED IS MAD", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2152, chance = 35333, maxCount = 2},
    {id = 7589, chance = 7692},
    {id = 7588, chance = 6250},
    {id = 2149, chance = 5882, maxCount = 5},
    {id = 2789, chance = 5263, maxCount = 5},
    {id = 8912, chance = 1010},
    {id = 2167, chance = 606},
    {id = 7440, chance = 750},
    {id = 5904, chance = 620},
    {id = 7368, chance = 70, maxCount = 5},
    {id = 7884, chance = 70},
    {id = 7419, chance = 30},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=55, attack=57
-- name=earth, interval=2000, chance=20, range=7, min=-40, max=-80, radius=6, shootEffect=poison, areaEffect=greenbubble
-- name=earth, interval=2000, chance=15, min=-95, max=-180, length=4, spread=3, areaEffect=greenbubble
-- name=earth, interval=2000, chance=10, min=-130, max=-180, length=4, areaEffect=greenbubble
-- name=speed, interval=2000, chance=15, radius=1, target=1, duration=15000, speedchange=-650, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=120, max=160, areaEffect=blueshimmer
--]]

monster:register()
