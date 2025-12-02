-- Lost Berserker
-- Converted from XML

local monster = Game.createMonsterType("Lost Berserker")
if not monster then return end

monster:name("Lost Berserker")
monster:nameDescription("a lost berserker")
monster:health(5900)
monster:maxHealth(5900)
monster:experience(4400)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(17416)
monster:outfit({lookType = 496})
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
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 40}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Kill! Kill! Kill!", yell = false},
    {text = "Death! Death! Death!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2152, chance = 100000, maxCount = 9},
    {id = 2789, chance = 15190, maxCount = 2},
    {id = 18417, chance = 7540, maxCount = 2},
    {id = 9970, chance = 7970, maxCount = 2},
    {id = 18436, chance = 8210, maxCount = 10},
    {id = 7591, chance = 13650},
    {id = 7590, chance = 13650},
    {id = 18421, chance = 6870},
    {id = 5880, chance = 8490},
    {id = 2114, chance = 3920},
    {id = 18418, chance = 4610},
    {id = 18414, chance = 3500},
    {id = 13757, chance = 2050},
    {id = 2529, chance = 640},
    {id = 5904, chance = 720},
    {id = 7452, chance = 810},
    {id = 2515, chance = 1400},
    {id = 2213, chance = 2280},
    {id = 2430, chance = 2070},
    {id = 11339, chance = 930},
    {id = 7427, chance = 550},
    {id = 2528, chance = 1002},
    {id = 7886, chance = 640},
    {id = 2432, chance = 380},
    {id = 2498, chance = 150}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -191},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -300, range = 7},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -250, range = 7, radius = 3},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -150, maxDamage = -250, radius = 5},
    {name = "speed", interval = 2000, chance = 10, radius = 2},
    {name = "drunk", interval = 2000, chance = 10, radius = 4}
})

monster:register()
