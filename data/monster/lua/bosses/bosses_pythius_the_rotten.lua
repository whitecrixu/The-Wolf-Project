-- Pythius The Rotten
-- Converted from XML

local monster = Game.createMonsterType("Pythius The Rotten")
if not monster then return end

monster:name("Pythius The Rotten")
monster:nameDescription("a Pythius The Rotten")
monster:health(9500)
monster:maxHealth(9500)
monster:experience(7000)
monster:speed(350)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 231})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "YOU'LL NEVER GET MY TREASURE!", yell = true},
    {text = "MINIONS, MEET YOUR NEW BROTHER!", yell = true},
    {text = "YOU WILL REGRET THAT YOU ARE BORN!", yell = true},
    {text = "YOU MADE A HUGE WASTE!", yell = true},
    {text = "I SENSE LIFE", yell = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1950, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "melee", interval = 2000, chance = 16, minDamage = 0, maxDamage = -795},
    {name = "physical", interval = 2800, chance = 15, maxDamage = -400, range = 7},
    {name = "poison", interval = 2000, chance = 17, minDamage = -55, maxDamage = -155, range = 7, radius = 4},
    {name = "earth", interval = 2500, chance = 14, minDamage = -333, maxDamage = -413, length = 8, spread = 3},
    {name = "death", interval = 2000, chance = 18, minDamage = -165, maxDamage = -200, length = 7},
    {name = "manadrain", interval = 2500, chance = 22, minDamage = -85, maxDamage = -110, range = 8},
    {name = "drowncondition", interval = 1000, chance = 45, length = 8, spread = 3}
})

monster:register()
