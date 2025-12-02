-- Mad Technomancer
-- Auto-converted from XML

local monster = Game.createMonsterType("Mad Technomancer")
if not monster then return end

monster:name("Mad Technomancer")
monster:nameDescription("mad technomancer")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(55)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6015)
monster:outfit({lookType = 66})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)
monster:runHealth(150)

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
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_FIREDAMAGE, percent = 60},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I'm going to make them an offer they can't refuse.", yell = false},
    {text = "My masterplan cannot fail!", yell = false},
    {text = "Gentlemen, you can't fight here! This is the War Room!", yell = false},
})

-- Loot
monster:loot({
    {id = 7699, chance = 1000000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=40
-- name=fire, interval=1000, chance=10, range=7, min=-50, max=-120, radius=4, target=1, shootEffect=fire, areaEffect=firearea
-- name=physical, interval=1000, chance=34, range=7, min=-55, max=-105, shootEffect=largerock
-- name=manadrain, interval=1000, chance=25, range=7, min=-50, max=-80
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=50, min=75, max=325, areaEffect=blueshimmer
--]]

monster:register()
