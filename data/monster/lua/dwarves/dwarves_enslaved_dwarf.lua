-- Enslaved Dwarf
-- Converted from XML

local monster = Game.createMonsterType("Enslaved Dwarf")
if not monster then return end

monster:name("Enslaved Dwarf")
monster:nameDescription("enslaved dwarf")
monster:health(4200)
monster:maxHealth(4200)
monster:experience(2900)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:corpseId(17408)
monster:outfit({lookType = 494})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_EARTHDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Bark!", yell = false},
    {text = "Blood!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 99},
    {id = 2148, chance = 50000, maxCount = 50},
    {id = 2152, chance = 100000, maxCount = 6},
    {id = 7590, chance = 6660, maxCount = 2},
    {id = 2789, chance = 15150, maxCount = 2},
    {id = 7591, chance = 7960},
    {id = 7454, chance = 1940},
    {id = 18416, chance = 3110},
    {id = 2532, chance = 3690},
    {id = 7452, chance = 80},
    {id = 7437, chance = 80},
    {id = 5880, chance = 11070},
    {id = 18417, chance = 5630, maxCount = 2},
    {id = 18436, chance = 3690, maxCount = 5},
    {id = 2515, chance = 2300},
    {id = 2528, chance = 190},
    {id = 2150, chance = 10680, maxCount = 2},
    {id = 2149, chance = 10290, maxCount = 2},
    {id = 2208, chance = 1550},
    {id = 18420, chance = 3690},
    {id = 18415, chance = 1750},
    {id = 2391, chance = 5050},
    {id = 7413, chance = 1170},
    {id = 2475, chance = 580},
    {id = 11227, chance = 4660},
    {id = 13757, chance = 780}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -191},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -340, range = 7},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -250, range = 7, radius = 3},
    {name = "drunk", interval = 2000, chance = 20, radius = 5},
    {name = "enslaved dwarf skill reducer 1", interval = 2000, chance = 5},
    {name = "enslaved dwarf skill reducer 2", interval = 2000, chance = 5}
})

monster:register()
