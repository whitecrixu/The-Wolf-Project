-- Dipthrah
-- Auto-converted from XML

local monster = Game.createMonsterType("Dipthrah")
if not monster then return end

monster:name("Dipthrah")
monster:nameDescription("a dipthrah")
monster:health(4200)
monster:maxHealth(4200)
monster:experience(2900)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(6031)
monster:outfit({lookType = 87})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 30},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Come closer to learn the final lesson.", yell = false},
    {text = "You can't escape death forever.", yell = false},
})

-- Summons
monster:summons({
    {name = "Priestess", chance = 15, interval = 2000, max = 3},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2146, chance = 7000, maxCount = 3},
    {id = 7590, chance = 7000},
    {id = 2167, chance = 7000},
    {id = 2178, chance = 1500},
    {id = 2158, chance = 1500},
    {id = 2193, chance = 500},
    {id = 2436, chance = 500},
    {id = 2446, chance = 300},
    {id = 2354, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=80
-- name=lifedrain, interval=4000, chance=20, range=1, min=-100, max=-800
-- name=manadrain, interval=2000, chance=15, range=7, min=-100, max=-500, areaEffect=redshimmer
-- name=speed, interval=1000, chance=15, range=7, duration=50000, speedchange=-650, areaEffect=redshimmer
-- name=drunk, interval=1000, chance=12, radius=7, areaEffect=bluebubble
-- name=melee, interval=3000, chance=34, min=-50, max=-600, radius=3, areaEffect=bluebubble
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=100, max=200, areaEffect=blueshimmer
--]]

monster:register()
