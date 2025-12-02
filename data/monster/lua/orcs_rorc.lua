-- Rorc
-- Auto-converted from XML

local monster = Game.createMonsterType("Rorc")
if not monster then return end

monster:name("Rorc")
monster:nameDescription("a rorc")
monster:health(260)
monster:maxHealth(260)
monster:experience(105)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(21223)
monster:outfit({lookType = 550})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
})

-- Voices
monster:voices({
    {text = "Kroaaah!!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 73640, maxCount = 25},
    {id = 21314, chance = 12670},
    {id = 21310, chance = 12520},
    {id = 2510, chance = 6700},
    {id = 2129, chance = 7410},
    {id = 2428, chance = 2040},
    {id = 2425, chance = 930},
    {id = 21313, chance = 790},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=40
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=40, max=55
-- name=speed, interval=2000, chance=15, duration=3000, speedchange=300, areaEffect=redshimmer
--]]

monster:register()
