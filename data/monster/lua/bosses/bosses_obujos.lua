-- Obujos
-- Converted from XML

local monster = Game.createMonsterType("Obujos")
if not monster then return end

monster:name("Obujos")
monster:nameDescription("a obujos")
monster:health(90000)
monster:maxHealth(90000)
monster:experience(25000)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(15224)
monster:outfit({lookType = 445})
monster:defense(40)
monster:armor(40)
monster:runHealth(9000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "JN OBU!!", yell = false},
    {text = "QJELL KEJH!!", yell = false}
})

-- Loot
monster:loot({
    {id = 15411, chance = 100000},
    {id = 15404, chance = 14285},
    {id = 15412, chance = 14285}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1200},
    {name = "death", interval = 3000, chance = 23, minDamage = -200, maxDamage = -800, range = 7, radius = 7},
    {name = "manadrain", interval = 3500, chance = 20, minDamage = -200, maxDamage = -600, range = 7, radius = 6},
    {name = "earth", interval = 2000, chance = 25, minDamage = -200, maxDamage = -800, range = 7, radius = 1},
    {name = "ice", interval = 1200, chance = 7, minDamage = -600, maxDamage = -1300, length = 8},
    {name = "lifedrain", interval = 2000, chance = 14, minDamage = -600, maxDamage = -1600, length = 8, spread = 3}
})

monster:register()
