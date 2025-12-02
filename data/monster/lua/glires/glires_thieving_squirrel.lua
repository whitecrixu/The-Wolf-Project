-- Thieving Squirrel
-- Auto-converted from XML

local monster = Game.createMonsterType("Thieving Squirrel")
if not monster then return end

monster:name("Thieving Squirrel")
monster:nameDescription("a thieving squirrel")
monster:health(55)
monster:maxHealth(55)
monster:experience(0)
monster:speed(1000)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(7628)
monster:outfit({lookType = 274})
monster:defense(5)
monster:armor(5)
monster:runHealth(55)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)

-- Voices
monster:voices({
    {text = "Chchch", yell = false},
})

-- Loot
monster:loot({
    {id = 11100, chance = 100000},
    {id = 7910, chance = 980},
})

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=10, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
