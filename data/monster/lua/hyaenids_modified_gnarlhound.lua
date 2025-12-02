-- Modified Gnarlhound
-- Auto-converted from XML

local monster = Game.createMonsterType("Modified Gnarlhound")
if not monster then return end

monster:name("Modified Gnarlhound")
monster:nameDescription("a modified gnarlhound")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(0)
monster:speed(150)
monster:race(RACE_BLOOD)
monster:corpseId(13528)
monster:outfit({lookType = 515})
monster:defense(0)
monster:armor(0)
monster:targetDistance(4)
monster:runHealth(25)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

monster:register()
