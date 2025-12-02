-- Tiger
-- Converted from XML

local monster = Game.createMonsterType("Tiger")
if not monster then return end

monster:name("Tiger")
monster:nameDescription("a tiger")
monster:health(75)
monster:maxHealth(75)
monster:experience(40)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:manaCost(420)
monster:corpseId(6051)
monster:outfit({lookType = 125})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -1}
})

-- Loot
monster:loot({
    {id = 2666, chance = 35190, maxCount = 4},
    {id = 11210, chance = 10830}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50}
})

monster:register()
