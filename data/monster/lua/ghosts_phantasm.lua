-- Phantasm
-- Auto-converted from XML

local monster = Game.createMonsterType("Phantasm")
if not monster then return end

monster:name("Phantasm")
monster:nameDescription("a phantasm")
monster:health(3950)
monster:maxHealth(3950)
monster:experience(4400)
monster:speed(240)
monster:race(RACE_UNDEAD)
monster:corpseId(6344)
monster:outfit({lookType = 241, lookHead = 20})
monster:defense(0)
monster:armor(0)
monster:runHealth(350)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Oh my, you forgot to put your pants on!", yell = false},
    {text = "Weeheeheeheehee!", yell = false},
    {text = "Its nothing but a dream!", yell = false},
    {text = "Give in!", yell = false},
})

-- Summons
monster:summons({
    {name = "Phantasm Summon", chance = 20, interval = 2000, max = 1},
    {name = "Phantasm Summon", chance = 20, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 30000, maxCount = 100},
    {id = 2148, chance = 28000, maxCount = 33},
    {id = 2152, chance = 87730, maxCount = 4},
    {id = 2260, chance = 22500, maxCount = 2},
    {id = 6500, chance = 16320},
    {id = 7590, chance = 32750, maxCount = 2},
    {id = 8473, chance = 14680},
    {id = 2804, chance = 26930, maxCount = 2},
    {id = 2149, chance = 10190, maxCount = 3},
    {id = 7414, chance = 110},
    {id = 2487, chance = 660},
    {id = 2165, chance = 550},
    {id = 6300, chance = 330},
    {id = 7451, chance = 550},
    {id = 2147, chance = 12160, maxCount = 3},
    {id = 9970, chance = 12810, maxCount = 3},
    {id = 2150, chance = 14570, maxCount = 3},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=90, attack=95
-- name=death, interval=2000, chance=10, range=7, min=-250, max=-610, shootEffect=suddendeath, areaEffect=smallclouds
-- name=manadrain, interval=2000, chance=20, min=-5, max=-80, radius=3, areaEffect=yellowbubble
-- name=phantasm drown, interval=2000, chance=15
-- name=drunk, interval=2000, chance=15, radius=5, duration=6000, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=30, min=228, max=449, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=10, duration=6000, speedchange=500, areaEffect=redshimmer
-- name=invisible, interval=2000, chance=25, duration=8000, areaEffect=blueshimmer
--]]

monster:register()
