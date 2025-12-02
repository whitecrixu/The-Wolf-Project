-- Blood Priest
-- Auto-converted from XML

local monster = Game.createMonsterType("Blood Priest")
if not monster then return end

monster:name("Blood Priest")
monster:nameDescription("a blood priest")
monster:health(820)
monster:maxHealth(820)
monster:experience(900)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(21262)
monster:outfit({lookType = 553})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
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
    {text = "Blood for the dark god!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 71},
    {id = 21245, chance = 14460},
    {id = 21242, chance = 14410},
    {id = 21246, chance = 14660},
    {id = 11237, chance = 13550},
    {id = 21243, chance = 9270},
    {id = 21247, chance = 7770},
    {id = 7589, chance = 6000},
    {id = 2147, chance = 3510, maxCount = 2},
    {id = 8910, chance = 470},
    {id = 8902, chance = 180},
    {id = 15565, chance = 880},
    {id = 5909, chance = 3040},
    {id = 2663, chance = 2170},
    {id = 2195, chance = 120},
    {id = 5911, chance = 640},
    {id = 2436, chance = 180},
    {id = 8901, chance = 290},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
-- name=death, interval=2000, chance=20, range=7, min=-60, max=-100, target=1, shootEffect=death, areaEffect=smallclouds
-- name=lifedrain, interval=2000, chance=15, min=-40, max=-60, radius=4, areaEffect=redshimmer
-- name=manadrain, interval=3000, chance=10, range=1, min=-80, max=-130, length=7, target=1, areaEffect=blackspark
-- name=bleedcondition, interval=2000, chance=5, range=1, min=-160, max=-290, radius=1, target=1, areaEffect=redspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=80, max=120, areaEffect=blueshimmer
--]]

monster:register()
