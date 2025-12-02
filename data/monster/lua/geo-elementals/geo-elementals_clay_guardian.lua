-- Clay Guardian
-- Converted from XML

local monster = Game.createMonsterType("Clay Guardian")
if not monster then return end

monster:name("Clay Guardian")
monster:nameDescription("a clay guardian")
monster:health(625)
monster:maxHealth(625)
monster:experience(400)
monster:speed(210)
monster:race(RACE_UNDEAD)
monster:corpseId(13972)
monster:outfit({lookType = 333})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 63},
    {id = 11222, chance = 25000},
    {id = 2260, chance = 25000},
    {id = 1294, chance = 10000, maxCount = 10},
    {id = 7850, chance = 5555, maxCount = 8},
    {id = 11339, chance = 1100},
    {id = 9970, chance = 320}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "earth", interval = 2000, chance = 20, minDamage = -30, maxDamage = -150, range = 7},
    {name = "earth", interval = 2000, chance = 50, minDamage = -20, maxDamage = -30, radius = 3}
})

monster:register()
