-- Vashresamun
-- Auto-converted from XML

local monster = Game.createMonsterType("Vashresamun")
if not monster then return end

monster:name("Vashresamun")
monster:nameDescription("a vashresamun")
monster:health(4000)
monster:maxHealth(4000)
monster:experience(2950)
monster:speed(340)
monster:race(RACE_UNDEAD)
monster:corpseId(6025)
monster:outfit({lookType = 90})
monster:defense(35)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Come my maidens, we have visitors!", yell = false},
    {text = "Are you enjoying my music?", yell = false},
    {text = "If music is the food of death, drop dead.", yell = false},
})

-- Summons
monster:summons({
    {name = "Banshee", chance = 20, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 65},
    {id = 2143, chance = 7000},
    {id = 2072, chance = 7000},
    {id = 7691, chance = 7000},
    {id = 2656, chance = 2500},
    {id = 2124, chance = 1500},
    {id = 2074, chance = 1500},
    {id = 2445, chance = 500},
    {id = 2139, chance = 300},
    {id = 2349, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=80
-- name=lifedrain, interval=2000, chance=30, min=-200, max=-750, radius=5, areaEffect=purplenote
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=20, min=60, max=450, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=12, range=7, duration=30000, speedchange=350, areaEffect=redshimmer
--]]

monster:register()
