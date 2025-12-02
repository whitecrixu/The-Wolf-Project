-- Fleshslicer
-- Converted from XML

local monster = Game.createMonsterType("Fleshslicer")
if not monster then return end

monster:name("Fleshslicer")
monster:nameDescription("a fleshslicer")
monster:health(95)
monster:maxHealth(95)
monster:experience(0)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(15296)
monster:outfit({lookType = 457})
monster:defense(20)
monster:armor(12)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -79}
})

monster:register()
