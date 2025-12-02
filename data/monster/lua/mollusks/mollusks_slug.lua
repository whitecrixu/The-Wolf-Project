-- Slug
-- Auto-converted from XML

local monster = Game.createMonsterType("Slug")
if not monster then return end

monster:name("Slug")
monster:nameDescription("a slug")
monster:health(255)
monster:maxHealth(255)
monster:experience(70)
monster:speed(150)
monster:race(RACE_VENOM)
monster:corpseId(13515)
monster:outfit({lookType = 407})
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
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 7},
})

-- Loot
monster:loot({
    {id = 2148, chance = 62000, maxCount = 40},
    {id = 3976, chance = 5000, maxCount = 3},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=45, attack=16
-- name=poison, interval=1000, chance=15, range=7, min=-5, max=-40, target=1, shootEffect=poison
--]]

monster:register()
