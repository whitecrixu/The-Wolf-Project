-- Mooh'Tah Master
-- Auto-converted from XML

local monster = Game.createMonsterType("Mooh'Tah Master")
if not monster then return end

monster:name("Mooh'Tah Master")
monster:nameDescription("Mooh'Tah Master")
monster:health(185)
monster:maxHealth(185)
monster:experience(0)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(23462)
monster:outfit({lookType = 611})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

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
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Kirll Karrrl!", yell = false},
    {text = "Kaplar!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-400
-- name=energy beam, interval=2000, chance=10, range=1, max=-500
-- name=berserk, interval=2000, chance=10, range=1, max=-100
--]]

monster:register()
