-- Sandstone Scorpion
-- Converted from XML

local monster = Game.createMonsterType("Sandstone Scorpion")
if not monster then return end

monster:name("Sandstone Scorpion")
monster:nameDescription("a sandstone scorpion")
monster:health(900)
monster:maxHealth(900)
monster:experience(680)
monster:speed(230)
monster:race(RACE_UNDEAD)
monster:corpseId(13501)
monster:outfit({lookType = 398})
monster:defense(40)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = -1},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "*rattle*", yell = false},
    {text = "*tak tak*", yell = false},
    {text = "*tak tak tak*", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 90000, maxCount = 128},
    {id = 2152, chance = 11111, maxCount = 2},
    {id = 2149, chance = 9900, maxCount = 2},
    {id = 2439, chance = 6250},
    {id = 2457, chance = 5000},
    {id = 2529, chance = 1724},
    {id = 13535, chance = 280}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -115}
})

monster:register()
