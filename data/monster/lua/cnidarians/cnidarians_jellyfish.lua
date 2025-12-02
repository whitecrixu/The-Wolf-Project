-- Jellyfish
-- Auto-converted from XML

local monster = Game.createMonsterType("Jellyfish")
if not monster then return end

monster:name("Jellyfish")
monster:nameDescription("a Jellyfish")
monster:health(55)
monster:maxHealth(55)
monster:experience(0)
monster:speed(170)
monster:race(RACE_UNDEAD)
monster:corpseId(15284)
monster:outfit({lookType = 452})
monster:defense(10)
monster:armor(10)
monster:targetDistance(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Luuurrrp", yell = false},
})

-- Loot
monster:loot({
    {id = 2670, chance = 8333},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=10
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=15, duration=3000
--]]

monster:register()
