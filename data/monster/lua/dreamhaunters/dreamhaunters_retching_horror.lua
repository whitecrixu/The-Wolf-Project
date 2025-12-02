-- Retching Horror
-- Auto-converted from XML

local monster = Game.createMonsterType("Retching Horror")
if not monster then return end

monster:name("Retching Horror")
monster:nameDescription("Retching Horror")
monster:health(5300)
monster:maxHealth(5300)
monster:experience(3900)
monster:speed(250)
monster:race(RACE_FIRE)
monster:corpseId(22508)
monster:outfit({lookType = 588})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Wait for us, little maggot...", yell = false},
    {text = "We will devour you...", yell = false},
    {text = "My little beetles, go forth, eat, feast!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 9},
    {id = 2392, chance = 1240},
    {id = 2519, chance = 1700},
    {id = 2528, chance = 550},
    {id = 22363, chance = 3700},
    {id = 2789, chance = 14000, maxCount = 2},
    {id = 3962, chance = 4260},
    {id = 7452, chance = 410},
    {id = 7386, chance = 2500},
    {id = 7590, chance = 12500},
    {id = 7591, chance = 15000},
    {id = 8910, chance = 1800},
    {id = 8920, chance = 960},
    {id = 22539, chance = 16400},
    {id = 22541, chance = 14000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=80
-- name=drunk, interval=2000, chance=10, length=4, spread=3, target=1, duration=5000, areaEffect=greenshimmer
-- name=speed, interval=2000, chance=15, radius=4, target=1, duration=15000, speedchange=-700, shootEffect=whirlwindclub, areaEffect=stun
-- name=physical, interval=2000, chance=15, max=-110, radius=4, areaEffect=blackspark
-- name=physical, interval=2000, chance=15, max=-200, radius=1, target=1, shootEffect=sniperarrow
-- name=fire, interval=2000, chance=10, min=-200, max=-350, radius=1, target=1, shootEffect=fire, areaEffect=fireattack
--]]

monster:register()
