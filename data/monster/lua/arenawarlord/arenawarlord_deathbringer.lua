-- Deathbringer
-- Converted from XML

local monster = Game.createMonsterType("Deathbringer")
if not monster then return end

monster:name("Deathbringer")
monster:nameDescription("deathbringer")
monster:health(10000)
monster:maxHealth(10000)
monster:experience(5100)
monster:speed(300)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 231})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "YOU FOOLS WILL PAY!", yell = true},
    {text = "YOU ALL WILL DIE!!", yell = true},
    {text = "DEATH, DESTRUCTION!", yell = true},
    {text = "I will eat your soul!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -205},
    {name = "fire", interval = 1000, chance = 10, minDamage = -80, maxDamage = -120, range = 7, radius = 4},
    {name = "fire", interval = 3000, chance = 17, minDamage = -300, maxDamage = -450, length = 8, spread = 3},
    {name = "poison", interval = 2000, chance = 12, minDamage = -300, maxDamage = -450, length = 8, spread = 3},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -80, maxDamage = -100, radius = 6},
    {name = "lifedrain", interval = 3000, chance = 25, minDamage = -80, maxDamage = -150, range = 7}
})

monster:register()
