-- The Keeper
-- Converted from XML

local monster = Game.createMonsterType("The Keeper")
if not monster then return end

monster:name("The Keeper")
monster:nameDescription("The Keeper")
monster:health(40000)
monster:maxHealth(40000)
monster:experience(3205)
monster:speed(290)
monster:race(RACE_VENOM)
monster:corpseId(12316)
monster:outfit({lookType = 220})
monster:defense(35)
monster:armor(35)
monster:runHealth(4000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -250},
    {name = "speed", interval = 4000, chance = 20, range = 7},
    {name = "earth", interval = 2000, chance = 20, minDamage = -80, maxDamage = -300, range = 7},
    {name = "lifedrain", interval = 2000, chance = 10, minDamage = -200, maxDamage = -500, length = 8},
    {name = "outfit", interval = 2000, chance = 1, range = 7},
    {name = "earth", interval = 2000, chance = 10, minDamage = -200, maxDamage = -500, length = 8, spread = 3}
})

monster:register()
