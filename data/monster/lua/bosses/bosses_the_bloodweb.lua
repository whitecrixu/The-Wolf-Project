-- The Bloodweb
-- Converted from XML

local monster = Game.createMonsterType("The Bloodweb")
if not monster then return end

monster:name("The Bloodweb")
monster:nameDescription("the bloodweb")
monster:health(1250)
monster:maxHealth(1250)
monster:experience(900)
monster:speed(340)
monster:race(RACE_UNDEAD)
monster:corpseId(7344)
monster:outfit({lookType = 263})
monster:defense(20)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Screeech!", yell = false}
})

-- Loot
monster:loot({
    {id = 2463, chance = 100000},
    {id = 7364, chance = 100000, maxCount = 9},
    {id = 7589, chance = 100000},
    {id = 5879, chance = 50000},
    {id = 7902, chance = 33333},
    {id = 7896, chance = 33333},
    {id = 11306, chance = 20000},
    {id = 7437, chance = 20000},
    {id = 5801, chance = 7692},
    {id = 2476, chance = 7692},
    {id = 2477, chance = 5555},
    {id = 7290, chance = 3703},
    {id = 2169, chance = 3703},
    {id = 6578, chance = 1886}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    {name = "speed", interval = 2000, chance = 20, range = 7, radius = 7},
    {name = "energy", interval = 1000, chance = 25, minDamage = -60, maxDamage = -150, range = 7}
})

monster:register()
