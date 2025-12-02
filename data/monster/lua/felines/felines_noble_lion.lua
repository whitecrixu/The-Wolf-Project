-- Noble Lion
-- Auto-converted from XML

local monster = Game.createMonsterType("Noble Lion")
if not monster then return end

monster:name("Noble Lion")
monster:nameDescription("a noble lion")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(400)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(21420)
monster:outfit({lookType = 570})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 25},
    {type = COMBAT_EARTHDAMAGE, percent = 25},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Groarrrr! Rwarrrr!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 72},
    {id = 2666, chance = 28000, maxCount = 4},
    {id = 2671, chance = 26000, maxCount = 2},
    {id = 10608, chance = 20000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-165
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=230, areaEffect=redshimmer
--]]

monster:register()
