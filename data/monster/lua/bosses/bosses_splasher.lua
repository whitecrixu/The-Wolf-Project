-- Splasher
-- Auto-converted from XML

local monster = Game.createMonsterType("Splasher")
if not monster then return end

monster:name("Splasher")
monster:nameDescription("a splasher")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(500)
monster:speed(520)
monster:race(RACE_BLOOD)
monster:manaCost(480)
monster:corpseId(6064)
monster:outfit({lookType = 72})
monster:defense(15)
monster:armor(15)
monster:runHealth(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -25},
    {type = COMBAT_EARTHDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Qua hah tsh!", yell = false},
    {text = "Teech tsha tshul!", yell = false},
    {text = "Quara tsha Fach!", yell = false},
    {text = "Tssssha Quara!", yell = false},
    {text = "Blubber.", yell = false},
    {text = "Blup.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1000, chance=100, skill=60, attack=109
-- name=lifedrain, interval=2000, chance=8, range=7, min=-162, max=-228, target=1, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=7, min=-106, max=-169, length=8, spread=3, areaEffect=greenspark
-- name=ice, interval=2000, chance=9, min=-134, max=-148, length=8, areaEffect=bubbles
-- name=ice, interval=2000, chance=12, min=-101, max=-149, radius=3, areaEffect=bubbles
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=100, max=120, areaEffect=blueshimmer
--]]

monster:register()
