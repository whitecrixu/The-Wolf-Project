-- Draken Warmaster
-- Converted from XML

local monster = Game.createMonsterType("Draken Warmaster")
if not monster then return end

monster:name("Draken Warmaster")
monster:nameDescription("a draken warmaster")
monster:health(4150)
monster:maxHealth(4150)
monster:experience(2400)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(11107)
monster:outfit({lookType = 334})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Attack aggrezzively! Dezztroy zze intruderzz!", yell = false},
    {text = "Hizzzzz!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 47000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2152, chance = 50625, maxCount = 5},
    {id = 7591, chance = 4850, maxCount = 3},
    {id = 2528, chance = 2035},
    {id = 11323, chance = 7925},
    {id = 8473, chance = 4020},
    {id = 2666, chance = 30300},
    {id = 11303, chance = 1900},
    {id = 2123, chance = 180},
    {id = 2147, chance = 1525, maxCount = 5},
    {id = 11305, chance = 860},
    {id = 11304, chance = 960},
    {id = 11301, chance = 790},
    {id = 11321, chance = 12010},
    {id = 11322, chance = 7000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "fire", interval = 2000, chance = 10, minDamage = -240, maxDamage = -520, length = 4, spread = 3}
})

monster:register()
