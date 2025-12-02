-- Spirit of Earth
-- Converted from XML

local monster = Game.createMonsterType("Spirit of Earth")
if not monster then return end

monster:name("Spirit of Earth")
monster:nameDescription("the spirit of earth")
monster:health(1294)
monster:maxHealth(1294)
monster:experience(800)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 67})
monster:defense(32)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_FIREDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Show your strengh ... or perish.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110}
})

monster:register()
