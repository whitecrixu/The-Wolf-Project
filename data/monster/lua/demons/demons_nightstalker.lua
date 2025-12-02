-- Nightstalker
-- Converted from XML

local monster = Game.createMonsterType("Nightstalker")
if not monster then return end

monster:name("Nightstalker")
monster:nameDescription("a nightstalker")
monster:health(700)
monster:maxHealth(700)
monster:experience(500)
monster:speed(260)
monster:race(RACE_UNDEAD)
monster:corpseId(9915)
monster:outfit({lookType = 320})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "The sunlight is so depressing.", yell = false},
    {text = "Come with me, my child.", yell = false},
    {text = "I've been in the shadow under your bed last night.", yell = false},
    {text = "You never know what hides in the night.", yell = false},
    {text = "I remember your face - and I know where you sleep.", yell = false},
    {text = "Only the sweetest and cruelest dreams for you, my love.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 10},
    {id = 2804, chance = 4761},
    {id = 7589, chance = 1612},
    {id = 2124, chance = 1030},
    {id = 2200, chance = 847},
    {id = 7407, chance = 318},
    {id = 9942, chance = 127},
    {id = 2195, chance = 121},
    {id = 7427, chance = 121},
    {id = 2171, chance = 121},
    {id = 8870, chance = 520}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -60, maxDamage = -170, range = 7},
    {name = "speed", interval = 2000, chance = 15}
})

monster:register()
