-- Deepling Worker
-- Converted from XML

local monster = Game.createMonsterType("Deepling Worker")
if not monster then return end

monster:name("Deepling Worker")
monster:nameDescription("a deepling worker")
monster:health(190)
monster:maxHealth(190)
monster:experience(130)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(15497)
monster:outfit({lookType = 470})
monster:defense(10)
monster:armor(10)
monster:runHealth(19)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
    {type = COMBAT_EARTHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Qjell afar gou jey!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 70000, maxCount = 25},
    {id = 15430, chance = 6950},
    {id = 13838, chance = 510},
    {id = 5895, chance = 350},
    {id = 13870, chance = 283},
    {id = 2667, chance = 12020, maxCount = 3},
    {id = 2149, chance = 110, maxCount = 3}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70}
})

monster:register()
