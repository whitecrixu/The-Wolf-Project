-- Dracola
-- Converted from XML

local monster = Game.createMonsterType("Dracola")
if not monster then return end

monster:name("Dracola")
monster:nameDescription("a dracola")
monster:health(15850)
monster:maxHealth(15850)
monster:experience(7750)
monster:speed(410)
monster:race(RACE_UNDEAD)
monster:corpseId(6307)
monster:outfit({lookType = 231})
monster:defense(39)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "DEATH CAN'T STOP MY HUNGER!", yell = true}
})

-- Loot
monster:loot({
    {id = 2152, chance = 20000, maxCount = 8},
    {id = 6500, chance = 1000, maxCount = 4},
    {id = 6546, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "melee", interval = 2000, chance = 20, minDamage = -300, maxDamage = -395},
    {name = "physical", interval = 3000, chance = 10, maxDamage = -800, range = 7},
    {name = "poison", interval = 2000, chance = 20, minDamage = -120, maxDamage = -390, range = 7, radius = 4},
    {name = "poison", interval = 1000, chance = 23, minDamage = -50, maxDamage = -180, range = 7},
    {name = "fire", interval = 4000, chance = 20, minDamage = -500, maxDamage = -600, length = 8, spread = 3},
    {name = "poison", interval = 2000, chance = 20, minDamage = -200, maxDamage = -685, length = 8, spread = 3},
    {name = "lifedrain", interval = 3000, chance = 20, minDamage = -300, maxDamage = -600, length = 8, spread = 3},
    {name = "drowncondition", interval = 1000, chance = 20, length = 8, spread = 3}
})

monster:register()
