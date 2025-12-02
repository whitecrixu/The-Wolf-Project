-- Dirtbeard
-- Auto-converted from XML

local monster = Game.createMonsterType("Dirtbeard")
if not monster then return end

monster:name("Dirtbeard")
monster:nameDescription("a dirtbeard")
monster:health(630)
monster:maxHealth(630)
monster:experience(375)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:manaCost(775)
monster:corpseId(10320)
monster:outfit({lookType = 98})
monster:defense(35)
monster:armor(30)
monster:runHealth(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You are no match for the scourge of the seas!", yell = false},
    {text = "You move like a seasick whale!", yell = false},
    {text = "Yarr, death to all landlubbers!", yell = false},
})

-- Summons
monster:summons({
    {name = "pirate marauder", chance = 30, interval = 4000, max = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, max=-125
-- name=physical, interval=2000, chance=30, range=7, max=-100, shootEffect=throwingstar
-- name=melee, interval=1200, chance=30, range=7, radius=3, areaEffect=rednote
--]]

monster:register()
