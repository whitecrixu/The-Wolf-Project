-- Glooth Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Glooth Golem")
if not monster then return end

monster:name("Glooth Golem")
monster:nameDescription("a glooth golem")
monster:health(2700)
monster:maxHealth(2700)
monster:experience(2200)
monster:speed(260)
monster:race(RACE_VENOM)
monster:corpseId(23363)
monster:outfit({lookType = 600})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "*slosh*", yell = false},
    {text = "*clank*", yell = false},
})

-- Loot
monster:loot({
    {id = 5880, chance = 1030},
    {id = 23554, chance = 1720},
    {id = 23541, chance = 1720},
    {id = 23536, chance = 1370},
    {id = 2148, chance = 100000, maxCount = 200},
    {id = 24417, chance = 4470},
    {id = 9690, chance = 690},
    {id = 23514, chance = 9970},
    {id = 2152, chance = 56010, maxCount = 4},
    {id = 23474, chance = 16840},
    {id = 8473, chance = 4470},
    {id = 7590, chance = 9280},
    {id = 23538, chance = 690},
    {id = 23550, chance = 3440},
    {id = 23549, chance = 1030},
    {id = 23551, chance = 690},
    {id = 2154, chance = 1030},
    {id = 9970, chance = 7560, maxCount = 4},
    {id = 2149, chance = 8590, maxCount = 4},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=50
-- name=melee, interval=2000, chance=2, skill=86, attack=100
-- name=energy, interval=2000, chance=25, range=7, min=-125, max=-245, shootEffect=energy
-- name=war golem skill reducer, interval=2000, chance=16
-- name=war golem electrify, interval=2000, chance=9, range=7
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=13, duration=4000, speedchange=404, areaEffect=redshimmer
-- name=healing, interval=2000, chance=20, min=200, max=250, areaEffect=blueshimmer
--]]

monster:register()
