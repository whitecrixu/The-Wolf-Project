-- Doomhowl
-- Converted from XML

local monster = Game.createMonsterType("Doomhowl")
if not monster then return end

monster:name("Doomhowl")
monster:nameDescription("Doomhowl")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(3750)
monster:speed(320)
monster:race(RACE_BLOOD)
monster:corpseId(6080)
monster:outfit({lookType = 308})
monster:defense(55)
monster:armor(50)
monster:runHealth(850)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "physical", interval = 2000, chance = 50, maxDamage = -645, radius = 3},
    {name = "physical", interval = 4000, chance = 20}
})

monster:register()
