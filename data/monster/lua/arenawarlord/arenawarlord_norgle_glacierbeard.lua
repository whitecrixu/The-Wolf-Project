-- Norgle Glacierbeard
-- Converted from XML

local monster = Game.createMonsterType("Norgle Glacierbeard")
if not monster then return end

monster:name("Norgle Glacierbeard")
monster:nameDescription("norgle glacierbeard")
monster:health(4300)
monster:maxHealth(4300)
monster:experience(2100)
monster:speed(195)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 257})
monster:defense(27)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -15},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I'll extinguish you warmbloods.", yell = false},
    {text = "REVENGE!", yell = false},
    {text = "Far too hot.", yell = false},
    {text = "DISGUSTING WARMBLOODS!", yell = false},
    {text = "Revenge is sweetest when served cold.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130}
})

monster:register()
