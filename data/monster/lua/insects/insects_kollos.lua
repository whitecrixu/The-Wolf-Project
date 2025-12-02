-- Kollos
-- Converted from XML

local monster = Game.createMonsterType("Kollos")
if not monster then return end

monster:name("Kollos")
monster:nameDescription("a kollos")
monster:health(3800)
monster:maxHealth(3800)
monster:experience(2400)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(15354)
monster:outfit({lookType = 458})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Zopp!", yell = false},
    {text = "Flzlzlzlzlzlz!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 49000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 97},
    {id = 2152, chance = 66000, maxCount = 3},
    {id = 15480, chance = 15390},
    {id = 15486, chance = 15720},
    {id = 15648, chance = 10210, maxCount = 5},
    {id = 2147, chance = 8180, maxCount = 2},
    {id = 7590, chance = 8950, maxCount = 4},
    {id = 9971, chance = 5160},
    {id = 8473, chance = 4000, maxCount = 3},
    {id = 2214, chance = 3270},
    {id = 7632, chance = 2600},
    {id = 15646, chance = 460},
    {id = 15489, chance = 360},
    {id = 15492, chance = 700},
    {id = 2645, chance = 130},
    {id = 15491, chance = 310}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -500, range = 7, radius = 3}
})

monster:register()
