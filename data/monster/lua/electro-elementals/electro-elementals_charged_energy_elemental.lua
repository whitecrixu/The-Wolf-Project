-- Charged Energy Elemental
-- Converted from XML

local monster = Game.createMonsterType("Charged Energy Elemental")
if not monster then return end

monster:name("Charged Energy Elemental")
monster:nameDescription("a charged energy Elemental")
monster:health(500)
monster:maxHealth(500)
monster:experience(450)
monster:speed(270)
monster:race(RACE_UNDEAD)
monster:corpseId(8966)
monster:outfit({lookType = 293})
monster:defense(25)
monster:armor(25)
monster:runHealth(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 22},
    {id = 7838, chance = 6250, maxCount = 3},
    {id = 8303, chance = 2063}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "energy", interval = 2000, chance = 20, minDamage = -168, maxDamage = -100, range = 6, radius = 4},
    {name = "energycondition", interval = 1000, chance = 15, radius = 3}
})

monster:register()
