-- mad mage
-- Converted from XML

local monster = Game.createMonsterType("mad mage")
if not monster then return end

monster:name("mad mage")
monster:nameDescription("a mad mage")
monster:health(2200)
monster:maxHealth(2200)
monster:experience(1800)
monster:speed(240)
monster:race(RACE_BLOOD)
monster:corpseId(13603)
monster:outfit({lookType = 394})
monster:defense(20)
monster:armor(20)
monster:runHealth(220)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_EARTHDAMAGE, percent = 50}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Loot
monster:loot({
    {id = 7368, chance = 2400, maxCount = 4},
    {id = 5911, chance = 800},
    {id = 7589, chance = 1200, maxCount = 2},
    {id = 7588, chance = 1300, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 66},
    {id = 2792, chance = 5000, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 7895, chance = 800}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -69},
    {name = "fire", interval = 1000, chance = 12, minDamage = -50, maxDamage = -185, range = 7},
    {name = "manadrain", interval = 1400, chance = 24, minDamage = -30, maxDamage = -90, range = 6},
    {name = "firefield", interval = 1600, chance = 20, range = 7, radius = 2},
    {name = "energy", interval = 1900, chance = 18, minDamage = -70, maxDamage = -150, length = 8}
})

monster:register()
