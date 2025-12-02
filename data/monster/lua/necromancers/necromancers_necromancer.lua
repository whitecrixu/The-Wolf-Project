-- Necromancer
-- Auto-converted from XML

local monster = Game.createMonsterType("Necromancer")
if not monster then return end

monster:name("Necromancer")
monster:nameDescription("a necromancer")
monster:health(580)
monster:maxHealth(580)
monster:experience(580)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20455)
monster:outfit({lookType = 9})
monster:defense(25)
monster:armor(25)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Your corpse will be mine!", yell = false},
    {text = "Taste the sweetness of death!", yell = false},
})

-- Summons
monster:summons({
    {name = "Ghoul", chance = 15, interval = 2000, max = 1},
    {name = "Ghost", chance = 5, interval = 2000, max = 1},
    {name = "Mummy", chance = 5, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 30050, maxCount = 90},
    {id = 2545, chance = 15000, maxCount = 5},
    {id = 2796, chance = 1470},
    {id = 2423, chance = 390},
    {id = 7589, chance = 300},
    {id = 2663, chance = 500},
    {id = 2436, chance = 100},
    {id = 7456, chance = 10},
    {id = 8901, chance = 130},
    {id = 2195, chance = 210},
    {id = 11237, chance = 10130},
    {id = 12431, chance = 1001},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
-- name=death, interval=2000, chance=20, range=1, min=-60, max=-120, target=1, shootEffect=death, areaEffect=smallclouds
-- name=poison, interval=2000, chance=20, range=7, min=-65, max=-120, shootEffect=poison, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=25, min=50, max=80, areaEffect=blueshimmer
--]]

monster:register()
