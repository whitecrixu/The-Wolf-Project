-- Deathslicer
-- Converted from XML

local monster = Game.createMonsterType("Deathslicer")
if not monster then return end

monster:name("Deathslicer")
monster:nameDescription("a deathslicer")
monster:health(2000)
monster:maxHealth(2000)
monster:experience(320)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(2253)
monster:outfit({lookType = 102})
monster:defense(199)
monster:armor(199)
monster:runHealth(200)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {type = COMBAT_MANADRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240},
    {name = "energy", interval = 2000, chance = 25, minDamage = -200, maxDamage = -400, radius = 2}
})

monster:register()
