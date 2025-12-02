-- Hell Hole
-- Auto-converted from XML

local monster = Game.createMonsterType("Hell Hole")
if not monster then return end

monster:name("Hell Hole")
monster:nameDescription("a hell hole")
monster:health(100)
monster:maxHealth(100)
monster:experience(0)
monster:speed(0)
monster:race(RACE_UNDEAD)
monster:outfit({lookTypeEx = 389})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:pushable(false)
monster:canPushCreatures(true)
monster:hiddenHealth(true)
monster:staticAttackChance(100)

-- Immunities
monster:immunities({
    {condition = CONDITION_BLEEDING, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_DAZZLED, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Summons
monster:summons({
    {name = "Deathspawn", chance = 25, interval = 2000, max = 1},
})

monster:register()
