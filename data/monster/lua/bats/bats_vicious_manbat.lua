-- Vicious Manbat
-- Converted from XML

local monster = Game.createMonsterType("Vicious Manbat")
if not monster then return end

monster:name("Vicious Manbat")
monster:nameDescription("a vicious manbat")
monster:health(1700)
monster:maxHealth(1700)
monster:experience(1200)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(21266)
monster:outfit({lookType = 554})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -215},
    {name = "physical", interval = 2000, chance = 15, minDamage = -100, maxDamage = -250, radius = 3},
    {name = "speed", interval = 2000, chance = 15, radius = 1},
    {name = "bleedcondition", interval = 2000, chance = 20, minDamage = -400, maxDamage = -600, radius = 2}
})

monster:register()
