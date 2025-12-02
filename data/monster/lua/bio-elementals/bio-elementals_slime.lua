-- Slime
-- Auto-converted from XML

local monster = Game.createMonsterType("Slime")
if not monster then return end

monster:name("Slime")
monster:nameDescription("a slime")
monster:health(150)
monster:maxHealth(150)
monster:experience(160)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(1496)
monster:outfit({lookType = 19})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false},
})

-- Summons
monster:summons({
    {name = "Slime", chance = 10, interval = 2000, max = 1},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=40
--]]

monster:register()
