-- Frost Giantess
-- Auto-converted from XML

local monster = Game.createMonsterType("Frost Giantess")
if not monster then return end

monster:name("Frost Giantess")
monster:nameDescription("a frost giantess")
monster:health(275)
monster:maxHealth(275)
monster:experience(150)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(490)
monster:corpseId(7330)
monster:outfit({lookType = 265})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(60)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -3},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Ymirs Mjalle!", yell = false},
    {text = "No run so much, must stay fat!", yell = false},
    {text = "Horre, Sjan Flan!", yell = false},
    {text = "Damned fast food.", yell = false},
    {text = "Come kiss the cook!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 80000, maxCount = 40},
    {id = 2671, chance = 20990, maxCount = 2},
    {id = 2406, chance = 7960},
    {id = 10575, chance = 4800},
    {id = 7441, chance = 2008},
    {id = 2513, chance = 1490},
    {id = 7460, chance = 320},
    {id = 1294, chance = 10360, maxCount = 3},
    {id = 2209, chance = 70},
    {id = 2490, chance = 170},
    {id = 7290, chance = 100},
    {id = 7620, chance = 950},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=30
-- name=physical, interval=2000, chance=30, range=7, max=-90, shootEffect=largerock
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=300, areaEffect=redshimmer
--]]

monster:register()
