-- Wilting Leaf Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Wilting Leaf Golem")
if not monster then return end

monster:name("Wilting Leaf Golem")
monster:nameDescription("a wilting leaf golem")
monster:health(380)
monster:maxHealth(380)
monster:experience(145)
monster:speed(145)
monster:race(RACE_BLOOD)
monster:manaCost(390)
monster:corpseId(21434)
monster:outfit({lookType = 573})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = -1},
})

-- Voices
monster:voices({
    {text = "*crackle*", yell = false},
    {text = "*swwwwishhhh*", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 97230, maxCount = 45},
    {id = 21427, chance = 10690},
    {id = 21428, chance = 15630},
    {id = 2787, chance = 4860, maxCount = 3},
    {id = 20104, chance = 4200},
    {id = 2149, chance = 830},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1500, chance=100, skill=50, attack=40
-- name=physical, interval=2000, chance=20, range=7, max=-50, radius=1, target=1, shootEffect=largerock, areaEffect=explosion
-- name=poisoncondition, interval=2000, chance=15, min=-150, max=-200, radius=4, areaEffect=greenbubble
-- name=speed, interval=2000, chance=20, radius=3, duration=15000, speedchange=-600, areaEffect=redshimmer
--]]

monster:register()
