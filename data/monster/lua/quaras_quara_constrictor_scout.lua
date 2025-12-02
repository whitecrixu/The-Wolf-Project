-- Quara Constrictor Scout
-- Auto-converted from XML

local monster = Game.createMonsterType("Quara Constrictor Scout")
if not monster then return end

monster:name("Quara Constrictor Scout")
monster:nameDescription("a quara constrictor scout")
monster:health(450)
monster:maxHealth(450)
monster:experience(200)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(670)
monster:corpseId(6065)
monster:outfit({lookType = 46})
monster:defense(15)
monster:armor(15)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Gaaahhh!", yell = false},
    {text = "Gluh! Gluh!", yell = false},
    {text = "Tssss!", yell = false},
    {text = "Boohaa!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 98800, maxCount = 49},
    {id = 12443, chance = 15600},
    {id = 2397, chance = 8310},
    {id = 2465, chance = 4660},
    {id = 2150, chance = 4350},
    {id = 5895, chance = 290},
    {id = 2670, chance = 9680, maxCount = 3},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=45
-- name=lifedrain, interval=2000, chance=15, max=-80, radius=3, areaEffect=blackspark
--]]

monster:register()
