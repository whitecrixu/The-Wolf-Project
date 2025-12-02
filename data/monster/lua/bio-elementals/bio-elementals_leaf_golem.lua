-- Leaf Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Leaf Golem")
if not monster then return end

monster:name("Leaf Golem")
monster:nameDescription("a leaf golem")
monster:health(90)
monster:maxHealth(90)
monster:experience(45)
monster:speed(140)
monster:race(RACE_UNDEAD)
monster:manaCost(390)
monster:corpseId(21358)
monster:outfit({lookType = 567})
monster:defense(10)
monster:armor(10)

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
    {type = COMBAT_FIREDAMAGE, percent = -1},
})

-- Voices
monster:voices({
    {text = "*crackle*", yell = false},
    {text = "*swwwwishhhh*", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 86830, maxCount = 27},
    {id = 21427, chance = 15230},
    {id = 21428, chance = 14350},
    {id = 2787, chance = 4940, maxCount = 3},
    {id = 20104, chance = 4940},
    {id = 2149, chance = 1230},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=35, attack=40
-- name=physical, interval=2000, chance=15, range=7, max=-15, target=1, shootEffect=smallstone
-- name=speed, interval=2000, chance=20, radius=3, duration=9000, speedchange=-600, areaEffect=smallplants
--]]

monster:register()
