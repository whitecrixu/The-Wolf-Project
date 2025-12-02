-- The Abomination
-- Converted from XML

local monster = Game.createMonsterType("The Abomination")
if not monster then return end

monster:name("The Abomination")
monster:nameDescription("the abomination")
monster:health(38050)
monster:maxHealth(38050)
monster:experience(25000)
monster:speed(340)
monster:race(RACE_VENOM)
monster:corpseId(6532)
monster:outfit({lookType = 238})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blubb", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 10000, maxCount = 3},
    {id = 6500, chance = 2857},
    {id = 5944, chance = 2500}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -210},
    {name = "speed", interval = 1000, chance = 12, radius = 6},
    {name = "earth", interval = 1000, chance = 9, minDamage = -200, maxDamage = -650, radius = 4},
    {name = "lifedrain", interval = 1000, chance = 11, minDamage = -400, maxDamage = -900, radius = 4},
    {name = "physical", interval = 2000, chance = 19, minDamage = -350, maxDamage = -850, length = 7}
})

monster:register()
