-- starving wolf
-- Converted from XML

local monster = Game.createMonsterType("starving wolf")
if not monster then return end

monster:name("starving wolf")
monster:nameDescription("a starving wolf")
monster:health(85)
monster:maxHealth(85)
monster:experience(65)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(5968)
monster:outfit({lookType = 27, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(10)
monster:armor(10)
monster:runHealth(8)

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
    {type = COMBAT_PHYSICALDAMAGE, percent = -30}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Gaarrrrrr", yell = false},
    {text = "Gnoorrr", yell = false},
    {text = "Yoooohhuuuu!", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 5300, maxCount = 2},
    {id = 5897, chance = 1430},
    {id = 220, chance = 64730}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -35}
})

monster:register()
