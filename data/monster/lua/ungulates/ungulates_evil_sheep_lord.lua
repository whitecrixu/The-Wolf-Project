-- Evil Sheep Lord
-- Auto-converted from XML

local monster = Game.createMonsterType("Evil Sheep Lord")
if not monster then return end

monster:name("Evil Sheep Lord")
monster:nameDescription("an evil sheep lord")
monster:health(400)
monster:maxHealth(400)
monster:experience(340)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(5994)
monster:outfit({lookType = 13})
monster:defense(35)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You can COUNT on us!", yell = false},
    {text = "Maeh!", yell = false},
    {text = "I feel you're getting sleepy! Maeh!", yell = false},
})

-- Summons
monster:summons({
    {name = "Evil Sheep", chance = 30, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 75000, maxCount = 60},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-118
-- name=outfit, interval=3000, chance=20, range=7, target=1, duration=4000, areaEffect=blueshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=50, max=100, areaEffect=blueshimmer
-- name=outfit, interval=1500, chance=50, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
