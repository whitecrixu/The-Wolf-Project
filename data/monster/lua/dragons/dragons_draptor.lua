-- Draptor
-- Converted from XML

local monster = Game.createMonsterType("Draptor")
if not monster then return end

monster:name("Draptor")
monster:nameDescription("a draptor")
monster:health(3000)
monster:maxHealth(3000)
monster:experience(2400)
monster:speed(282)
monster:race(RACE_BLOOD)
monster:corpseId(13316)
monster:outfit({lookType = 382})
monster:defense(37)
monster:armor(23)
monster:runHealth(300)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 33750, maxCount = 90},
    {id = 2148, chance = 33750, maxCount = 60},
    {id = 8867, chance = 950},
    {id = 13296, chance = 6650},
    {id = 7588, chance = 3150},
    {id = 7589, chance = 4150}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -1, maxDamage = -150},
    {name = "energy", interval = 3000, chance = 30, minDamage = -130, maxDamage = -310, radius = 3},
    {name = "energy", interval = 3000, chance = 35, minDamage = -200, maxDamage = -300, range = 7},
    {name = "fire", interval = 2500, chance = 17, minDamage = -70, maxDamage = -250, length = 8, spread = 3}
})

monster:register()
