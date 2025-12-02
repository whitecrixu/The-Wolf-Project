-- Furious Troll
-- Auto-converted from XML

local monster = Game.createMonsterType("Furious Troll")
if not monster then return end

monster:name("Furious Troll")
monster:nameDescription("a furious troll")
monster:health(245)
monster:maxHealth(245)
monster:experience(185)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(5960)
monster:outfit({lookType = 15})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Slice! Slice!", yell = false},
    {text = "DIE!!!", yell = false},
})

-- Summons
monster:summons({
    {name = "Mechanical Fighter", chance = 90, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 93000, maxCount = 146},
    {id = 2152, chance = 6000},
    {id = 10606, chance = 4400},
    {id = 2391, chance = 750},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-100
--]]

monster:register()
