-- Northern Pike
-- Converted from XML

local monster = Game.createMonsterType("Northern Pike")
if not monster then return end

monster:name("Northern Pike")
monster:nameDescription("a northern pike")
monster:health(95)
monster:maxHealth(95)
monster:experience(0)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(2669)
monster:outfit({lookType = 454})
monster:defense(5)
monster:armor(5)
monster:runHealth(9)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true}
})

-- Voices
monster:voices({
    {text = "Blub!", yell = false}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -19}
})

monster:register()
