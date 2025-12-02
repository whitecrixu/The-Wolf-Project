-- Leviathan
-- Converted from XML

local monster = Game.createMonsterType("Leviathan")
if not monster then return end

monster:name("Leviathan")
monster:nameDescription("a leviathan")
monster:health(6000)
monster:maxHealth(6000)
monster:experience(5000)
monster:speed(758)
monster:race(RACE_BLOOD)
monster:corpseId(8307)
monster:outfit({lookType = 275})
monster:defense(30)
monster:armor(20)
monster:runHealth(600)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "CHHHRRRR", yell = false},
    {text = "HISSSS", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 40000, maxCount = 80},
    {id = 2152, chance = 40000, maxCount = 6},
    {id = 2146, chance = 10000, maxCount = 3},
    {id = 2148, chance = 40000, maxCount = 80}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -145},
    {name = "earth", interval = 1000, chance = 8, minDamage = -130, maxDamage = -460, length = 9, spread = 3},
    {name = "ice", interval = 1000, chance = 10, minDamage = -365, maxDamage = -491, length = 9, spread = 3},
    {name = "drown", interval = 1000, chance = 11, minDamage = -15, maxDamage = -20, radius = 4}
})

monster:register()
