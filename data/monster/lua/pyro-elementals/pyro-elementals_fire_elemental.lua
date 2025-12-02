-- Fire Elemental
-- Converted from XML

local monster = Game.createMonsterType("Fire Elemental")
if not monster then return end

monster:name("Fire Elemental")
monster:nameDescription("a fire elemental")
monster:health(280)
monster:maxHealth(280)
monster:experience(220)
monster:speed(200)
monster:race(RACE_FIRE)
monster:manaCost(690)
monster:corpseId(8964)
monster:outfit({lookType = 49})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "fire", interval = 2000, chance = 20, minDamage = -45, maxDamage = -160, range = 7, radius = 2},
    {name = "firefield", interval = 2000, chance = 25, range = 7, radius = 1}
})

monster:register()
