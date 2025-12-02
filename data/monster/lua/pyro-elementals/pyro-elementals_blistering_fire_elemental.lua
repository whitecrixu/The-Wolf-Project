-- Blistering Fire Elemental
-- Converted from XML

local monster = Game.createMonsterType("Blistering Fire Elemental")
if not monster then return end

monster:name("Blistering Fire Elemental")
monster:nameDescription("a blistering fire elemental")
monster:health(1500)
monster:maxHealth(1500)
monster:experience(1300)
monster:speed(230)
monster:race(RACE_FIRE)
monster:corpseId(8964)
monster:outfit({lookType = 242})
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
    {type = COMBAT_ICEDAMAGE, percent = -25}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 12500, maxCount = 65},
    {id = 2148, chance = 12500, maxCount = 60},
    {id = 2147, chance = 3200, maxCount = 3},
    {id = 8299, chance = 2500},
    {id = 8921, chance = 1250}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -160},
    {name = "fire", interval = 1000, chance = 11, minDamage = -65, maxDamage = -510, length = 7, spread = 3},
    {name = "firecondition", interval = 1000, chance = 12, minDamage = -50, maxDamage = -200, radius = 6},
    {name = "firefield", interval = 1000, chance = 15, range = 7, radius = 3}
})

monster:register()
