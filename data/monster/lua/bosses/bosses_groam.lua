-- Groam
-- Converted from XML

local monster = Game.createMonsterType("Groam")
if not monster then return end

monster:name("Groam")
monster:nameDescription("a groam")
monster:health(400)
monster:maxHealth(400)
monster:experience(180)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(13839)
monster:outfit({lookType = 413})
monster:defense(20)
monster:armor(12)
monster:runHealth(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Njaaarh!!", yell = false},
    {text = "Begjone, intrjuder!!", yell = false},
    {text = "Djon't djare stjare injo the eyes of the djeep!", yell = false},
    {text = "Ljeave this sjacred pljace while you cjan", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 50},
    {id = 2168, chance = 50000},
    {id = 3965, chance = 25000, maxCount = 4},
    {id = 9808, chance = 14285}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -79},
    {name = "drown", interval = 1000, chance = 11, minDamage = -15, maxDamage = -100, range = 5}
})

monster:register()
