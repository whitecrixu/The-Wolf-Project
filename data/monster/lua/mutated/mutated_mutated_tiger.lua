-- Mutated Tiger
-- Converted from XML

local monster = Game.createMonsterType("Mutated Tiger")
if not monster then return end

monster:name("Mutated Tiger")
monster:nameDescription("a mutated tiger")
monster:health(1100)
monster:maxHealth(1100)
monster:experience(750)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(9913)
monster:outfit({lookType = 318})
monster:defense(25)
monster:armor(25)
monster:runHealth(110)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = 80}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "GRAAARRRRRR", yell = false},
    {text = "CHHHHHHHHHHH", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 5},
    {id = 11210, chance = 20130},
    {id = 2666, chance = 29500, maxCount = 2},
    {id = 11228, chance = 10600},
    {id = 2168, chance = 5580},
    {id = 7588, chance = 6000},
    {id = 2515, chance = 380},
    {id = 7454, chance = 870},
    {id = 7436, chance = 440},
    {id = 9959, chance = 730}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -200, length = 5, spread = 3}
})

monster:register()
