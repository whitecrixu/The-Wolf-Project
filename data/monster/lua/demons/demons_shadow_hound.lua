-- Shadow Hound
-- Converted from XML

local monster = Game.createMonsterType("Shadow Hound")
if not monster then return end

monster:name("Shadow Hound")
monster:nameDescription("a shadow hound")
monster:health(555)
monster:maxHealth(555)
monster:experience(600)
monster:speed(360)
monster:race(RACE_BLOOD)
monster:corpseId(9923)
monster:outfit({lookType = 322})
monster:defense(55)
monster:armor(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 30},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Grrrr!", yell = true}
})

-- Loot
monster:loot({
    {id = 10531, chance = 8333}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -160},
    {name = "fireball", interval = 2000, chance = 24, minDamage = -60, maxDamage = -160},
    {name = "soulfire", interval = 2000, chance = 14}
})

monster:register()
