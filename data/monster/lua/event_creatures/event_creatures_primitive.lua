-- Primitive
-- Converted from XML

local monster = Game.createMonsterType("Primitive")
if not monster then return end

monster:name("Primitive")
monster:nameDescription("a primitive")
monster:health(200)
monster:maxHealth(200)
monster:experience(45)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(6080)
monster:outfit({lookType = 143, lookHead = 1, lookBody = 1, lookLegs = 1, lookFeet = 1})
monster:defense(25)
monster:armor(20)
monster:runHealth(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "We don't need a future!", yell = false},
    {text = "I'll rook you all!", yell = false},
    {text = "They thought they'd beaten us!", yell = false},
    {text = "You are history!", yell = false},
    {text = "There can only be one world!", yell = false},
    {text = "Valor who?", yell = false},
    {text = "Die noob!", yell = false},
    {text = "There are no dragons!", yell = false},
    {text = "I'll quit forever! Again ...", yell = false},
    {text = "You all are noobs!", yell = false},
    {text = "Beware of the cyclops!", yell = false},
    {text = "Just had a disconnect.", yell = false},
    {text = "Magic is only good for girls!", yell = false},
    {text = "We'll be back!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 12500, maxCount = 10},
    {id = 2526, chance = 1200},
    {id = 2482, chance = 9500},
    {id = 2484, chance = 7000},
    {id = 2386, chance = 12250},
    {id = 2385, chance = 10250},
    {id = 6570, chance = 500},
    {id = 6571, chance = 500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -46},
    {name = "drunk", interval = 1000, chance = 20, range = 7},
    {name = "fire", interval = 1000, chance = 34, minDamage = -20, maxDamage = -20, range = 7, radius = 3},
    {name = "outfit", interval = 1000, chance = 2, radius = 4}
})

monster:register()
