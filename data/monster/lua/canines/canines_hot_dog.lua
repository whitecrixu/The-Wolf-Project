-- Hot Dog
-- Auto-converted from XML

local monster = Game.createMonsterType("Hot Dog")
if not monster then return end

monster:name("Hot Dog")
monster:nameDescription("a hot dog")
monster:health(505)
monster:maxHealth(505)
monster:experience(190)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(5971)
monster:outfit({lookType = 32})
monster:defense(2)
monster:armor(1)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Wuff Wuff", yell = false},
    {text = "Grrr Wuff", yell = false},
    {text = "Show me how good you are without some rolled newspaper!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 75},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, max=-55
-- name=fire, interval=2000, chance=30, min=-30, max=-60, length=8, spread=3, areaEffect=fire
-- name=fire, interval=1000, chance=30, range=7, min=-50, max=-50, target=1, areaEffect=fireattack
--]]

monster:register()
