-- Crystal Wolf
-- Converted from XML

local monster = Game.createMonsterType("Crystal Wolf")
if not monster then return end

monster:name("Crystal Wolf")
monster:nameDescription("a crystal wolf")
monster:health(750)
monster:maxHealth(750)
monster:experience(275)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(13584)
monster:outfit({lookType = 391})
monster:defense(20)
monster:armor(20)
monster:runHealth(75)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Raaarrr!", yell = false},
    {text = "Aaaauuuuuooooooo!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 56000, maxCount = 52},
    {id = 2666, chance = 52000, maxCount = 4},
    {id = 7839, chance = 11000, maxCount = 10},
    {id = 8878, chance = 3700},
    {id = 2183, chance = 7400},
    {id = 5897, chance = 3700}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "earth", interval = 2000, chance = 15, minDamage = -60, maxDamage = -130, length = 3, spread = 2},
    {name = "ice", interval = 2000, chance = 15, minDamage = -80, maxDamage = -150, range = 6, radius = 3},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -25, maxDamage = -80, range = 7}
})

monster:register()
