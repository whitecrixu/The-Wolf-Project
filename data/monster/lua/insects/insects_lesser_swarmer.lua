-- Lesser Swarmer
-- Converted from XML

local monster = Game.createMonsterType("Lesser Swarmer")
if not monster then return end

monster:name("Lesser Swarmer")
monster:nameDescription("a lesser swarmer")
monster:health(230)
monster:maxHealth(230)
monster:experience(0)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(15388)
monster:outfit({lookType = 460})
monster:defense(5)
monster:armor(5)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -69},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -15, maxDamage = -70, range = 5}
})

monster:register()
