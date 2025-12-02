-- Zulazza the Corruptor
-- Auto-converted from XML

local monster = Game.createMonsterType("Zulazza the Corruptor")
if not monster then return end

monster:name("Zulazza the Corruptor")
monster:nameDescription("a zulazza the corruptor")
monster:health(28000)
monster:maxHealth(28000)
monster:experience(9800)
monster:speed(290)
monster:race(RACE_BLOOD)
monster:corpseId(11107)
monster:outfit({lookType = 334})
monster:defense(119)
monster:armor(96)
monster:runHealth(1500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 70},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
})

-- Voices
monster:voices({
    {text = "I'm Zulazza, and you won't forget me that fazzt.", yell = false},
    {text = "Oh, HE will take revenge on zzizz azzault when you zztep in front of HIZZ fazze!", yell = false},
})

-- Loot
monster:loot({
    {id = 7591, chance = 30500},
    {id = 2152, chance = 41325, maxCount = 30},
    {id = 2148, chance = 49650, maxCount = 100},
    {id = 9808, chance = 50500},
    {id = 9971, chance = 33000, maxCount = 4},
    {id = 2158, chance = 30500},
    {id = 2155, chance = 20500},
    {id = 8473, chance = 10500},
    {id = 11118, chance = 5500},
    {id = 5944, chance = 19250, maxCount = 4},
    {id = 2528, chance = 15500},
    {id = 7366, chance = 8100, maxCount = 67},
    {id = 7632, chance = 28000, maxCount = 2},
    {id = 2154, chance = 15500},
    {id = 2156, chance = 10500},
    {id = 7440, chance = 10500},
    {id = 2153, chance = 25500},
    {id = 7590, chance = 20500},
    {id = 8882, chance = 5500},
    {id = 2514, chance = 5500},
    {id = 2127, chance = 10500},
    {id = 8891, chance = 5500},
    {id = 2515, chance = 5500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=200, attack=200
-- name=physical, interval=2000, chance=40, min=-500, max=-800, length=8, areaEffect=mortarea
-- name=poison, interval=2000, chance=30, min=-300, max=-800, radius=3, areaEffect=poison
-- name=manadrain, interval=2000, chance=25, range=7, min=-50, max=-130, target=1, areaEffect=greenshimmer
-- name=speed, interval=2000, chance=20, range=7, duration=20000, speedchange=-500, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=2000, max=3000, areaEffect=blueshimmer
--]]

monster:register()
