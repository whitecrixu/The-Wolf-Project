-- Magic Pillar
-- Converted from XML

local monster = Game.createMonsterType("Magic Pillar")
if not monster then return end

monster:name("Magic Pillar")
monster:nameDescription("a magic pillar")
monster:health(9950)
monster:maxHealth(9950)
monster:experience(0)
monster:speed(0)
monster:race(RACE_UNDEAD)
monster:corpseId(1740)
monster:defense(1)
monster:armor(1)
monster:runHealth(995)

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
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1990}
})

monster:register()
