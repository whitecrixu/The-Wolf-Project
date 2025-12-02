-- Dwarf Dispenser
-- Auto-converted from XML

local monster = Game.createMonsterType("Dwarf Dispenser")
if not monster then return end

monster:name("Dwarf Dispenser")
monster:nameDescription("a dwarf dispenser")
monster:health(100)
monster:maxHealth(100)
monster:experience(0)
monster:speed(0)
monster:race(RACE_ENERGY)
monster:outfit({lookTypeEx = 6116})
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
    {name = "Dwarf Henchmen", chance = 55, interval = 1000, max = 1},
})

monster:register()
