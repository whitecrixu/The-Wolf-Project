-- Swarmer
-- Converted from XML

local monster = Game.createMonsterType("Swarmer")
if not monster then return end

monster:name("Swarmer")
monster:nameDescription("a swarmer")
monster:health(460)
monster:maxHealth(460)
monster:experience(350)
monster:speed(190)
monster:race(RACE_VENOM)
monster:corpseId(15388)
monster:outfit({lookType = 460})
monster:defense(10)
monster:armor(10)
monster:runHealth(46)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 75},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Flzlzlzlzlzlzlz!", yell = false},
    {text = "Rzlrzlrzlrzlrzlrzl!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 75},
    {id = 15479, chance = 15300},
    {id = 15486, chance = 12500},
    {id = 2149, chance = 920},
    {id = 2438, chance = 450}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -82},
    {name = "lifedrain", interval = 2000, chance = 20, minDamage = -50, maxDamage = -110, range = 7}
})

monster:register()
