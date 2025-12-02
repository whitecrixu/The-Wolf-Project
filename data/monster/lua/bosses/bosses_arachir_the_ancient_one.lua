-- Arachir the ancient one
-- Converted from XML

local monster = Game.createMonsterType("Arachir the ancient one")
if not monster then return end

monster:name("Arachir the ancient one")
monster:nameDescription("a vampire lord")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(300)
monster:race(RACE_UNDEAD)
monster:corpseId(8937)
monster:outfit({lookType = 287})
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
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I was the shadow that haunted the cradle of humanity!", yell = false},
    {text = "I exist since eons and you want to defy me?", yell = false},
    {text = "Can you feel the passage of time, mortal?", yell = false}
})

-- Loot
monster:loot({
    {id = 7416, chance = 1200},
    {id = 7588, chance = 10000},
    {id = 2229, chance = 10000},
    {id = 2148, chance = 10000, maxCount = 98},
    {id = 9020, chance = 10000},
    {id = 2152, chance = 10000, maxCount = 5},
    {id = 2216, chance = 11111},
    {id = 2534, chance = 6300},
    {id = 2144, chance = 10000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -165},
    {name = "death", interval = 9000, chance = 100, minDamage = -120, maxDamage = -300, radius = 3},
    {name = "death", interval = 1000, chance = 12, maxDamage = -120}
})

monster:register()
