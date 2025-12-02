-- Dwarf Soldier
-- Converted from XML

local monster = Game.createMonsterType("Dwarf Soldier")
if not monster then return end

monster:name("Dwarf Soldier")
monster:nameDescription("a dwarf soldier")
monster:health(135)
monster:maxHealth(135)
monster:experience(70)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(360)
monster:corpseId(6014)
monster:outfit({lookType = 71})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Hail Durin!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 28000, maxCount = 12},
    {id = 2543, chance = 40000, maxCount = 7},
    {id = 2787, chance = 40000, maxCount = 3},
    {id = 2554, chance = 10000},
    {id = 2481, chance = 12000},
    {id = 2464, chance = 8000},
    {id = 7363, chance = 4000, maxCount = 3},
    {id = 2378, chance = 2500},
    {id = 2455, chance = 3000},
    {id = 2525, chance = 3000},
    {id = 2208, chance = 120},
    {id = 5880, chance = 300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -60, range = 7}
})

monster:register()
