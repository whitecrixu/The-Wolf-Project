-- Inky
-- Converted from XML

local monster = Game.createMonsterType("Inky")
if not monster then return end

monster:name("Inky")
monster:nameDescription("a inky")
monster:health(600)
monster:maxHealth(600)
monster:experience(250)
monster:speed(520)
monster:race(RACE_BLOOD)
monster:manaCost(670)
monster:corpseId(6065)
monster:outfit({lookType = 46})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Tssss!", yell = false},
    {text = "Gaaahhh!", yell = false},
    {text = "Gluh! Gluh!", yell = false},
    {text = "Boohaa!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -241},
    {name = "lifedrain", interval = 2000, chance = 15, maxDamage = -87, radius = 3},
    {name = "poisonfield", interval = 2000, chance = 19, range = 7, radius = 3},
    {name = "physical", interval = 2000, chance = 7, minDamage = -56, maxDamage = -87, range = 7},
    {name = "energycondition", interval = 2000, chance = 10, minDamage = -75, maxDamage = -75}
})

monster:register()
