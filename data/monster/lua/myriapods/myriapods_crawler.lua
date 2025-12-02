-- Crawler
-- Converted from XML

local monster = Game.createMonsterType("Crawler")
if not monster then return end

monster:name("Crawler")
monster:nameDescription("a crawler")
monster:health(1450)
monster:maxHealth(1450)
monster:experience(1000)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(15292)
monster:outfit({lookType = 456})
monster:defense(30)
monster:armor(30)
monster:runHealth(145)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Sssschrchrsss!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2168, chance = 50000},
    {id = 15482, chance = 18430},
    {id = 15486, chance = 14640},
    {id = 9970, chance = 10040, maxCount = 2},
    {id = 7590, chance = 9300},
    {id = 7591, chance = 6200},
    {id = 2391, chance = 2070},
    {id = 8912, chance = 710},
    {id = 2154, chance = 530},
    {id = 15490, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -125},
    {name = "earth", interval = 2000, chance = 20, minDamage = -100, maxDamage = -180, range = 7}
})

monster:register()
