-- Mutated Human
-- Auto-converted from XML

local monster = Game.createMonsterType("Mutated Human")
if not monster then return end

monster:name("Mutated Human")
monster:nameDescription("a mutated human")
monster:health(240)
monster:maxHealth(240)
monster:experience(150)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(9107)
monster:outfit({lookType = 323})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Take that creature off my back!! I can fell it!", yell = false},
    {text = "HEEEEEEEELP!", yell = false},
    {text = "You will be the next infected one... GRAAAAAAAAARRR!", yell = false},
    {text = "Science... is a curse.", yell = false},
    {text = "Run as fast as you can.", yell = false},
    {text = "Oh by the gods! What is this... aaaaaargh!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 44000, maxCount = 80},
    {id = 2148, chance = 44000, maxCount = 50},
    {id = 3976, chance = 7110, maxCount = 2},
    {id = 2226, chance = 10050},
    {id = 2696, chance = 8000},
    {id = 2161, chance = 4980},
    {id = 11225, chance = 19940},
    {id = 2483, chance = 8080},
    {id = 2376, chance = 5030},
    {id = 9808, chance = 190},
    {id = 7910, chance = 580},
    {id = 2801, chance = 420},
    {id = 2170, chance = 70},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=30
-- name=death, interval=2000, chance=15, min=-50, max=-60, length=3, spread=1, areaEffect=poison
-- name=poisoncondition, interval=2000, chance=20, min=-190, max=-280, target=1, areaeffect=greenspark
-- name=speed, interval=2000, chance=10, range=7, target=1, duration=30000, speedchange=-600, areaEffect=stun
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=220, areaEffect=greenbubble
--]]

monster:register()
