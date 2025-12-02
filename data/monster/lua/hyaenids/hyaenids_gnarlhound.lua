-- Gnarlhound
-- Converted from XML

local monster = Game.createMonsterType("Gnarlhound")
if not monster then return end

monster:name("Gnarlhound")
monster:nameDescription("a gnarlhound")
monster:health(198)
monster:maxHealth(198)
monster:experience(60)
monster:speed(280)
monster:race(RACE_BLOOD)
monster:manaCost(465)
monster:corpseId(11250)
monster:outfit({lookType = 341})
monster:defense(10)
monster:armor(10)

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
    {text = "Gnarllll!", yell = false},
    {text = "Grrrrrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 39075, maxCount = 3},
    {id = 2148, chance = 48000, maxCount = 30},
    {id = 3976, chance = 33300, maxCount = 3},
    {id = 11324, chance = 25550}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -65}
})

monster:register()
