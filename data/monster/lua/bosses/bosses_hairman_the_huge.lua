-- Hairman The Huge
-- Converted from XML

local monster = Game.createMonsterType("Hairman The Huge")
if not monster then return end

monster:name("Hairman The Huge")
monster:nameDescription("hairman the huge")
monster:health(600)
monster:maxHealth(600)
monster:experience(335)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(6043)
monster:outfit({lookType = 116, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(25)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Hugah!", yell = false},
    {text = "Ungh! Ungh!", yell = false},
    {text = "Huaauaauaauaa!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 60},
    {id = 5883, chance = 2500},
    {id = 2676, chance = 7500, maxCount = 2},
    {id = 2200, chance = 3000},
    {id = 2166, chance = 7500},
    {id = 2463, chance = 5000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -85}
})

monster:register()
