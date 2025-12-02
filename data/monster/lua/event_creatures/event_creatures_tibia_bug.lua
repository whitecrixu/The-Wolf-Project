-- Tibia Bug
-- Converted from XML

local monster = Game.createMonsterType("Tibia Bug")
if not monster then return end

monster:name("Tibia Bug")
monster:nameDescription("a tibia bug")
monster:health(270)
monster:maxHealth(270)
monster:experience(50)
monster:speed(240)
monster:race(RACE_VENOM)
monster:manaCost(250)
monster:corpseId(5990)
monster:outfit({lookType = 45})
monster:defense(15)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "My father was a year 2k bug.", yell = false},
    {text = "Psst, I'll make you rich.", yell = false},
    {text = "You are bugged ... by me!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 11},
    {id = 6570, chance = 5538},
    {id = 6571, chance = 1538}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -63},
    {name = "energy", interval = 1000, chance = 13, minDamage = -5, maxDamage = -35, length = 4}
})

monster:register()
