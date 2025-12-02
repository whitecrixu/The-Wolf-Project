-- Fish
-- Converted from XML

local monster = Game.createMonsterType("Fish")
if not monster then return end

monster:name("Fish")
monster:nameDescription("a fish")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(2667)
monster:outfit({lookType = 455})
monster:defense(5)
monster:armor(5)
monster:runHealth(2)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blib!", yell = false},
    {text = "Blub!", yell = false}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -5}
})

monster:register()
