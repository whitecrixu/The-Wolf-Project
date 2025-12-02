-- Snake God Essence
-- Auto-converted from XML

local monster = Game.createMonsterType("Snake God Essence")
if not monster then return end

monster:name("Snake God Essence")
monster:nameDescription("snake god essence")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(1350)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(12385)
monster:outfit({lookType = 356})
monster:defense(65)
monster:armor(70)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "AHHH ZHE POWER...", yell = true},
    {text = "ZHE TIME OF ZHE SNAKE HAZ COME!", yell = true},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=160
-- name=lifedrain, interval=2000, chance=40, max=-300, length=8, areaEffect=redshimmer
-- name=earth, interval=2000, chance=50, min=-150, max=-270, radius=6, areaEffect=greenshimmer
--]]

monster:register()
