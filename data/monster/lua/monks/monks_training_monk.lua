-- Training Monk
-- Converted from WolfOTS

local monster = Game.createMonsterType("Training Monk")
if not monster then return end

monster:name("Training Monk")
monster:nameDescription("a training monk")
monster:health(1000000)
monster:maxHealth(1000000)
monster:experience(0)
monster:speed(0)
monster:race(RACE_VENOM)
monster:corpseId(0)
monster:outfit({lookType = 57})
monster:defense(10)
monster:armor(7)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(100)

-- Resistances

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -2, maxDamage = -7}
})

monster:register()
