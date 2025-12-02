-- Webster
-- Converted from XML

local monster = Game.createMonsterType("Webster")
if not monster then return end

monster:name("Webster")
monster:nameDescription("a webster")
monster:health(1750)
monster:maxHealth(1750)
monster:experience(1200)
monster:speed(290)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 263})
monster:defense(34)
monster:armor(29)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You are lost!", yell = false},
    {text = "Come my little morsel.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    {name = "speed", interval = 3500, chance = 65, radius = 1},
    {name = "energy", interval = 3000, chance = 75, minDamage = -13, maxDamage = -80, range = 7}
})

monster:register()
