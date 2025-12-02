-- Swampling
-- Converted from XML

local monster = Game.createMonsterType("Swampling")
if not monster then return end

monster:name("Swampling")
monster:nameDescription("a swampling")
monster:health(80)
monster:maxHealth(80)
monster:experience(45)
monster:speed(190)
monster:race(RACE_VENOM)
monster:corpseId(19902)
monster:outfit({lookType = 535})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Gnark!", yell = false},
    {text = "Crrrck!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 12},
    {id = 2787, chance = 8980, maxCount = 5},
    {id = 20102, chance = 12610},
    {id = 20103, chance = 8270},
    {id = 20101, chance = 18670},
    {id = 2120, chance = 4540}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "earth", interval = 2000, chance = 15, minDamage = -2, maxDamage = -15, range = 7},
    {name = "speed", interval = 2000, chance = 15, length = 3, spread = 2}
})

monster:register()
