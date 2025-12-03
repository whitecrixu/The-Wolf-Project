-- Aggresive Wolf
-- Custom monster for The Wolf Project

local monster = Game.createMonsterType("Aggresive Wolf")
if not monster then return end

monster:name("Aggresive Wolf")
monster:nameDescription("an aggresive wolf")
monster:health(150)
monster:maxHealth(150)
monster:experience(85)
monster:speed(120)
monster:race(RACE_BLOOD)
monster:corpseId(5968)
monster:outfit({lookType = 27})
monster:defense(15)
monster:armor(8)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(false)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 0},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "GRRRRRR!", yell = true},
    {text = "Yoooohuuuu!", yell = false},
    {text = "*growls*", yell = false}
})

-- Loot
monster:loot({
    {id = 2666, chance = 60000, maxCount = 3},
    {id = 5897, chance = 5000},
    {id = 3031, chance = 30000, maxCount = 15}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -65}
})

monster:register()
