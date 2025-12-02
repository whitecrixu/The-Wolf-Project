-- Bretzecutioner
-- Converted from XML

local monster = Game.createMonsterType("Bretzecutioner")
if not monster then return end

monster:name("Bretzecutioner")
monster:nameDescription("Bretzecutioner")
monster:health(5600)
monster:maxHealth(5600)
monster:experience(3700)
monster:speed(270)
monster:race(RACE_UNDEAD)
monster:corpseId(6320)
monster:outfit({lookType = 236})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -3},
    {type = COMBAT_ICEDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "COME HERE AND DIE!", yell = false},
    {text = "Destructiooooon!", yell = false},
    {text = "It's a good day to destroy!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 98},
    {id = 2666, chance = 100000},
    {id = 6500, chance = 64000},
    {id = 7368, chance = 100000, maxCount = 10},
    {id = 2489, chance = 68000},
    {id = 2150, chance = 28000, maxCount = 5},
    {id = 2146, chance = 40000, maxCount = 5},
    {id = 2145, chance = 32000, maxCount = 5},
    {id = 11215, chance = 100000},
    {id = 7452, chance = 32000},
    {id = 2152, chance = 100000, maxCount = 8},
    {id = 2393, chance = 24000},
    {id = 7591, chance = 44000, maxCount = 3},
    {id = 7590, chance = 44000, maxCount = 3},
    {id = 8472, chance = 44000, maxCount = 3},
    {id = 7632, chance = 48000},
    {id = 7633, chance = 48000},
    {id = 2645, chance = 4000},
    {id = 7427, chance = 24000},
    {id = 7419, chance = 12000},
    {id = 2125, chance = 24000},
    {id = 2521, chance = 16000},
    {id = 6300, chance = 100000},
    {id = 5741, chance = 4000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -514},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -200, range = 7}
})

monster:register()
