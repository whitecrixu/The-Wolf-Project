-- Deepling Elite
-- Converted from XML

local monster = Game.createMonsterType("Deepling Elite")
if not monster then return end

monster:name("Deepling Elite")
monster:nameDescription("a deepling elite")
monster:health(3200)
monster:maxHealth(3200)
monster:experience(3000)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(15176)
monster:outfit({lookType = 441})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 86},
    {id = 15425, chance = 25000},
    {id = 7591, chance = 25000},
    {id = 13870, chance = 25000},
    {id = 7590, chance = 24000},
    {id = 15488, chance = 25000},
    {id = 15452, chance = 19000},
    {id = 15426, chance = 21700},
    {id = 15649, chance = 24000, maxCount = 5},
    {id = 2168, chance = 5360},
    {id = 2149, chance = 6290, maxCount = 2},
    {id = 13838, chance = 3380},
    {id = 5895, chance = 2000},
    {id = 15453, chance = 1234},
    {id = 15451, chance = 640}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -170},
    {name = "physical", interval = 2000, chance = 20, maxDamage = -225, range = 7}
})

monster:register()
