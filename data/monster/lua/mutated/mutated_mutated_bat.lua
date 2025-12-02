-- Mutated Bat
-- Converted from XML

local monster = Game.createMonsterType("Mutated Bat")
if not monster then return end

monster:name("Mutated Bat")
monster:nameDescription("a mutated bat")
monster:health(900)
monster:maxHealth(900)
monster:experience(615)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(9829)
monster:outfit({lookType = 307})
monster:defense(20)
monster:armor(20)
monster:runHealth(90)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Shriiiiiek", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 53000, maxCount = 50},
    {id = 2148, chance = 40000, maxCount = 70},
    {id = 5894, chance = 4900, maxCount = 2},
    {id = 2513, chance = 7760},
    {id = 2144, chance = 720, maxCount = 3},
    {id = 2529, chance = 70},
    {id = 2167, chance = 990},
    {id = 2800, chance = 7260},
    {id = 9809, chance = 12530, maxCount = 2},
    {id = 9808, chance = 12530},
    {id = 2150, chance = 500, maxCount = 2},
    {id = 2800, chance = 5060},
    {id = 7386, chance = 110},
    {id = 10016, chance = 80},
    {id = 10579, chance = 4900}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -106},
    {name = "earth", interval = 2000, chance = 15, minDamage = -70, maxDamage = -180, range = 7},
    {name = "drown", interval = 2000, chance = 15, minDamage = -30, maxDamage = -90, radius = 6},
    {name = "mutated bat curse", interval = 2000, chance = 10},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -190, maxDamage = -240, length = 4, spread = 3}
})

monster:register()
