-- Thornfire Wolf
-- Auto-converted from XML

local monster = Game.createMonsterType("Thornfire Wolf")
if not monster then return end

monster:name("Thornfire Wolf")
monster:nameDescription("a thornfire wolf")
monster:health(600)
monster:maxHealth(600)
monster:experience(200)
monster:speed(250)
monster:race(RACE_ENERGY)
monster:corpseId(13859)
monster:outfit({lookType = 414})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 1},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 64000, maxCount = 53},
    {id = 2666, chance = 34000},
    {id = 7840, chance = 15000, maxCount = 8},
    {id = 5897, chance = 7900},
    {id = 10553, chance = 7900},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=35, attack=30
-- name=physical, interval=2000, chance=15, range=1, min=-35, max=-70, target=1, shootEffect=whirlwindsword
-- name=fire, interval=2000, chance=15, range=7, min=-30, max=-70, radius=2, target=1, shootEffect=fire, areaEffect=explosion
-- name=firefield, interval=2000, chance=10, range=7, radius=2, target=1
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=20, min=100, max=220, areaEffect=blueshimmer
--]]

monster:register()
