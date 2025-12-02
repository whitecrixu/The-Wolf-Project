-- Bad Dream
-- Converted from XML

local monster = Game.createMonsterType("Bad Dream")
if not monster then return end

monster:name("Bad Dream")
monster:nameDescription("bad dream")
monster:health(7200)
monster:maxHealth(7200)
monster:experience(0)
monster:speed(0)
monster:race(RACE_BLOOD)
monster:corpseId(22497)
monster:outfit({lookTypeEx = 22444})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(false)
monster:hostile(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Ruu... mosha tak..", yell = false},
    {text = "Kororr roshakk!", yell = false},
    {text = "Grrrr!...", yell = false},
    {text = "Brrzfchh", yell = false}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1440}
})

monster:register()
