-- Rift Scythe
-- Converted from XML

local monster = Game.createMonsterType("Rift Scythe")
if not monster then return end

monster:name("Rift Scythe")
monster:nameDescription("a rift scythe")
monster:health(3600)
monster:maxHealth(3600)
monster:experience(2000)
monster:speed(370)
monster:race(RACE_UNDEAD)
monster:outfit({lookType = 300})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = 60},
    {type = COMBAT_FIREDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -270},
    {name = "death", interval = 2000, chance = 60, maxDamage = -200, range = 7},
    {name = "lifedrain", interval = 2000, chance = 50, maxDamage = -600, length = 7},
    {name = "physical", interval = 2000, chance = 40, maxDamage = -395, radius = 4},
    {name = "physical", interval = 3000, chance = 60, maxDamage = -300, length = 7, spread = 3}
})

monster:register()
