-- Fury of the Emperor
-- Auto-converted from XML

local monster = Game.createMonsterType("Fury of the Emperor")
if not monster then return end

monster:name("Fury of the Emperor")
monster:nameDescription("a fury of the emperor")
monster:health(28800)
monster:maxHealth(28800)
monster:experience(26600)
monster:speed(450)
monster:race(RACE_UNDEAD)
monster:outfit({lookType = 351})
monster:defense(55)
monster:armor(65)
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
-- name=melee, interval=2000, chance=100, skill=85, attack=145
-- name=physical, interval=3000, chance=17, min=-250, max=-450, length=8, spread=3, areaEffect=bluebubble
-- name=physical, interval=3000, chance=10, range=7, min=-100, max=-700, shootEffect=suddendeath, areaEffect=mortarea
-- name=speed, interval=1000, chance=10, range=7, duration=20000, speedchange=-600, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=21, min=-400, max=-650, radius=6, areaEffect=poff
--]]

monster:register()
