-- Trailemaw
-- Converted from XML

local monster = Game.createMonsterType("Trailemaw")
if not monster then return end

monster:name("Trailemaw")
monster:nameDescription("a trailemaw")
monster:health(200000)
monster:maxHealth(200000)
monster:experience(0)
monster:speed(0)
monster:race(RACE_BLOOD)
monster:corpseId(22567)
monster:outfit({lookType = 594})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = 0}
})

monster:register()
