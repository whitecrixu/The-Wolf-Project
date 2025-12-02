-- Ladybug
-- Converted from XML

local monster = Game.createMonsterType("Ladybug")
if not monster then return end

monster:name("Ladybug")
monster:nameDescription("a ladybug")
monster:health(255)
monster:maxHealth(255)
monster:experience(70)
monster:speed(200)
monster:race(RACE_VENOM)
monster:corpseId(15272)
monster:outfit({lookType = 448})
monster:defense(10)
monster:armor(10)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Nee pah!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 65000, maxCount = 40}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -10},
    {name = "earth", interval = 2000, chance = 15, maxDamage = -20},
    {name = "earth", interval = 2000, chance = 15, maxDamage = -20, range = 7}
})

monster:register()
