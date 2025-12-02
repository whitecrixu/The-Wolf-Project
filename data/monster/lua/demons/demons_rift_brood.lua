-- Rift Brood
-- Converted from XML

local monster = Game.createMonsterType("Rift Brood")
if not monster then return end

monster:name("Rift Brood")
monster:nameDescription("a rift brood")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(1600)
monster:speed(300)
monster:race(RACE_ENERGY)
monster:corpseId(1495)
monster:outfit({lookType = 290})
monster:defense(30)
monster:armor(30)
monster:runHealth(300)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 15},
    {type = COMBAT_DEATHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -135},
    {name = "energy", interval = 1000, chance = 90, minDamage = -200, maxDamage = -400, range = 3, radius = 2}
})

monster:register()
