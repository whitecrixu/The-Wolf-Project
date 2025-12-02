-- Minotaur Totem
-- Converted from XML

local monster = Game.createMonsterType("Minotaur Totem")
if not monster then return end

monster:name("Minotaur Totem")
monster:nameDescription("a minotaur totem")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(0)
monster:speed(0)
monster:race(RACE_UNDEAD)
monster:outfit({lookTypeEx = 3802})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1000}
})

monster:register()
