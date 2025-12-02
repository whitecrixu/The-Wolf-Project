-- Versperoth
-- Converted from XML

local monster = Game.createMonsterType("Versperoth")
if not monster then return end

monster:name("Versperoth")
monster:nameDescription("versperoth")
monster:health(100000)
monster:maxHealth(100000)
monster:experience(20000)
monster:speed(0)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 295})
monster:defense(55)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 90}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "GrrroaR!", yell = false},
    {text = "GROWL!", yell = false},
    {text = "Waaaah!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -220},
    {name = "firefield", interval = 1200, chance = 30, range = 7, radius = 4},
    {name = "fire", interval = 1000, chance = 40, minDamage = -700, maxDamage = -1615, range = 5, length = 8, spread = 3},
    {name = "melee", interval = 1000, chance = 25, minDamage = -750, maxDamage = -950}
})

monster:register()
