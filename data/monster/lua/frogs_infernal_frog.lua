-- Infernal Frog
-- Auto-converted from XML

local monster = Game.createMonsterType("Infernal Frog")
if not monster then return end

monster:name("Infernal Frog")
monster:nameDescription("a infernal frog")
monster:health(655)
monster:maxHealth(655)
monster:experience(190)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(6079)
monster:outfit({lookType = 224, lookHead = 69, lookBody = 66, lookLegs = 69, lookFeet = 66})
monster:defense(5)
monster:armor(5)
monster:runHealth(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Ribbit!", yell = false},
    {text = "Ribbit! Ribbit!", yell = false},
    {text = "No Kisses for you!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 77000, maxCount = 65},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-20
-- name=earth, interval=2000, chance=30, min=-16, max=-32, target=1, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=20, duration=8000, speedchange=400, areaEffect=redshimmer
--]]

monster:register()
