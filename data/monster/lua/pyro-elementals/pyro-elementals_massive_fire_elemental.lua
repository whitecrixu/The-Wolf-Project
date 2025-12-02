-- Massive Fire Elemental
-- Converted from XML

local monster = Game.createMonsterType("Massive Fire Elemental")
if not monster then return end

monster:name("Massive Fire Elemental")
monster:nameDescription("a massive fire elemental")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(1400)
monster:speed(210)
monster:race(RACE_FIRE)
monster:corpseId(6324)
monster:outfit({lookType = 242})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = -15},
    {type = COMBAT_PHYSICALDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 30}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 25000, maxCount = 100},
    {id = 2148, chance = 25000, maxCount = 12},
    {id = 2172, chance = 15000},
    {id = 2147, chance = 6100, maxCount = 2},
    {id = 9809, chance = 1330},
    {id = 2187, chance = 2240},
    {id = 7890, chance = 1300},
    {id = 7891, chance = 560},
    {id = 2392, chance = 530},
    {id = 7894, chance = 210}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -145},
    {name = "firefield", interval = 2000, chance = 10, range = 7, radius = 3},
    {name = "firefield", interval = 2000, chance = 10, range = 7, radius = 3},
    {name = "fire", interval = 2000, chance = 10, minDamage = -200, maxDamage = -700, length = 7},
    {name = "fire", interval = 2000, chance = 15, minDamage = -60, maxDamage = -250, radius = 3},
    {name = "massive fire elemental soulfire", interval = 2000, chance = 15}
})

monster:register()
