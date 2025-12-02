-- Gaz'haragoth
-- Converted from XML

local monster = Game.createMonsterType("Gaz'haragoth")
if not monster then return end

monster:name("Gaz'haragoth")
monster:nameDescription("a gaz'haragoth")
monster:health(350000)
monster:maxHealth(350000)
monster:experience(1000000)
monster:speed(400)
monster:race(RACE_UNDEAD)
monster:corpseId(22562)
monster:outfit({lookType = 591, lookBody = 94, lookLegs = 79, lookFeet = 79})
monster:defense(65)
monster:armor(55)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 50},
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_PHYSICALDAMAGE, percent = 50},
    {type = COMBAT_HOLYDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 50}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Gaz'haragoth begins to channel DEATH AND DOOM into the area! RUN!", yell = true},
    {text = "Minions! Follow my call!", yell = true},
    {text = "I've beaten tougher demons then you even know", yell = true},
    {text = "You puny humans will be my snacks!", yell = true},
    {text = "Gaz'haragoth calls down: DEATH AND DOOM!", yell = true}
})

-- Loot
monster:loot({
    {id = 2152, chance = 10000, maxCount = 50},
    {id = 2160, chance = 10000, maxCount = 6},
    {id = 18418, chance = 10000, maxCount = 15},
    {id = 7368, chance = 10000, maxCount = 100},
    {id = 22598, chance = 10000, maxCount = 3},
    {id = 6500, chance = 10000, maxCount = 2},
    {id = 8473, chance = 10000, maxCount = 100},
    {id = 7590, chance = 10000, maxCount = 100},
    {id = 8472, chance = 10000, maxCount = 100},
    {id = 22397, chance = 10000, maxCount = 3},
    {id = 18415, chance = 10000, maxCount = 5},
    {id = 22396, chance = 10000, maxCount = 14},
    {id = 2158, chance = 10000, maxCount = 2},
    {id = 18416, chance = 10000, maxCount = 10},
    {id = 18414, chance = 10000, maxCount = 15},
    {id = 6529, chance = 6000},
    {id = 22612, chance = 6000},
    {id = 5914, chance = 6000},
    {id = 5911, chance = 6000},
    {id = 22610, chance = 6000},
    {id = 7899, chance = 6000},
    {id = 7632, chance = 6000},
    {id = 5954, chance = 6000},
    {id = 22608, chance = 6000},
    {id = 2195, chance = 6000},
    {id = 2168, chance = 6000},
    {id = 22614, chance = 6000},
    {id = 22613, chance = 6000},
    {id = 22611, chance = 6000},
    {id = 22398, chance = 5000},
    {id = 22401, chance = 5000},
    {id = 22404, chance = 5000},
    {id = 22407, chance = 5000},
    {id = 22413, chance = 5000},
    {id = 22410, chance = 5000},
    {id = 22416, chance = 5000},
    {id = 22419, chance = 5000},
    {id = 22422, chance = 5000},
    {id = 22399, chance = 5000},
    {id = 22402, chance = 5000},
    {id = 22405, chance = 4000},
    {id = 22408, chance = 4000},
    {id = 22414, chance = 4000},
    {id = 22411, chance = 4000},
    {id = 22417, chance = 4000},
    {id = 22420, chance = 4000},
    {id = 22423, chance = 4000},
    {id = 22400, chance = 4000},
    {id = 22403, chance = 3000},
    {id = 22406, chance = 3000},
    {id = 22409, chance = 3000},
    {id = 22415, chance = 3000},
    {id = 22412, chance = 3000},
    {id = 22418, chance = 3000},
    {id = 22421, chance = 3000},
    {id = 22424, chance = 3000},
    {id = 11262, chance = 6000},
    {id = 11261, chance = 6000},
    {id = 11260, chance = 6000},
    {id = 11259, chance = 6000},
    {id = 11258, chance = 6000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5000},
    {name = "ice", interval = 3000, chance = 35, minDamage = -900, maxDamage = -1100, range = 7, radius = 7},
    {name = "melee", interval = 1800, chance = 40, minDamage = 0, maxDamage = -1000},
    {name = "fire", interval = 3000, chance = 30, minDamage = -4000, maxDamage = -6000, length = 8},
    {name = "physical", interval = 2500, chance = 20, minDamage = -200, maxDamage = -480, range = 7, radius = 5}
})

monster:register()
