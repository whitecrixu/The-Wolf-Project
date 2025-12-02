-- Elf
-- Auto-converted from XML

local monster = Game.createMonsterType("Elf")
if not monster then return end

monster:name("Elf")
monster:nameDescription("a elf")
monster:health(100)
monster:maxHealth(100)
monster:experience(42)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(320)
monster:corpseId(6003)
monster:outfit({lookType = 62})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Ulathil beia Thratha!", yell = false},
    {text = "Bahaha aka!", yell = false},
    {text = "You are not welcome here.", yell = false},
    {text = "Flee as long as you can.", yell = false},
    {text = "Death to the defilers!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 44000, maxCount = 30},
    {id = 2544, chance = 7060, maxCount = 3},
    {id = 8839, chance = 20000, maxCount = 2},
    {id = 2397, chance = 10800},
    {id = 2643, chance = 11410},
    {id = 2510, chance = 9300},
    {id = 2484, chance = 8960},
    {id = 2482, chance = 13500},
    {id = 5921, chance = 940},
    {id = 10552, chance = 2100},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=15
-- name=physical, interval=2000, chance=10, range=7, max=-25, shootEffect=arrow
--]]

monster:register()
