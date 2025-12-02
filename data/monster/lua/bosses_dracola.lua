-- Dracola
-- Auto-converted from XML

local monster = Game.createMonsterType("Dracola")
if not monster then return end

monster:name("Dracola")
monster:nameDescription("a dracola")
monster:health(15850)
monster:maxHealth(15850)
monster:experience(7750)
monster:speed(410)
monster:race(RACE_UNDEAD)
monster:corpseId(6307)
monster:outfit({lookType = 231})
monster:defense(39)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "DEATH CAN'T STOP MY HUNGER!", yell = true},
})

-- Loot
monster:loot({
    {id = 2152, chance = 20000, maxCount = 8},
    {id = 6500, chance = 1000, maxCount = 4},
    {id = 6546, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=85, attack=85
-- name=melee, interval=2000, chance=20, range=7, min=-300, max=-395, radius=4, target=1, shootEffect=fire, areaEffect=redspark
-- name=physical, interval=3000, chance=10, range=7, max=-800, shootEffect=suddendeath, areaEffect=mortarea
-- name=poison, interval=2000, chance=20, range=7, min=-120, max=-390, radius=4, target=1, shootEffect=poison, areaEffect=poison
-- name=poison, interval=1000, chance=23, range=7, min=-50, max=-180, shootEffect=poison, areaEffect=poison
-- name=fire, interval=4000, chance=20, min=-500, max=-600, length=8, spread=3, areaEffect=firearea
-- name=poison, interval=2000, chance=20, min=-200, max=-685, length=8, spread=3, areaEffect=poison
-- name=lifedrain, interval=3000, chance=20, min=-300, max=-600, length=8, spread=3, areaEffect=greenshimmer
-- name=drowncondition, interval=1000, chance=20, length=8, spread=3, areaEffect=poff
--]]

monster:register()
