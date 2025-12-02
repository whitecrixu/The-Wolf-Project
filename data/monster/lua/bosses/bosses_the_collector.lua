-- The Collector
-- Auto-converted from XML

local monster = Game.createMonsterType("The Collector")
if not monster then return end

monster:name("The Collector")
monster:nameDescription("the Collector")
monster:health(340)
monster:maxHealth(340)
monster:experience(100)
monster:speed(195)
monster:race(RACE_UNDEAD)
monster:corpseId(10612)
monster:outfit({lookType = 261})
monster:defense(26)
monster:armor(25)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(50)

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Leave as long as you can.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=100, attack=40
-- name=speed, interval=1000, chance=13, length=8, duration=20000, speedchange=-800, areaEffect=energy
-- name=physical, interval=1000, chance=15, range=7, max=-85, shootEffect=largerock
-- name=melee, interval=2000, chance=15, range=7, min=-10, max=-80, radius=3, areaEffect=blackspark
--]]

monster:register()
