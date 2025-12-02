-- Morguthis
-- Auto-converted from XML

local monster = Game.createMonsterType("Morguthis")
if not monster then return end

monster:name("Morguthis")
monster:nameDescription("a morguthis")
monster:health(4800)
monster:maxHealth(4800)
monster:experience(3000)
monster:speed(320)
monster:race(RACE_UNDEAD)
monster:corpseId(6025)
monster:outfit({lookType = 90})
monster:defense(25)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 62},
    {type = COMBAT_FIREDAMAGE, percent = 60},
    {type = COMBAT_ENERGYDAMAGE, percent = 52},
    {type = COMBAT_EARTHDAMAGE, percent = -15},
    {type = COMBAT_HOLYDAMAGE, percent = -22},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Vengeance!", yell = false},
    {text = "You will make a fine trophy.", yell = false},
    {text = "Come and fight me, cowards!", yell = false},
    {text = "I am the supreme warrior!", yell = false},
    {text = "Let me hear the music of battle.", yell = false},
    {text = "Anotherone to bite the dust!", yell = false},
})

-- Summons
monster:summons({
    {name = "Hero", chance = 1000, interval = 2000, max = 3},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 73},
    {id = 2197, chance = 7000},
    {id = 2430, chance = 7000},
    {id = 2144, chance = 7000},
    {id = 7591, chance = 1500},
    {id = 2136, chance = 500},
    {id = 2443, chance = 300},
    {id = 7368, chance = 500, maxCount = 3},
    {id = 2645, chance = 500},
    {id = 2350, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=200
-- name=lifedrain, interval=3000, chance=7, range=1, min=-55, max=-550
-- name=speed, interval=1000, chance=25, range=7, duration=50000, speedchange=-650, areaEffect=redshimmer
-- name=physical, interval=1000, chance=20, min=-40, max=-400, radius=3, areaEffect=blackspark
-- name=physical, interval=3000, chance=7, min=-50, max=-500, radius=3, areaEffect=mortarea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=13, min=200, max=300, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=7, duration=5000, speedchange=1201, areaEffect=redshimmer
-- name=invisible, interval=2000, chance=10, duration=4000, areaEffect=blueshimmer
--]]

monster:register()
