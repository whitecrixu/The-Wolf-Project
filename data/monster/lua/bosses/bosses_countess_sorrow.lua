-- Countess Sorrow
-- Converted from XML

local monster = Game.createMonsterType("Countess Sorrow")
if not monster then return end

monster:name("Countess Sorrow")
monster:nameDescription("a countess sorrow")
monster:health(7200)
monster:maxHealth(7200)
monster:experience(5150)
monster:speed(250)
monster:race(RACE_UNDEAD)
monster:corpseId(6344)
monster:outfit({lookType = 241, lookHead = 20})
monster:defense(20)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 6536, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -160},
    {name = "poison", interval = 1000, chance = 10, minDamage = -150, maxDamage = -350, range = 7, radius = 4},
    {name = "poisonfield", interval = 1000, chance = 17, range = 7, radius = 3},
    {name = "manadrain", interval = 1000, chance = 25, minDamage = -100, maxDamage = -400, range = 7}
})

monster:register()
