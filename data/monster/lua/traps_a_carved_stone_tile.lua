-- a carved stone tile
-- Auto-converted from XML

local monster = Game.createMonsterType("a carved stone tile")
if not monster then return end

monster:name("a carved stone tile")
monster:nameDescription("a carved stone tile")
monster:health(100)
monster:maxHealth(100)
monster:experience(0)
monster:speed(0)
monster:race(RACE_UNDEAD)
monster:outfit({lookTypeEx = 3169})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:pushable(false)
monster:hiddenHealth(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Summons
monster:summons({
    {name = "Dreadbeast", chance = 25, interval = 2000, max = 1},
})

monster:register()
