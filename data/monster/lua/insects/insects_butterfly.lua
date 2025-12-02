-- Butterfly
-- Converted from XML

local monster = Game.createMonsterType("Butterfly")
if not monster then return end

monster:name("Butterfly")
monster:nameDescription("a butterfly")
monster:health(2)
monster:maxHealth(2)
monster:experience(0)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(4313)
monster:outfit({lookType = 10})
monster:defense(0)
monster:armor(0)
monster:runHealth(0)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
