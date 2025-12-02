-- Manta Ray
-- Converted from XML

local monster = Game.createMonsterType("Manta Ray")
if not monster then return end

monster:name("Manta Ray")
monster:nameDescription("a manta ray")
monster:health(680)
monster:maxHealth(680)
monster:experience(125)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(15276)
monster:outfit({lookType = 449})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -1},
    {type = COMBAT_PHYSICALDAMAGE, percent = -1},
    {type = COMBAT_ENERGYDAMAGE, percent = 1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Flap flap flap!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 38}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -79},
    {name = "energy", interval = 2000, chance = 10, minDamage = -15, maxDamage = -75, range = 7},
    {name = "energy", interval = 2000, chance = 10, length = 4}
})

monster:register()
