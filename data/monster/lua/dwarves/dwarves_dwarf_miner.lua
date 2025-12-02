-- Dwarf Miner
-- Auto-converted from XML

local monster = Game.createMonsterType("Dwarf Miner")
if not monster then return end

monster:name("Dwarf Miner")
monster:nameDescription("a dwarf miner")
monster:health(120)
monster:maxHealth(120)
monster:experience(60)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(420)
monster:corpseId(6007)
monster:outfit({lookType = 160, lookHead = 77, lookBody = 101, lookLegs = 97, lookFeet = 115})
monster:defense(10)
monster:armor(7)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(80)

-- Voices
monster:voices({
    {text = "Work, work!", yell = false},
    {text = "Intruders in the mines!", yell = false},
    {text = "Mine, all mine!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 33333, maxCount = 10},
    {id = 2386, chance = 14285},
    {id = 2553, chance = 11111},
    {id = 2649, chance = 9090},
    {id = 2484, chance = 6666},
    {id = 2666, chance = 3846},
    {id = 2213, chance = 793},
    {id = 5880, chance = 793},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=24, attack=15
--]]

monster:register()
