-- Barbarian Bloodwalker
-- Converted from XML

local monster = Game.createMonsterType("Barbarian Bloodwalker")
if not monster then return end

monster:name("Barbarian Bloodwalker")
monster:nameDescription("a barbarian bloodwalker")
monster:health(305)
monster:maxHealth(305)
monster:experience(195)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:manaCost(590)
monster:corpseId(20335)
monster:outfit({lookType = 255, lookHead = 114, lookBody = 132, lookLegs = 132, lookFeet = 132})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_EARTHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "YAAAHEEE!", yell = false},
    {text = "SLAUGHTER!", yell = false},
    {text = "CARNAGE!", yell = false},
    {text = "You can run but you can't hide", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 12},
    {id = 2671, chance = 4970},
    {id = 2044, chance = 8280},
    {id = 2381, chance = 6730},
    {id = 2458, chance = 10440},
    {id = 2378, chance = 6000},
    {id = 2464, chance = 10290},
    {id = 5911, chance = 530},
    {id = 7618, chance = 950},
    {id = 3962, chance = 390},
    {id = 7457, chance = 100},
    {id = 7290, chance = 290}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -130}
})

monster:register()
