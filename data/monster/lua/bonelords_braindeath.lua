-- Braindeath
-- Auto-converted from XML

local monster = Game.createMonsterType("Braindeath")
if not monster then return end

monster:name("Braindeath")
monster:nameDescription("a braindeath")
monster:health(1225)
monster:maxHealth(1225)
monster:experience(895)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(7256)
monster:outfit({lookType = 256})
monster:defense(20)
monster:armor(20)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -20},
    {type = COMBAT_FIREDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You have disturbed my thoughts!", yell = false},
    {text = "Let me turn you into something more useful!", yell = false},
    {text = "Let me taste your brain!", yell = false},
    {text = "You will be punished!", yell = false},
})

-- Summons
monster:summons({
    {name = "Vampire", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 55000, maxCount = 89},
    {id = 7364, chance = 9000, maxCount = 4},
    {id = 2175, chance = 690},
    {id = 2450, chance = 8000},
    {id = 2423, chance = 2000},
    {id = 2509, chance = 6000},
    {id = 5898, chance = 3380},
    {id = 7407, chance = 1500},
    {id = 2518, chance = 750},
    {id = 7452, chance = 950},
    {id = 3972, chance = 180},
    {id = 10580, chance = 4725},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=energy, interval=2000, chance=10, range=7, min=-93, max=-170, shootEffect=energy
-- name=fire, interval=2000, chance=10, range=7, min=-75, max=-125, shootEffect=fire
-- name=death, interval=2000, chance=10, range=7, min=-85, max=-170, shootEffect=suddendeath, areaEffect=smallclouds
-- name=earth, interval=2000, chance=10, range=7, min=-65, max=-125, shootEffect=poison
-- name=lifedrain, interval=2000, chance=10, range=7, min=-75, max=-85, areaEffect=redshimmer
-- name=manadrain, interval=2000, chance=10, range=7, max=-155
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=150, max=200, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=260, areaEffect=redshimmer
--]]

monster:register()
