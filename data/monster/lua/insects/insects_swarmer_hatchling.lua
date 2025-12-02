-- Swarmer Hatchling
-- Converted from XML

local monster = Game.createMonsterType("Swarmer Hatchling")
if not monster then return end

monster:name("Swarmer Hatchling")
monster:nameDescription("a swarmer hatchling")
monster:health(5)
monster:maxHealth(5)
monster:experience(0)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(15388)
monster:outfit({lookType = 460})
monster:defense(20)
monster:armor(12)

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
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -79},
    {name = "drown", interval = 1000, chance = 11, minDamage = -15, maxDamage = -100, range = 5}
})

monster:register()
