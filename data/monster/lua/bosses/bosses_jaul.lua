-- Jaul
-- Converted from XML

local monster = Game.createMonsterType("Jaul")
if not monster then return end

monster:name("Jaul")
monster:nameDescription("a jaul")
monster:health(100000)
monster:maxHealth(100000)
monster:experience(30000)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(15220)
monster:outfit({lookType = 444})
monster:defense(40)
monster:armor(40)
monster:runHealth(10000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "QJELL AFAR GOU JEY!!", yell = false},
    {text = "DIE!! KENH!!", yell = false}
})

-- Loot
monster:loot({
    {id = 15413, chance = 50000},
    {id = 15408, chance = 33333},
    {id = 15404, chance = 25000},
    {id = 15406, chance = 25000},
    {id = 15407, chance = 20000},
    {id = 15410, chance = 14285},
    {id = 15414, chance = 14285},
    {id = 15412, chance = 7142}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2000},
    {name = "fire", interval = 2200, chance = 19, maxDamage = -1000, range = 7, radius = 7},
    {name = "manadrain", interval = 3000, chance = 32, minDamage = -200, maxDamage = -800, range = 7, radius = 7},
    {name = "earth", interval = 1300, chance = 27, maxDamage = -600, radius = 3},
    {name = "death", interval = 1200, chance = 6, minDamage = -300, maxDamage = -900, length = 8},
    {name = "fire", interval = 1000, chance = 5, minDamage = -500, maxDamage = -1000, length = 8},
    {name = "ice", interval = 1000, chance = 5, minDamage = -1000, maxDamage = -2000, length = 8},
    {name = "lifedrain", interval = 4000, chance = 10, minDamage = -500, maxDamage = -1000, length = 8, spread = 3},
    {name = "speed", interval = 1900, chance = 14, range = 7, radius = 1}
})

monster:register()
