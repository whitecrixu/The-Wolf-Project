-- Quara Predator Scout
-- Converted from XML

local monster = Game.createMonsterType("Quara Predator Scout")
if not monster then return end

monster:name("Quara Predator Scout")
monster:nameDescription("a quara predator scout")
monster:health(890)
monster:maxHealth(890)
monster:experience(400)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(6067)
monster:outfit({lookType = 20})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Gnarrr!", yell = false},
    {text = "Tcharrr!", yell = false},
    {text = "Rrrah!", yell = false},
    {text = "Rraaar!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 60},
    {id = 2148, chance = 48000, maxCount = 69},
    {id = 12447, chance = 10150},
    {id = 2387, chance = 5800},
    {id = 2483, chance = 8000},
    {id = 2145, chance = 5520, maxCount = 2},
    {id = 5895, chance = 980},
    {id = 2377, chance = 2320},
    {id = 8911, chance = 800},
    {id = 2670, chance = 4700, maxCount = 5}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -115}
})

monster:register()
