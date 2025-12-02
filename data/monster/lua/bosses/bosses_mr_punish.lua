-- Mr. Punish
-- Converted from XML

local monster = Game.createMonsterType("Mr. Punish")
if not monster then return end

monster:name("Mr. Punish")
monster:nameDescription("a mr. punish")
monster:health(12000)
monster:maxHealth(12000)
monster:experience(5500)
monster:speed(470)
monster:race(RACE_UNDEAD)
monster:corpseId(6331)
monster:outfit({lookType = 234})
monster:defense(72)
monster:armor(64)
monster:runHealth(1200)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 6537, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -660, maxDamage = -1280}
})

monster:register()
