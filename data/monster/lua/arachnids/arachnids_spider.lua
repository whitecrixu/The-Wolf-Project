-- Spider
-- Converted from XML

local monster = Game.createMonsterType("Spider")
if not monster then return end

monster:name("Spider")
monster:nameDescription("a spider")
monster:health(20)
monster:maxHealth(20)
monster:experience(12)
monster:speed(165)
monster:race(RACE_VENOM)
monster:manaCost(210)
monster:corpseId(5961)
monster:outfit({lookType = 30})
monster:defense(5)
monster:armor(5)
monster:runHealth(2)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = -1}
})

-- Loot
monster:loot({
    {id = 2148, chance = 63333, maxCount = 5},
    {id = 8859, chance = 810}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -35}
})

monster:register()
