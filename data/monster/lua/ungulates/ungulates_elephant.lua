-- Elephant
-- Converted from XML

local monster = Game.createMonsterType("Elephant")
if not monster then return end

monster:name("Elephant")
monster:nameDescription("an elephant")
monster:health(320)
monster:maxHealth(320)
monster:experience(160)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(500)
monster:corpseId(6052)
monster:outfit({lookType = 211})
monster:defense(25)
monster:armor(25)

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
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "Hooooot-Toooooot!", yell = false},
    {text = "Tooooot!", yell = false},
    {text = "Trooooot!", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 39000, maxCount = 4},
    {id = 2671, chance = 30000, maxCount = 3},
    {id = 3956, chance = 1000, maxCount = 2},
    {id = 3973, chance = 140}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100}
})

monster:register()
