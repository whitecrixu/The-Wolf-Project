-- White Shade
-- Auto-converted from XML

local monster = Game.createMonsterType("White Shade")
if not monster then return end

monster:name("White Shade")
monster:nameDescription("a white shade")
monster:health(260)
monster:maxHealth(260)
monster:experience(120)
monster:speed(190)
monster:race(RACE_UNDEAD)
monster:corpseId(21376)
monster:outfit({lookType = 560})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)
monster:runHealth(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 90},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Leave this place... save yourself...", yell = false},
    {text = "The dark ones.. must be stopped... unholy, twisted, EVIL!", yell = false},
    {text = "No... don't go further stranger... danger lies in every step...", yell = false},
})

-- Loot
monster:loot({
    {id = 5909, chance = 3370},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=5
-- name=lifedrain, interval=2000, chance=20, range=7, min=-4, max=-6, shootEffect=suddendeath, areaEffect=yalaharighost
-- name=speed, interval=2000, chance=5, radius=4, duration=3000, speedchange=-400, areaEffect=blackspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=5, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
