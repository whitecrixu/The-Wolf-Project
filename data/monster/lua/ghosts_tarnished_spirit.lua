-- Tarnished Spirit
-- Auto-converted from XML

local monster = Game.createMonsterType("Tarnished Spirit")
if not monster then return end

monster:name("Tarnished Spirit")
monster:nameDescription("a tarnished spirit")
monster:health(150)
monster:maxHealth(150)
monster:experience(120)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(21366)
monster:outfit({lookType = 566})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Huh!", yell = false},
})

-- Loot
monster:loot({
    {id = 2394, chance = 10610},
    {id = 2404, chance = 7002},
    {id = 2804, chance = 14400},
    {id = 2654, chance = 8800},
    {id = 1962, chance = 1310},
    {id = 5909, chance = 1940},
    {id = 2532, chance = 860},
    {id = 2165, chance = 180},
    {id = 10607, chance = 1870},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
-- name=lifedrain, interval=2000, chance=15, range=1, min=-20, max=-45, areaEffect=redshimmer
--]]

monster:register()
