-- Clubarc The Plunderer
-- Converted from XML

local monster = Game.createMonsterType("Clubarc The Plunderer")
if not monster then return end

monster:name("Clubarc The Plunderer")
monster:nameDescription("Clubarc The Plunderer")
monster:health(400)
monster:maxHealth(400)
monster:experience(400)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(11254)
monster:outfit({lookType = 342})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 2},
    {type = COMBAT_EARTHDAMAGE, percent = -2}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Orc arga Huummmak!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 58000, maxCount = 78},
    {id = 2666, chance = 24600},
    {id = 2428, chance = 21000},
    {id = 11324, chance = 13000},
    {id = 11338, chance = 6000},
    {id = 2456, chance = 4600},
    {id = 8857, chance = 3070},
    {id = 11113, chance = 1500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130},
    {name = "physical", interval = 2000, chance = 50, maxDamage = -85, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 11, minDamage = -8, maxDamage = -8}
})

monster:register()
