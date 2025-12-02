-- Magic Pillar
-- Auto-converted from XML

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
monster:runHealth(100)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:pushable(false)
monster:canPushCreatures(true)
monster:hiddenHealth(true)

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
    {condition = CONDITION_MANADRAIN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Summons
monster:summons({
    {name = "Demon", chance = 7, interval = 2000, max = 3},
})

monster:register()
