-- Deepling Brawler
-- Converted from XML

local monster = Game.createMonsterType("Deepling Brawler")
if not monster then return end

monster:name("Deepling Brawler")
monster:nameDescription("a deepling brawler")
monster:health(380)
monster:maxHealth(380)
monster:experience(260)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(13840)
monster:outfit({lookType = 470})
monster:defense(15)
monster:armor(15)
monster:runHealth(38)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 61000, maxCount = 44},
    {id = 15430, chance = 14500},
    {id = 13870, chance = 6600},
    {id = 13838, chance = 2940},
    {id = 13870, chance = 6620},
    {id = 5895, chance = 740},
    {id = 2667, chance = 19120, maxCount = 3}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "drown", interval = 2000, chance = 15, minDamage = -60, maxDamage = -120, range = 7}
})

monster:register()
