-- Terrified Elephant
-- Auto-converted from XML

local monster = Game.createMonsterType("Terrified Elephant")
if not monster then return end

monster:name("Terrified Elephant")
monster:nameDescription("a terrified elephant")
monster:health(320)
monster:maxHealth(320)
monster:experience(160)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:manaCost(500)
monster:corpseId(6052)
monster:outfit({lookType = 211})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Hooooot-Toooooot!", yell = false},
    {text = "Tooooot!", yell = false},
    {text = "Trooooot!", yell = false},
})

-- Loot
monster:loot({
    {id = 2666, chance = 40000, maxCount = 4},
    {id = 2671, chance = 27000, maxCount = 9},
    {id = 3956, chance = 8510, maxCount = 2},
    {id = 3973, chance = 80},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-100
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=800
--]]

monster:register()
