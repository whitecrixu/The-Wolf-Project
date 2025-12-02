-- Serpent Spawn
-- Auto-converted from XML

local monster = Game.createMonsterType("Serpent Spawn")
if not monster then return end

monster:name("Serpent Spawn")
monster:nameDescription("a serpent spawn")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(3050)
monster:speed(250)
monster:race(RACE_VENOM)
monster:corpseId(6061)
monster:outfit({lookType = 220})
monster:defense(35)
monster:armor(35)
monster:runHealth(275)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Sssssouls for the one", yell = false},
    {text = "HISSSS", yell = true},
    {text = "Tsssse one will risssse again", yell = false},
    {text = "I bring your deathhh, mortalssss", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 32300, maxCount = 100},
    {id = 2148, chance = 32300, maxCount = 100},
    {id = 2148, chance = 32300, maxCount = 39},
    {id = 3971, chance = 180},
    {id = 2487, chance = 510},
    {id = 2033, chance = 2870},
    {id = 7590, chance = 2000},
    {id = 2796, chance = 18200},
    {id = 2177, chance = 800},
    {id = 2168, chance = 6250},
    {id = 7386, chance = 2070},
    {id = 7456, chance = 750},
    {id = 2547, chance = 6200},
    {id = 2498, chance = 140},
    {id = 2146, chance = 12000},
    {id = 2182, chance = 930},
    {id = 8902, chance = 90},
    {id = 2479, chance = 670},
    {id = 8880, chance = 90},
    {id = 2528, chance = 920},
    {id = 2475, chance = 560},
    {id = 10611, chance = 14800},
    {id = 11230, chance = 960},
    {id = 4842, chance = 600},
    {id = 2167, chance = 590},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=63
-- name=earth, interval=2000, chance=20, range=7, min=-80, max=-300, shootEffect=poison
-- name=outfit, interval=2000, chance=1, range=7, duration=3000, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=25, range=7, radius=4, target=1, duration=12000, speedchange=-850, shootEffect=poison, areaEffect=greenbubble
-- name=lifedrain, interval=2000, chance=10, min=-200, max=-500, length=8, areaEffect=rednote
-- name=earth, interval=2000, chance=10, min=-200, max=-500, length=8, spread=3, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=250, max=500, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=340, areaEffect=redshimmer
--]]

monster:register()
