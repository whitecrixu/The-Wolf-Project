-- Blood Hand
-- Converted from XML

local monster = Game.createMonsterType("Blood Hand")
if not monster then return end

monster:name("Blood Hand")
monster:nameDescription("a blood hand")
monster:health(700)
monster:maxHealth(700)
monster:experience(750)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(21257)
monster:outfit({lookType = 552})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blood for the dark god!", yell = false},
    {text = "Die, filth!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 130},
    {id = 21245, chance = 15460},
    {id = 21242, chance = 10680},
    {id = 21246, chance = 8820},
    {id = 11237, chance = 9340},
    {id = 21243, chance = 7950},
    {id = 21247, chance = 6120},
    {id = 7589, chance = 5590},
    {id = 2185, chance = 3000},
    {id = 8900, chance = 790},
    {id = 15565, chance = 710},
    {id = 5909, chance = 840},
    {id = 2663, chance = 790},
    {id = 2195, chance = 210},
    {id = 5911, chance = 500},
    {id = 2436, chance = 130},
    {id = 7456, chance = 10}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -105},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -50, maxDamage = -100, radius = 4},
    {name = "speed", interval = 2000, chance = 10, radius = 4},
    {name = "bleedcondition", interval = 2000, chance = 15, minDamage = -120, maxDamage = -160, radius = 6}
})

monster:register()
