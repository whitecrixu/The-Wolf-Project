-- Iron Servant
-- Converted from XML

local monster = Game.createMonsterType("Iron Servant")
if not monster then return end

monster:name("Iron Servant")
monster:nameDescription("an iron servant")
monster:health(350)
monster:maxHealth(350)
monster:experience(210)
monster:speed(190)
monster:race(RACE_ENERGY)
monster:corpseId(13486)
monster:outfit({lookType = 395})
monster:defense(15)
monster:armor(15)
monster:runHealth(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Error. LOAD 'PROGRAM", yell = false},
    {text = "8,1", yell = false},
    {text = "Remain. Obedient.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 82000, maxCount = 55},
    {id = 9690, chance = 4840},
    {id = 9808, chance = 200},
    {id = 8704, chance = 1980},
    {id = 13758, chance = 310},
    {id = 2381, chance = 1000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50},
    {name = "physical", interval = 2000, chance = 15, maxDamage = -60, range = 7},
    {name = "drunk", interval = 2000, chance = 10, range = 7}
})

monster:register()
