-- Slick Water Elemental
-- Converted from XML

local monster = Game.createMonsterType("Slick Water Elemental")
if not monster then return end

monster:name("Slick Water Elemental")
monster:nameDescription("a slick water elemental")
monster:health(550)
monster:maxHealth(550)
monster:experience(450)
monster:speed(280)
monster:race(RACE_UNDEAD)
monster:corpseId(8965)
monster:outfit({lookType = 286})
monster:defense(30)
monster:armor(30)
monster:runHealth(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 40}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false},
    {text = "Splipsh Splash", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 22500, maxCount = 70},
    {id = 2148, chance = 22500, maxCount = 60},
    {id = 7839, chance = 2575, maxCount = 3},
    {id = 8302, chance = 6000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110},
    {name = "earth", interval = 2000, chance = 20, maxDamage = -130, range = 7},
    {name = "ice", interval = 1000, chance = 10, maxDamage = -220, range = 6},
    {name = "ice", interval = 2000, chance = 18, maxDamage = -103, range = 4}
})

monster:register()
