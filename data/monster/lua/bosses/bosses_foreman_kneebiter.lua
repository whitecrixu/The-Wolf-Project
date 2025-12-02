-- Foreman Kneebiter
-- Converted from XML

local monster = Game.createMonsterType("Foreman Kneebiter")
if not monster then return end

monster:name("Foreman Kneebiter")
monster:nameDescription("foreman kneebiter")
monster:health(445)
monster:maxHealth(445)
monster:experience(570)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6013)
monster:outfit({lookType = 70})
monster:defense(22)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 90},
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 5880, chance = 2500, maxCount = 2},
    {id = 2148, chance = 90000, maxCount = 100},
    {id = 2513, chance = 6666}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -60, maxDamage = -200}
})

monster:register()
