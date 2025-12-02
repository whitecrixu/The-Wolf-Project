-- Boar
-- Converted from XML

local monster = Game.createMonsterType("Boar")
if not monster then return end

monster:name("Boar")
monster:nameDescription("a boar")
monster:health(198)
monster:maxHealth(198)
monster:experience(60)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:manaCost(465)
monster:corpseId(13308)
monster:outfit({lookType = 380})
monster:defense(35)
monster:armor(35)
monster:runHealth(19)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Grunt Grunt", yell = false},
    {text = "Grunt", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 25000, maxCount = 20},
    {id = 13297, chance = 20000, maxCount = 2}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50}
})

monster:register()
