-- Spectre
-- Auto-converted from XML

local monster = Game.createMonsterType("Spectre")
if not monster then return end

monster:name("Spectre")
monster:nameDescription("a spectre")
monster:health(1350)
monster:maxHealth(1350)
monster:experience(2100)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(6348)
monster:outfit({lookType = 235, lookHead = 20})
monster:defense(35)
monster:armor(35)

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
    {type = COMBAT_PHYSICALDAMAGE, percent = 90},
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_FIREDAMAGE, percent = -8},
    {type = COMBAT_ENERGYDAMAGE, percent = -8},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
})

-- Voices
monster:voices({
    {text = "Revenge ... is so ... sweet!", yell = false},
    {text = "Life...force! Feed me your... lifeforce!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 33000, maxCount = 100},
    {id = 2148, chance = 33000, maxCount = 97},
    {id = 2260, chance = 30310, maxCount = 2},
    {id = 2152, chance = 3850, maxCount = 7},
    {id = 5944, chance = 6005},
    {id = 2165, chance = 190},
    {id = 2189, chance = 9800},
    {id = 6500, chance = 6270},
    {id = 2071, chance = 9620},
    {id = 7383, chance = 700},
    {id = 2134, chance = 850},
    {id = 5909, chance = 3800},
    {id = 6300, chance = 280},
    {id = 7590, chance = 920},
    {id = 2134, chance = 110},
    {id = 2136, chance = 110},
    {id = 11227, chance = 1000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=65, attack=82
-- name=drunk, interval=2000, chance=15, radius=4, duration=6000, areaEffect=purplenote
-- name=spectre drown, interval=2000, chance=15
-- name=manadrain, interval=2000, chance=15, range=7, min=-100, max=-400
-- name=lifedrain, interval=2000, chance=20, range=7, min=-300, max=-550, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=25, min=100, max=250, areaEffect=blueshimmer
-- name=healing, interval=2000, chance=10, min=370, max=700, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=290, areaEffect=redshimmer
--]]

monster:register()
