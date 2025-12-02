-- Hacker
-- Converted from XML

local monster = Game.createMonsterType("Hacker")
if not monster then return end

monster:name("Hacker")
monster:nameDescription("a Hacker")
monster:health(430)
monster:maxHealth(430)
monster:experience(45)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(5980)
monster:outfit({lookType = 8})
monster:defense(12)
monster:armor(15)
monster:runHealth(43)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Voices
monster:voices({
    {text = "Feel the wrath of me dos attack!", yell = false},
    {text = "You're next!", yell = false},
    {text = "Gimme free gold!", yell = false},
    {text = "Me sooo smart!", yell = false},
    {text = "Me have a cheating link for you!", yell = false},
    {text = "Me is GM!", yell = false},
    {text = "Gimme your password!", yell = false},
    {text = "Me just need the code!", yell = false},
    {text = "Me not stink!", yell = false},
    {text = "Me other char is highlevel!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 12},
    {id = 2671, chance = 50000},
    {id = 6570, chance = 5538},
    {id = 6571, chance = 1538},
    {id = 2044, chance = 6666},
    {id = 2381, chance = 10000},
    {id = 2386, chance = 10000},
    {id = 2391, chance = 5000},
    {id = 2378, chance = 5000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -75}
})

monster:register()
