-- Wilting Leaf Golem
-- Converted from XML

local monster = Game.createMonsterType("Wilting Leaf Golem")
if not monster then return end

monster:name("Wilting Leaf Golem")
monster:nameDescription("a wilting leaf golem")
monster:health(380)
monster:maxHealth(380)
monster:experience(145)
monster:speed(145)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(21434)
monster:outfit({lookType = 573})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -1}
})

-- Voices
monster:voices({
    {text = "*crackle*", yell = false},
    {text = "*swwwwishhhh*", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 97230, maxCount = 45},
    {id = 21427, chance = 10690},
    {id = 21428, chance = 15630},
    {id = 2787, chance = 4860, maxCount = 3},
    {id = 20104, chance = 4200},
    {id = 2149, chance = 830}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1500, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -50, range = 7, radius = 1},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -150, maxDamage = -200, radius = 4},
    {name = "speed", interval = 2000, chance = 20, radius = 3}
})

monster:register()
