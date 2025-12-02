-- Shock Head
-- Converted from XML

local monster = Game.createMonsterType("Shock Head")
if not monster then return end

monster:name("Shock Head")
monster:nameDescription("Shock Head")
monster:health(5800)
monster:maxHealth(5800)
monster:experience(4700)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(22392)
monster:outfit({lookType = 579})
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
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "<brrzz>", yell = false},
    {text = "Thun... Thun... THUNDER!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 43000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 87},
    {id = 2146, chance = 5000},
    {id = 2498, chance = 270},
    {id = 22539, chance = 10000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -245},
    {name = "death", interval = 2000, chance = 15, minDamage = -200, maxDamage = -300, length = 5, spread = 2},
    {name = "speed", interval = 2000, chance = 15, length = 8, spread = 3},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -350, radius = 4},
    {name = "shock head skill reducer 1", interval = 2000, chance = 5, range = 5},
    {name = "shock head skill reducer 2", interval = 2000, chance = 5}
})

monster:register()
