-- Blazing Fire Elemental
-- Converted from XML

local monster = Game.createMonsterType("Blazing Fire Elemental")
if not monster then return end

monster:name("Blazing Fire Elemental")
monster:nameDescription("a blazing fire elemental")
monster:health(580)
monster:maxHealth(580)
monster:experience(580)
monster:speed(220)
monster:race(RACE_FIRE)
monster:corpseId(8964)
monster:outfit({lookType = 49})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 10000, maxCount = 40},
    {id = 7840, chance = 5000, maxCount = 4},
    {id = 8299, chance = 2500},
    {id = 10553, chance = 5475}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "fire", interval = 1000, chance = 13, minDamage = -65, maxDamage = -205, radius = 5},
    {name = "fire", interval = 1000, chance = 12, minDamage = -110, maxDamage = -150, range = 7, radius = 5},
    {name = "firefield", interval = 1000, chance = 15, range = 7, radius = 1}
})

monster:register()
