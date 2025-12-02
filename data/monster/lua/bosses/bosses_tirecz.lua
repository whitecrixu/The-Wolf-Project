-- Tirecz
-- Converted from XML

local monster = Game.createMonsterType("Tirecz")
if not monster then return end

monster:name("Tirecz")
monster:nameDescription("Tirecz")
monster:health(25000)
monster:maxHealth(25000)
monster:experience(6000)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(11103)
monster:outfit({lookType = 334})
monster:defense(19)
monster:armor(16)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 30},
    {type = COMBAT_FIREDAMAGE, percent = 50}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Hissss!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -172},
    {name = "invisible", interval = 2000, chance = 25, range = 7, radius = 1},
    {name = "fire", interval = 2000, chance = 25, minDamage = -120, maxDamage = -460, spread = 3},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -290, radius = 3},
    {name = "energy", interval = 3000, chance = 30, minDamage = -80, maxDamage = -345, length = 8},
    {name = "physical", interval = 2000, chance = 15, minDamage = -200, maxDamage = -370, radius = 7}
})

monster:register()
