-- Infected Weeper
-- Converted from XML

local monster = Game.createMonsterType("Infected Weeper")
if not monster then return end

monster:name("Infected Weeper")
monster:nameDescription("an infected weeper")
monster:health(6800)
monster:maxHealth(6800)
monster:experience(4800)
monster:speed(250)
monster:race(RACE_FIRE)
monster:corpseId(17251)
monster:outfit({lookType = 489})
monster:defense(45)
monster:armor(45)

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
    {id = 2148, chance = 100000, maxCount = 198},
    {id = 2152, chance = 100000, maxCount = 7},
    {id = 8748, chance = 1450}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200},
    {name = "soulfire", interval = 2000, chance = 100, radius = 3},
    {name = "fire", interval = 2000, chance = 15, minDamage = -400, maxDamage = -1000, length = 8},
    {name = "physical", interval = 3000, chance = 30, minDamage = -250, maxDamage = -350, radius = 4},
    {name = "speed", interval = 2000, chance = 10, length = 5, spread = 3}
})

monster:register()
