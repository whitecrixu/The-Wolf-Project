-- Gnorre Chyllson
-- Converted from XML

local monster = Game.createMonsterType("Gnorre Chyllson")
if not monster then return end

monster:name("Gnorre Chyllson")
monster:nameDescription("gnorre chyllson")
monster:health(7100)
monster:maxHealth(7100)
monster:experience(4000)
monster:speed(370)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 251, lookHead = 11, lookBody = 9, lookLegs = 11, lookFeet = 85, lookAddons = 1})
monster:defense(52)
monster:armor(51)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I am like the merciless northwind.", yell = false},
    {text = "Snow will be your death shroud.", yell = false},
    {text = "Feel the wrath of father chyll!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -190},
    {name = "melee", interval = 3000, chance = 50, minDamage = -500, maxDamage = -800},
    {name = "ice", interval = 1000, chance = 15, minDamage = -170, maxDamage = -200, range = 7}
})

monster:register()
