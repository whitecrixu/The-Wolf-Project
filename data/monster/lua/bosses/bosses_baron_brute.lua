-- Baron Brute
-- Converted from XML

local monster = Game.createMonsterType("Baron Brute")
if not monster then return end

monster:name("Baron Brute")
monster:nameDescription("Baron Brute")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(3000)
monster:speed(290)
monster:race(RACE_BLOOD)
monster:corpseId(6008)
monster:outfit({lookType = 2})
monster:defense(35)
monster:armor(22)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = 80}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Mash'n!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -185}
})

monster:register()
