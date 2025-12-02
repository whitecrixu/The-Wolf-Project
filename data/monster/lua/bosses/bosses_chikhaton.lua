-- Chikhaton
-- Converted from XML

local monster = Game.createMonsterType("Chikhaton")
if not monster then return end

monster:name("Chikhaton")
monster:nameDescription("Chikhaton")
monster:health(20000)
monster:maxHealth(20000)
monster:experience(20000)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(12273)
monster:outfit({lookType = 361})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 50}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Victis", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1130},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -500, range = 7}
})

monster:register()
