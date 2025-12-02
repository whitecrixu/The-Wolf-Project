-- Lancer Beetle
-- Converted from XML

local monster = Game.createMonsterType("Lancer Beetle")
if not monster then return end

monster:name("Lancer Beetle")
monster:nameDescription("a lancer beetle")
monster:health(400)
monster:maxHealth(400)
monster:experience(275)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(11375)
monster:outfit({lookType = 348})
monster:defense(20)
monster:armor(20)
monster:runHealth(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Crump!", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 61},
    {id = 2148, chance = 60000, maxCount = 79},
    {id = 11372, chance = 16666},
    {id = 10557, chance = 8333},
    {id = 10609, chance = 4166},
    {id = 11374, chance = 1123},
    {id = 2150, chance = 247}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -86},
    {name = "poisonfield", interval = 2000, chance = 10, radius = 4},
    {name = "lifedrain", interval = 2000, chance = 15, maxDamage = -90, length = 7},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -40, maxDamage = -80, range = 7},
    {name = "lancer beetle curse", interval = 2000, chance = 5, range = 5}
})

monster:register()
