-- Acid Blob
-- Auto-converted from XML

local monster = Game.createMonsterType("Acid Blob")
if not monster then return end

monster:name("Acid Blob")
monster:nameDescription("an acid blob")
monster:health(250)
monster:maxHealth(250)
monster:experience(250)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(9962)
monster:outfit({lookType = 314})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(85)

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Kzzchhh!", yell = false},
})

-- Summons
monster:summons({
    {name = "Acid Blob", chance = 10, interval = 2000, max = 1},
})

-- Loot
monster:loot({
    {id = 9967, chance = 14285},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=40
-- name=earth, interval=2000, chance=30, min=-10, max=-20, radius=4, areaEffect=greenspark
-- name=earth, interval=2000, chance=15, min=-40, max=-60, length=5, areaEffect=greenbubble
-- name=poison, interval=2000, chance=10, range=7, target=1, shootEffect=poison
--]]

monster:register()
