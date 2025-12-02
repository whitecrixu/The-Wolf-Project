-- Elder Bonelord
-- Auto-converted from XML

local monster = Game.createMonsterType("Elder Bonelord")
if not monster then return end

monster:name("Elder Bonelord")
monster:nameDescription("an elder bonelord")
monster:health(500)
monster:maxHealth(500)
monster:experience(280)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6037)
monster:outfit({lookType = 108})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Let me take a look at you!", yell = false},
    {text = "Inferior creatures, bow before my power!", yell = false},
})

-- Summons
monster:summons({
    {name = "Gazer", chance = 10, interval = 2000, max = 1},
    {name = "Crypt Shambler", chance = 15, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 86},
    {id = 2175, chance = 7500},
    {id = 2509, chance = 6000},
    {id = 2377, chance = 6000},
    {id = 7364, chance = 10000, maxCount = 5},
    {id = 7589, chance = 1000},
    {id = 2518, chance = 150},
    {id = 3972, chance = 150},
    {id = 12468, chance = 10025},
    {id = 11193, chance = 21725},
    {id = 11197, chance = 850},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=55
-- name=energy, interval=2000, chance=5, range=7, min=-45, max=-60, shootEffect=energy
-- name=fire, interval=2000, chance=5, range=7, min=-40, max=-80, shootEffect=fire
-- name=death, interval=2000, chance=10, range=7, min=-45, max=-90, shootEffect=suddendeath, areaEffect=smallclouds
-- name=poison, interval=2000, chance=10, range=7, min=-20, max=-40, shootEffect=poison
-- name=lifedrain, interval=2000, chance=5, range=7, min=-45, max=-85, areaEffect=redshimmer
-- name=manadrain, interval=2000, chance=5, range=7, max=-40
-- name=speed, interval=2000, chance=10, range=7, duration=20000, speedchange=-600, areaEffect=redshimmer
--]]

monster:register()
