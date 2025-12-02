-- War Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("War Golem")
if not monster then return end

monster:name("War Golem")
monster:nameDescription("a war golem")
monster:health(4300)
monster:maxHealth(4300)
monster:experience(2550)
monster:speed(240)
monster:race(RACE_ENERGY)
monster:corpseId(10005)
monster:outfit({lookType = 326})
monster:defense(40)
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
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = 15},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Azerus barada nikto!", yell = false},
    {text = "Klonk klonk klonk", yell = false},
    {text = "Engaging Enemy!", yell = false},
    {text = "Threat level processed.", yell = false},
    {text = "Charging weapon systems!", yell = false},
    {text = "Auto repair in progress.", yell = false},
    {text = "The battle is joined!", yell = false},
    {text = "Termination initialized!", yell = false},
    {text = "Rrrtttarrrttarrrtta", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 37500, maxCount = 90},
    {id = 2148, chance = 375000, maxCount = 80},
    {id = 8309, chance = 5260, maxCount = 5},
    {id = 2377, chance = 5500},
    {id = 2510, chance = 9000},
    {id = 2394, chance = 7000},
    {id = 2513, chance = 6500},
    {id = 8473, chance = 10080},
    {id = 7590, chance = 8860},
    {id = 5880, chance = 1920},
    {id = 7439, chance = 900},
    {id = 2438, chance = 6400},
    {id = 9809, chance = 260},
    {id = 2209, chance = 810},
    {id = 2213, chance = 1210},
    {id = 9980, chance = 130},
    {id = 9978, chance = 1080},
    {id = 7893, chance = 90},
    {id = 2645, chance = 620},
    {id = 7403, chance = 50},
    {id = 7422, chance = 120},
    {id = 7428, chance = 770},
    {id = 2177, chance = 1000},
    {id = 13292, chance = 100},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=110
-- name=energy, interval=2000, chance=15, range=7, min=-165, max=-220, shootEffect=energy
-- name=outfit, interval=2000, chance=1, range=7, duration=3000
-- name=war golem electrify, interval=2000, chance=15, range=1
-- name=war golem skill reducer, interval=2000, chance=10
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=300, areaEffect=redshimmer
-- name=healing, interval=2000, chance=15, min=200, max=250, areaEffect=blueshimmer
--]]

monster:register()
