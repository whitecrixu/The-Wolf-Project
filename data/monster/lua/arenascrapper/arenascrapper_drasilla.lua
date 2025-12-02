-- Drasilla
-- Converted from XML

local monster = Game.createMonsterType("Drasilla")
if not monster then return end

monster:name("Drasilla")
monster:nameDescription("drasilla")
monster:health(1320)
monster:maxHealth(1320)
monster:experience(700)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 34})
monster:defense(33)
monster:armor(32)
monster:runHealth(132)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "FCHHHHHHHH!", yell = false},
    {text = "GROOOOAAAAAAAAR!", yell = false},
    {text = "DIRTY LITTLE HUMANS", yell = false},
    {text = "YOU CAN'T KEEP ME HERE FOREVER", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "fire", interval = 6000, chance = 60, minDamage = -100, maxDamage = -180, length = 8, spread = 3},
    {name = "fire", interval = 3000, chance = 50, minDamage = -70, maxDamage = -115, range = 10, radius = 5}
})

monster:register()
