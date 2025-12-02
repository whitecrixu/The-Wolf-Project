-- Aggresive Wolf
-- Auto-converted from XML

local monster = Game.createMonsterType("Aggresive Wolf")
if not monster then return end

monster:name("Aggresive Wolf")
monster:nameDescription("an aggressive wolf")
monster:health(40)
monster:maxHealth(40)
monster:experience(25)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:manaCost(300)
monster:corpseId(5968)
monster:outfit({lookType = 27})
monster:defense(8)
monster:armor(8)
monster:runHealth(5)

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
    {type = COMBAT_EARTHDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Voices
monster:voices({
    {text = "Grrrrr!", yell = false},
    {text = "GROWL!", yell = false},
})

-- Loot
monster:loot({
    {id = 2666, chance = 65000, maxCount = 2},
    {id = 5897, chance = 1500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=15, attack=25
--]]

monster:register()
