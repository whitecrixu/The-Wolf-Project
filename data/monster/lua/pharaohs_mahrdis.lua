-- Mahrdis
-- Auto-converted from XML

local monster = Game.createMonsterType("Mahrdis")
if not monster then return end

monster:name("Mahrdis")
monster:nameDescription("a mahrdis")
monster:health(3900)
monster:maxHealth(3900)
monster:experience(3050)
monster:speed(340)
monster:race(RACE_UNDEAD)
monster:corpseId(6025)
monster:outfit({lookType = 90})
monster:defense(30)
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
    {type = COMBAT_ENERGYDAMAGE, percent = 45},
    {type = COMBAT_HOLYDAMAGE, percent = -22},
    {type = COMBAT_ICEDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Ashes to ashes!", yell = false},
    {text = "Fire, Fire!", yell = false},
    {text = "The eternal flame demands its due!", yell = false},
    {text = "This is why I'm hot.", yell = false},
    {text = "May my flames engulf you!", yell = false},
})

-- Summons
monster:summons({
    {name = "Fire Elemental", chance = 3000, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 2148, chance = 50000, maxCount = 70},
    {id = 2148, chance = 50000, maxCount = 64},
    {id = 2147, chance = 7000, maxCount = 3},
    {id = 2168, chance = 1500},
    {id = 7591, chance = 1500},
    {id = 2156, chance = 1500},
    {id = 2432, chance = 750},
    {id = 2141, chance = 500},
    {id = 2539, chance = 300},
    {id = 2353, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=100
-- name=physical, interval=1600, chance=7, range=1, min=-60, max=-600, areaEffect=redshimmer
-- name=fire, interval=1000, chance=7, range=7, min=-60, max=-600, shootEffect=fire, areaEffect=firearea
-- name=speed, interval=2000, chance=13, range=7, duration=50000, speedchange=-850, areaEffect=redshimmer
-- name=fire, interval=2000, chance=34, min=-80, max=-800, radius=3, areaEffect=explosionarea
-- name=firefield, interval=1000, chance=12, radius=4, areaEffect=yellowspark
-- name=firecondition, interval=2000, chance=13, min=-50, max=-500, length=8, spread=3, areaEffect=explosion
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=20, min=20, max=800, areaEffect=blueshimmer
--]]

monster:register()
