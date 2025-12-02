-- Lost Husher
-- Converted from XML

local monster = Game.createMonsterType("Lost Husher")
if not monster then return end

monster:name("Lost Husher")
monster:nameDescription("a lost husher")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(19964)
monster:outfit({lookType = 537})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Arr far zwar!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2152, chance = 58670, maxCount = 2},
    {id = 2789, chance = 14920, maxCount = 2},
    {id = 20135, chance = 8510},
    {id = 7588, chance = 11050, maxCount = 3},
    {id = 7590, chance = 10770, maxCount = 2},
    {id = 9970, chance = 9780},
    {id = 20137, chance = 8560},
    {id = 20109, chance = 8180},
    {id = 20110, chance = 8510},
    {id = 20128, chance = 9280},
    {id = 13757, chance = 10930},
    {id = 20129, chance = 12320},
    {id = 20127, chance = 8950},
    {id = 20134, chance = 15580},
    {id = 20126, chance = 11330},
    {id = 11339, chance = 500},
    {id = 2215, chance = 2870},
    {id = 2515, chance = 830},
    {id = 7750, chance = 770},
    {id = 7452, chance = 50},
    {id = 2528, chance = 440},
    {id = 20109, chance = 770},
    {id = 2436, chance = 280},
    {id = 7886, chance = 880},
    {id = 2432, chance = 330},
    {id = 7885, chance = 50}
})

-- Attacks
monster:attacks({
    {name = "death", interval = 2000, chance = 10, minDamage = -150, maxDamage = -300, length = 6},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -150, maxDamage = -250, radius = 5},
    {name = "death", interval = 2000, chance = 10, minDamage = -150, maxDamage = -200, range = 7},
    {name = "earth", interval = 2000, chance = 10, minDamage = -150, maxDamage = -250, range = 7, radius = 2},
    {name = "drunk", interval = 2000, chance = 10, radius = 4}
})

monster:register()
