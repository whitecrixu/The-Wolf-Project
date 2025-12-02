-- Glitterscale
-- Converted from XML

local monster = Game.createMonsterType("Glitterscale")
if not monster then return end

monster:name("Glitterscale")
monster:nameDescription("glitterscale")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(700)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(5973)
monster:outfit({lookType = 34})
monster:defense(18)
monster:armor(25)
monster:runHealth(100)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "fire", interval = 2000, chance = 8, minDamage = -90, maxDamage = -180, length = 8, spread = 3},
    {name = "fire", interval = 2000, chance = 12, minDamage = -70, maxDamage = -120, range = 7, radius = 4}
})

monster:register()
