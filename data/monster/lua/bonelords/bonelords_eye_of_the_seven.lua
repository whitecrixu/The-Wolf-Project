-- Eye of the Seven
-- Converted from XML

local monster = Game.createMonsterType("Eye of the Seven")
if not monster then return end

monster:name("Eye of the Seven")
monster:nameDescription("an eye of the seven")
monster:health(1)
monster:maxHealth(1)
monster:experience(0)
monster:speed(0)
monster:race(RACE_VENOM)
monster:outfit({lookTypeEx = 1560})
monster:defense(1)
monster:armor(1)

-- Flags
monster:attackable(false)
monster:hostile(true)
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
    {condition = CONDITION_OUTFIT, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240},
    {name = "lifedrain", interval = 1000, chance = 9, maxDamage = -500, range = 6}
})

monster:register()
