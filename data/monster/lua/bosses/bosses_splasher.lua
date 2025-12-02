-- Splasher
-- Converted from XML

local monster = Game.createMonsterType("Splasher")
if not monster then return end

monster:name("Splasher")
monster:nameDescription("a splasher")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(500)
monster:speed(520)
monster:race(RACE_BLOOD)
monster:manaCost(480)
monster:corpseId(6064)
monster:outfit({lookType = 72})
monster:defense(15)
monster:armor(15)
monster:runHealth(100)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -25},
    {type = COMBAT_EARTHDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Qua hah tsh!", yell = false},
    {text = "Teech tsha tshul!", yell = false},
    {text = "Quara tsha Fach!", yell = false},
    {text = "Tssssha Quara!", yell = false},
    {text = "Blubber.", yell = false},
    {text = "Blup.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1000, chance = 100, minDamage = 0, maxDamage = -169},
    {name = "lifedrain", interval = 2000, chance = 8, minDamage = -162, maxDamage = -228, range = 7},
    {name = "lifedrain", interval = 2000, chance = 7, minDamage = -106, maxDamage = -169, length = 8, spread = 3},
    {name = "ice", interval = 2000, chance = 9, minDamage = -134, maxDamage = -148, length = 8},
    {name = "ice", interval = 2000, chance = 12, minDamage = -101, maxDamage = -149, radius = 3}
})

monster:register()
