-- Minion Of Versperoth
-- Converted from XML

local monster = Game.createMonsterType("Minion Of Versperoth")
if not monster then return end

monster:name("Minion Of Versperoth")
monster:nameDescription("a minion of Versperoth")
monster:health(3800)
monster:maxHealth(3800)
monster:experience(2900)
monster:speed(290)
monster:race(RACE_FIRE)
monster:outfit({lookType = 491})
monster:defense(60)
monster:armor(60)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = 1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Grrrrunt", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -390},
    {name = "fire", interval = 2000, chance = 15, minDamage = -350, maxDamage = -700, length = 8},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -600, maxDamage = -1300, length = 8},
    {name = "lava golem soulfire", interval = 2000, chance = 15},
    {name = "fire", interval = 2000, chance = 15, minDamage = -220, maxDamage = -350, radius = 4},
    {name = "speed", interval = 2000, chance = 10, length = 5, spread = 3},
    {name = "fire", interval = 2000, chance = 30, minDamage = -280, maxDamage = -350, radius = 3}
})

monster:register()
