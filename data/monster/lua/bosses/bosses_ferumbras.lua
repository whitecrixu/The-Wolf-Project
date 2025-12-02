-- Ferumbras
-- Auto-converted from XML

local monster = Game.createMonsterType("Ferumbras")
if not monster then return end

monster:name("Ferumbras")
monster:nameDescription("Ferumbras")
monster:health(35000)
monster:maxHealth(35000)
monster:experience(12000)
monster:speed(320)
monster:race(RACE_VENOM)
monster:corpseId(6078)
monster:outfit({lookType = 229})
monster:defense(120)
monster:armor(100)
monster:targetDistance(2)
monster:runHealth(2500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 90},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "NOONE WILL STOP ME THIS TIME!", yell = true},
    {text = "THE POWER IS MINE!", yell = true},
})

-- Summons
monster:summons({
    {name = "Demon", chance = 12, interval = 3000, max = 3},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 25},
    {id = 2393, chance = 16060},
    {id = 2514, chance = 12050},
    {id = 2472, chance = 7000},
    {id = 2678, chance = 20000, maxCount = 3},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2151, chance = 12000, maxCount = 4},
    {id = 5903, chance = 100000},
    {id = 2149, chance = 15000, maxCount = 3},
    {id = 2171, chance = 30000},
    {id = 2415, chance = 6000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-100, max=-350
-- name=manadrain, interval=2000, chance=20, range=7, min=-300, max=-700, areaEffect=redshimmer
-- name=poison, interval=3000, chance=20, min=-250, max=-550, radius=6, areaEffect=poison
-- name=energy, interval=2000, chance=18, min=-200, max=-400, radius=6, areaEffect=energy
-- name=manadrain, interval=2000, chance=16, min=-225, max=-375, radius=6, areaEffect=redshimmer
-- name=lifedrain, interval=2000, chance=21, min=-200, max=-450, radius=6, areaEffect=poff
-- name=effect, interval=3000, chance=20, min=-200, max=-600, radius=5, areaEffect=blackspark
-- name=firecondition, interval=3000, chance=20, range=7, min=-200, max=-800, radius=7, target=1, shootEffect=fire, areaEffect=firearea
-- name=lifedrain, interval=2000, chance=25, min=-50, max=-250, length=8, areaEffect=greenspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=900, max=1500, areaEffect=greenshimmer
-- name=speed, interval=3000, chance=30, duration=7000, speedchange=360, areaEffect=blueshimmer
-- name=invisible, interval=4000, chance=20, duration=5000, areaEffect=blueshimmer
--]]

monster:register()
