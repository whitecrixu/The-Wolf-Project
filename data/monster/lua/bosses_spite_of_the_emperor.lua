-- Spite of the Emperor
-- Auto-converted from XML

local monster = Game.createMonsterType("Spite of the Emperor")
if not monster then return end

monster:name("Spite of the Emperor")
monster:nameDescription("a spite of the emperor")
monster:health(8000)
monster:maxHealth(8000)
monster:experience(5600)
monster:speed(410)
monster:race(RACE_UNDEAD)
monster:outfit({lookType = 351})
monster:defense(35)
monster:armor(45)
monster:runHealth(366)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Summons
monster:summons({
    {name = "Draken Warmaster", chance = 10, interval = 2000, max = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=55, attack=115
-- name=physical, interval=3000, chance=17, min=-150, max=-250, length=8, spread=3, areaEffect=bluebubble
-- name=physical, interval=3000, chance=10, range=7, max=-500, shootEffect=suddendeath, areaEffect=mortarea
-- name=speed, interval=1000, chance=10, range=7, duration=20000, speedchange=-600, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=21, min=-200, max=-450, radius=6, areaEffect=poff
--]]

monster:register()
