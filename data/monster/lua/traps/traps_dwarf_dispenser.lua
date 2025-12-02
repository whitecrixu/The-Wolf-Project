-- Dwarf Dispenser
-- Converted from XML

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
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20}
})

monster:register()
