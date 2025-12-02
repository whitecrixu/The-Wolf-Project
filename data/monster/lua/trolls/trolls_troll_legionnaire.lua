-- Troll Legionnaire
-- Converted from XML

local monster = Game.createMonsterType("Troll Legionnaire")
if not monster then return end

monster:name("Troll Legionnaire")
monster:nameDescription("a troll legionnaire")
monster:health(210)
monster:maxHealth(210)
monster:experience(140)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(5998)
monster:outfit({lookType = 53})
monster:defense(9)
monster:armor(7)
monster:runHealth(21)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Attack!", yell = false},
    {text = "Graaaaar!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 92000, maxCount = 155},
    {id = 2399, chance = 28000, maxCount = 10},
    {id = 10565, chance = 5120},
    {id = 2165, chance = 560}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -35},
    {name = "physical", interval = 2000, chance = 18, maxDamage = -130, range = 6}
})

monster:register()
