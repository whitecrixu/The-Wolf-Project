-- Modified Gnarlhound
-- Converted from XML

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
monster:runHealth(150)

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
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300}
})

monster:register()
