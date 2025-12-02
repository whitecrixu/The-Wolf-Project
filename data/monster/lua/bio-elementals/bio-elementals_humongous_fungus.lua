-- Humongous Fungus
-- Converted from XML

local monster = Game.createMonsterType("Humongous Fungus")
if not monster then return end

monster:name("Humongous Fungus")
monster:nameDescription("a humongous fungus")
monster:health(3400)
monster:maxHealth(3400)
monster:experience(2600)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(18382)
monster:outfit({lookType = 488})
monster:defense(45)
monster:armor(45)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_DEATHDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Munch munch munch!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 100},
    {id = 2148, chance = 60000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 6},
    {id = 18397, chance = 16666, maxCount = 3},
    {id = 5913, chance = 15285},
    {id = 18436, chance = 14285, maxCount = 15},
    {id = 5909, chance = 10000},
    {id = 18433, chance = 10000},
    {id = 7588, chance = 5000, maxCount = 2},
    {id = 7590, chance = 5000, maxCount = 2},
    {id = 7620, chance = 5000, maxCount = 3},
    {id = 7591, chance = 5000, maxCount = 2},
    {id = 7589, chance = 5000, maxCount = 2},
    {id = 5912, chance = 4545},
    {id = 5911, chance = 2941},
    {id = 7887, chance = 2127},
    {id = 7886, chance = 1851},
    {id = 7436, chance = 1265},
    {id = 7885, chance = 1123},
    {id = 7884, chance = 869},
    {id = 18411, chance = 680},
    {id = 18454, chance = 150},
    {id = 18393, chance = 20}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -90, maxDamage = -330},
    {name = "earth", interval = 2000, chance = 15, minDamage = -180, maxDamage = -350, range = 7},
    {name = "poisonfield", interval = 2000, chance = 20, radius = 4},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -500, maxDamage = -1000, length = 8},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -130, maxDamage = -260, length = 5},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -400, maxDamage = -640, range = 7, radius = 3}
})

monster:register()
