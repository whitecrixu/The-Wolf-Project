-- Insectoid Worker
-- Converted from XML

local monster = Game.createMonsterType("Insectoid Worker")
if not monster then return end

monster:name("Insectoid Worker")
monster:nameDescription("an insectoid worker")
monster:health(950)
monster:maxHealth(950)
monster:experience(650)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(13514)
monster:outfit({lookType = 403})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 90},
    {id = 15622, chance = 14990},
    {id = 15486, chance = 15380},
    {id = 7618, chance = 5090},
    {id = 2149, chance = 2880},
    {id = 2438, chance = 560}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -105}
})

monster:register()
