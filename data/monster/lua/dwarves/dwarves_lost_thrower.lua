-- Lost Thrower
-- Converted from XML

local monster = Game.createMonsterType("Lost Thrower")
if not monster then return end

monster:name("Lost Thrower")
monster:nameDescription("a lost thrower")
monster:health(1700)
monster:maxHealth(1700)
monster:experience(1200)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(19998)
monster:outfit({lookType = 539})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 40}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 37},
    {id = 2152, chance = 70000, maxCount = 2},
    {id = 2789, chance = 14500, maxCount = 2},
    {id = 20133, chance = 14860},
    {id = 20132, chance = 13560},
    {id = 20137, chance = 7900},
    {id = 20136, chance = 6150},
    {id = 20131, chance = 1390},
    {id = 20130, chance = 15670},
    {id = 20106, chance = 11410},
    {id = 20134, chance = 11810},
    {id = 5880, chance = 9470},
    {id = 20109, chance = 850},
    {id = 7591, chance = 14730},
    {id = 7590, chance = 13470},
    {id = 13757, chance = 12180}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -146},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -250, range = 7, radius = 1},
    {name = "physical", interval = 2000, chance = 5, range = 7, radius = 2},
    {name = "physical", interval = 2000, chance = 10, minDamage = -150, maxDamage = -300, range = 7, radius = 2},
    {name = "drunk", interval = 2000, chance = 10, radius = 3}
})

monster:register()
