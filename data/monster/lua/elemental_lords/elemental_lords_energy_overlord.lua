-- Energy Overlord
-- Converted from XML

local monster = Game.createMonsterType("Energy Overlord")
if not monster then return end

monster:name("Energy Overlord")
monster:nameDescription("an energy overlord")
monster:health(4000)
monster:maxHealth(4000)
monster:experience(2800)
monster:speed(290)
monster:race(RACE_UNDEAD)
monster:corpseId(8966)
monster:outfit({lookType = 290})
monster:defense(40)
monster:armor(40)
monster:runHealth(400)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 64},
    {id = 8306, chance = 100000},
    {id = 2152, chance = 25000, maxCount = 2}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "energy", interval = 2000, chance = 25, maxDamage = -800, length = 7},
    {name = "energy", interval = 1000, chance = 11, maxDamage = -200, range = 3},
    {name = "earth", interval = 1000, chance = 9, minDamage = -50, maxDamage = -200, radius = 5}
})

monster:register()
