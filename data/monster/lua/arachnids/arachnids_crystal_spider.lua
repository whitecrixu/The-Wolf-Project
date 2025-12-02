-- Crystal Spider
-- Auto-converted from XML

local monster = Game.createMonsterType("Crystal Spider")
if not monster then return end

monster:name("Crystal Spider")
monster:nameDescription("a crystal spider")
monster:health(1250)
monster:maxHealth(1250)
monster:experience(900)
monster:speed(220)
monster:race(RACE_UNDEAD)
monster:corpseId(7344)
monster:outfit({lookType = 263})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Screeech!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 92},
    {id = 7589, chance = 14810},
    {id = 2463, chance = 10000},
    {id = 7364, chance = 6250, maxCount = 6},
    {id = 2463, chance = 5263},
    {id = 2457, chance = 4545},
    {id = 7449, chance = 2564},
    {id = 2125, chance = 1730},
    {id = 2124, chance = 1560},
    {id = 5879, chance = 1950},
    {id = 2169, chance = 1587},
    {id = 7290, chance = 750},
    {id = 2477, chance = 690},
    {id = 2476, chance = 540},
    {id = 7902, chance = 650},
    {id = 2171, chance = 120},
    {id = 7437, chance = 130},
    {id = 5801, chance = 70},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-250
-- name=speed, interval=2000, chance=15, range=7, radius=6, duration=15000, speedchange=-800, areaEffect=poff
-- name=ice, interval=2000, chance=15, range=7, min=-50, max=-100, target=1, shootEffect=ice, areaEffect=icearea
-- name=speed, interval=2000, chance=20, range=7, target=1, duration=10000, speedchange=-600, shootEffect=snowball
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=250, areaEffect=redshimmer
--]]

monster:register()
