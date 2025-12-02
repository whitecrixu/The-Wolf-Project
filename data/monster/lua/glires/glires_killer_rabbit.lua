-- Killer Rabbit
-- Auto-converted from XML

local monster = Game.createMonsterType("Killer Rabbit")
if not monster then return end

monster:name("Killer Rabbit")
monster:nameDescription("a killer rabbit")
monster:health(205)
monster:maxHealth(205)
monster:experience(160)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:manaCost(220)
monster:corpseId(6017)
monster:outfit({lookType = 74})
monster:defense(35)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Who is lunch NOW?", yell = false},
})

-- Summons
monster:summons({
    {name = "killer rabbit", chance = 30, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 90},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, max=-100
-- name=Blood Rage, interval=2000, chance=30, target=1
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=1000, chance=40, duration=8000, speedchange=380, areaEffect=energy
-- name=invisible, interval=2000, chance=30, duration=2000, areaEffect=blueshimmer
--]]

monster:register()
