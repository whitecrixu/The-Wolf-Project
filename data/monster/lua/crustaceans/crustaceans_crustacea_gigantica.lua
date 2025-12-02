-- Crustacea Gigantica
-- Converted from XML

local monster = Game.createMonsterType("Crustacea Gigantica")
if not monster then return end

monster:name("Crustacea Gigantica")
monster:nameDescription("a crustacea gigantica")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(290)
monster:race(RACE_BLOOD)
monster:corpseId(13331)
monster:outfit({lookType = 383})
monster:defense(45)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 12},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Chrchrchr", yell = true},
    {text = "Klonklonk", yell = true},
    {text = "Chrrrrr", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 43},
    {id = 7589, chance = 14285},
    {id = 13304, chance = 5000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -600}
})

monster:register()
