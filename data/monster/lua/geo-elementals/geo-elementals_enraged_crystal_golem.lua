-- Enraged Crystal Golem
-- Converted from XML

local monster = Game.createMonsterType("Enraged Crystal Golem")
if not monster then return end

monster:name("Enraged Crystal Golem")
monster:nameDescription("enraged crystal golem")
monster:health(700)
monster:maxHealth(700)
monster:experience(550)
monster:speed(200)
monster:race(RACE_ENERGY)
monster:corpseId(18466)
monster:outfit({lookType = 508})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Crrrrk! Chhhhr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 18451, chance = 5008, maxCount = 5},
    {id = 18432, chance = 7980},
    {id = 7588, chance = 7140},
    {id = 7589, chance = 8270},
    {id = 18418, chance = 4120},
    {id = 7449, chance = 4710},
    {id = 18419, chance = 1050},
    {id = 7454, chance = 360}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100}
})

monster:register()
