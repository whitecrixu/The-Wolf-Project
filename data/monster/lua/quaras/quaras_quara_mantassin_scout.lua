-- Quara Mantassin Scout
-- Converted from XML

local monster = Game.createMonsterType("Quara Mantassin Scout")
if not monster then return end

monster:name("Quara Mantassin Scout")
monster:nameDescription("a quara mantassin scout")
monster:health(220)
monster:maxHealth(220)
monster:experience(100)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:manaCost(480)
monster:corpseId(6064)
monster:outfit({lookType = 72})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true}
})

-- Voices
monster:voices({
    {text = "Zuerk Pachak!", yell = false},
    {text = "Shrrrr", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 94000, maxCount = 30},
    {id = 2464, chance = 4761},
    {id = 12445, chance = 7780},
    {id = 2229, chance = 920},
    {id = 2377, chance = 580},
    {id = 5895, chance = 520},
    {id = 2165, chance = 520},
    {id = 2146, chance = 920}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85}
})

monster:register()
