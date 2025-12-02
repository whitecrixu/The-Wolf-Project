-- Efreet
-- Auto-converted from XML

local monster = Game.createMonsterType("Efreet")
if not monster then return end

monster:name("Efreet")
monster:nameDescription("an efreet")
monster:health(550)
monster:maxHealth(550)
monster:experience(410)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6032)
monster:outfit({lookType = 103})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 90},
    {type = COMBAT_ENERGYDAMAGE, percent = 60},
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -8},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I grant you a deathwish!", yell = false},
    {text = "Good wishes are for fairytales", yell = false},
})

-- Summons
monster:summons({
    {name = "green djinn", chance = 10, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 75},
    {id = 2148, chance = 60000, maxCount = 50},
    {id = 2673, chance = 9390, maxCount = 5},
    {id = 7378, chance = 15570, maxCount = 3},
    {id = 2442, chance = 5000},
    {id = 2063, chance = 160},
    {id = 2149, chance = 7000},
    {id = 7732, chance = 2000, maxCount = 2},
    {id = 1860, chance = 2200},
    {id = 5910, chance = 3000},
    {id = 2187, chance = 390},
    {id = 2663, chance = 160},
    {id = 7900, chance = 360},
    {id = 12426, chance = 8540},
    {id = 12442, chance = 1130},
    {id = 7589, chance = 3500},
    {id = 2155, chance = 200},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=40
-- name=fire, interval=2000, chance=15, range=7, min=-40, max=-110, shootEffect=fire
-- name=energy, interval=2000, chance=10, min=-30, max=-90, radius=3, areaEffect=energy
-- name=energy, interval=2000, chance=15, range=7, min=-65, max=-120, shootEffect=energy, areaEffect=energy
-- name=speed, interval=2000, chance=15, range=7, duration=15000, speedchange=-650, areaEffect=redshimmer
-- name=drunk, interval=2000, chance=10, range=7, duration=6000, shootEffect=energy
-- name=outfit, interval=2000, chance=1, range=7, duration=4000, areaEffect=blueshimmer
-- name=djinn electrify, interval=2000, chance=15, range=5
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=50, max=80, areaEffect=blueshimmer
--]]

monster:register()
