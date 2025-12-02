-- Killer Caiman
-- Converted from XML

local monster = Game.createMonsterType("Killer Caiman")
if not monster then return end

monster:name("Killer Caiman")
monster:nameDescription("a killer caiman")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(900)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:corpseId(11430)
monster:outfit({lookType = 358})
monster:defense(35)
monster:armor(35)
monster:runHealth(150)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 80},
    {id = 11196, chance = 25430},
    {id = 2671, chance = 40100},
    {id = 7632, chance = 1130},
    {id = 11245, chance = 4800, maxCount = 2},
    {id = 2149, chance = 10150, maxCount = 5},
    {id = 3982, chance = 510},
    {id = 2425, chance = 4975}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -110}
})

monster:register()
