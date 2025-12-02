-- War Wolf
-- Converted from XML

local monster = Game.createMonsterType("War Wolf")
if not monster then return end

monster:name("War Wolf")
monster:nameDescription("a war wolf")
monster:health(140)
monster:maxHealth(140)
monster:experience(55)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6009)
monster:outfit({lookType = 3})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true}
})

-- Voices
monster:voices({
    {text = "Grrrrrrr", yell = false},
    {text = "Yoooohhuuuu!", yell = true}
})

-- Loot
monster:loot({
    {id = 2671, chance = 35000, maxCount = 2},
    {id = 5897, chance = 710},
    {id = 3976, chance = 40},
    {id = 11235, chance = 5230}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -60}
})

monster:register()
