-- Minotaur Archer
-- Auto-converted from XML

local monster = Game.createMonsterType("Minotaur Archer")
if not monster then return end

monster:name("Minotaur Archer")
monster:nameDescription("a minotaur archer")
monster:health(100)
monster:maxHealth(100)
monster:experience(65)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(5982)
monster:outfit({lookType = 24})
monster:defense(10)
monster:armor(10)
monster:targetDistance(4)
monster:runHealth(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -1},
})

-- Voices
monster:voices({
    {text = "Ruan Wihmpy!", yell = false},
    {text = "Kaplar!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 75410, maxCount = 30},
    {id = 2543, chance = 90450, maxCount = 20},
    {id = 7363, chance = 12340, maxCount = 4},
    {id = 2455, chance = 830},
    {id = 2666, chance = 5000},
    {id = 2465, chance = 530},
    {id = 5878, chance = 1900},
    {id = 2483, chance = 530},
    {id = 12407, chance = 15400},
    {id = 12439, chance = 8260},
    {id = 12428, chance = 1990, maxCount = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=25
-- name=physical, interval=2000, chance=40, range=7, max=-80, shootEffect=bolt
--]]

monster:register()
