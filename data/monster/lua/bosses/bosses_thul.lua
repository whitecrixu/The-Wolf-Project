-- Thul
-- Converted from XML

local monster = Game.createMonsterType("Thul")
if not monster then return end

monster:name("Thul")
monster:nameDescription("a thul")
monster:health(2950)
monster:maxHealth(2950)
monster:experience(2700)
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
    {text = "Gaaahhh!", yell = false}
})

-- Loot
monster:loot({
    {id = 5895, chance = 100000},
    {id = 2148, chance = 50000, maxCount = 77},
    {id = 7383, chance = 50000},
    {id = 2670, chance = 25000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -370},
    {name = "physical", interval = 2000, chance = 25, maxDamage = -170, radius = 3},
    {name = "poisonfield", interval = 2000, chance = 19, range = 7, radius = 3},
    {name = "speed", interval = 2000, chance = 18, range = 7},
    {name = "ice", interval = 2000, chance = 20, minDamage = -108, maxDamage = -137, range = 7}
})

monster:register()
