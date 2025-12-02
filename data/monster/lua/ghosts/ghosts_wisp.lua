-- Wisp
-- Converted from XML

local monster = Game.createMonsterType("Wisp")
if not monster then return end

monster:name("Wisp")
monster:nameDescription("a wisp")
monster:health(115)
monster:maxHealth(115)
monster:experience(0)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(6324)
monster:outfit({lookType = 294})
monster:defense(10)
monster:armor(10)
monster:runHealth(11)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 90},
    {type = COMBAT_PHYSICALDAMAGE, percent = 65}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Crackle!", yell = false},
    {text = "Tsshh", yell = false}
})

-- Loot
monster:loot({
    {id = 10521, chance = 220}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -3, maxDamage = -7}
})

monster:register()
