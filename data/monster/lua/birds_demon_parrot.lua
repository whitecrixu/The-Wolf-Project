-- Demon Parrot
-- Auto-converted from XML

local monster = Game.createMonsterType("Demon Parrot")
if not monster then return end

monster:name("Demon Parrot")
monster:nameDescription("a demon parrot")
monster:health(360)
monster:maxHealth(360)
monster:experience(225)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(6056)
monster:outfit({lookType = 217})
monster:defense(35)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
})

-- Voices
monster:voices({
    {text = "ISHH THAT THE BESHHT YOU HAVE TO OFFERRR?", yell = false},
    {text = "YOU ARRRRRE DOOMED!", yell = false},
    {text = "I SHHMELL FEEAARRR!", yell = false},
    {text = "MY SHHEED IS FEARRR AND MY HARRRVEST ISHH YOURRR SHHOUL!", yell = false},
    {text = "Your shhoooul will be mineee!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 99},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, max=-100
-- name=drunk, interval=1000, chance=30, length=5, areaEffect=rednote
-- name=lifedrain, interval=1000, chance=30, range=5, min=-25, max=-45, shootEffect=suddendeath
-- name=lifedrain, interval=1000, chance=30, range=1, min=-15, max=-45
--]]

monster:register()
