-- Shadow Pupil
-- Auto-converted from XML

local monster = Game.createMonsterType("Shadow Pupil")
if not monster then return end

monster:name("Shadow Pupil")
monster:nameDescription("a shadow pupil")
monster:health(450)
monster:maxHealth(450)
monster:experience(410)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(21254)
monster:outfit({lookType = 551})
monster:defense(25)
monster:armor(25)

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
    {text = "When I'm finished with you, you'll be a shadow of your former self.", yell = false},
})

-- Summons
monster:summons({
    {name = "Skeleton", chance = 10, interval = 2000, max = 1},
    {name = "Ghost", chance = 5, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 64},
    {id = 21246, chance = 9130},
    {id = 21243, chance = 15000},
    {id = 11237, chance = 6920},
    {id = 2789, chance = 5170},
    {id = 21247, chance = 4300},
    {id = 7589, chance = 470},
    {id = 2663, chance = 580},
    {id = 2195, chance = 60},
    {id = 2423, chance = 290},
    {id = 8900, chance = 290},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=35
-- name=death, interval=2000, chance=20, range=7, min=-60, max=-80, target=1, shootEffect=suddendeath, areaEffect=mortarea
-- name=death, interval=2000, chance=15, min=-30, max=-60, radius=3, areaEffect=mortarea
--]]

monster:register()
