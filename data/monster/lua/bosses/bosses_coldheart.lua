-- Coldheart
-- Converted from XML

local monster = Game.createMonsterType("Coldheart")
if not monster then return end

monster:name("Coldheart")
monster:nameDescription("Coldheart")
monster:health(7000)
monster:maxHealth(7000)
monster:experience(3500)
monster:speed(195)
monster:race(RACE_UNDEAD)
monster:corpseId(7282)
monster:outfit({lookType = 261})
monster:defense(26)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -140},
    {name = "ice", interval = 2000, chance = 25, maxDamage = -710, length = 8}
})

monster:register()
