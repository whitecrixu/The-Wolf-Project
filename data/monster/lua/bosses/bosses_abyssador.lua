-- Abyssador
-- Converted from XML

local monster = Game.createMonsterType("Abyssador")
if not monster then return end

monster:name("Abyssador")
monster:nameDescription("Abyssador")
monster:health(300000)
monster:maxHealth(300000)
monster:experience(50000)
monster:speed(470)
monster:race(RACE_BLOOD)
monster:corpseId(17413)
monster:outfit({lookType = 495})
monster:defense(20)
monster:armor(15)
monster:runHealth(30000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true}
})

-- Voices
monster:voices({
    {text = "*** BRAINS *** SMALL ***", yell = false},
    {text = "*** LIVE *** DRY ***", yell = false},
    {text = "*** IMPORTANT ***", yell = false},
    {text = "*** FIRE *** HOME *** VICTORY ***", yell = false},
    {text = "*** EXISTENCE *** FUTILE ***", yell = false},
    {text = "*** TIME ***", yell = false},
    {text = "*** STEALTH ***", yell = false},
    {text = "*** DEATH ***", yell = false}
})

-- Loot
monster:loot({
    {id = 18496, chance = 100000},
    {id = 18454, chance = 10000},
    {id = 18465, chance = 8000},
    {id = 18449, chance = 10000},
    {id = 18453, chance = 4500},
    {id = 18451, chance = 5500},
    {id = 18450, chance = 5500},
    {id = 18452, chance = 4500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2500, chance = 100, minDamage = 0, maxDamage = -270},
    {name = "speed", interval = 2000, chance = 20, range = 7},
    {name = "fire", interval = 800, chance = 10, minDamage = -820, maxDamage = -1250, range = 7, radius = 10},
    {name = "energy", interval = 750, chance = 10, minDamage = -650, maxDamage = -1300, range = 3, radius = 12},
    {name = "lifedrain", interval = 700, chance = 10, minDamage = -600, maxDamage = -1230, range = 3, radius = 4},
    {name = "poison", interval = 700, chance = 12, minDamage = -40, maxDamage = -130, radius = 3}
})

monster:register()
