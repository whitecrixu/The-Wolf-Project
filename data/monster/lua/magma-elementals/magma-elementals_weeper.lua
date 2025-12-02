-- Weeper
-- Converted from XML

local monster = Game.createMonsterType("Weeper")
if not monster then return end

monster:name("Weeper")
monster:nameDescription("a weeper")
monster:health(6800)
monster:maxHealth(6800)
monster:experience(4800)
monster:speed(260)
monster:race(RACE_FIRE)
monster:corpseId(17251)
monster:outfit({lookType = 489})
monster:defense(45)
monster:armor(45)
monster:runHealth(680)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -1},
    {type = COMBAT_ICEDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = 1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Moooaaan!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 199},
    {id = 2152, chance = 100000, maxCount = 7},
    {id = 18426, chance = 15500},
    {id = 18425, chance = 15500},
    {id = 8473, chance = 15470, maxCount = 2},
    {id = 2147, chance = 15340, maxCount = 3},
    {id = 7590, chance = 14700, maxCount = 2},
    {id = 10553, chance = 13200},
    {id = 18424, chance = 12650},
    {id = 18417, chance = 12100, maxCount = 2},
    {id = 18435, chance = 11600, maxCount = 5},
    {id = 18420, chance = 8880},
    {id = 18414, chance = 5430},
    {id = 2392, chance = 3300},
    {id = 2432, chance = 2180},
    {id = 18409, chance = 1450},
    {id = 13757, chance = 1270},
    {id = 7894, chance = 790},
    {id = 7899, chance = 700}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -300},
    {name = "soulfire", interval = 2000, chance = 100, radius = 3},
    {name = "fire", interval = 2000, chance = 15, minDamage = -400, maxDamage = -1000, length = 8},
    {name = "physical", interval = 3000, chance = 30, minDamage = -250, maxDamage = -350, radius = 4}
})

monster:register()
