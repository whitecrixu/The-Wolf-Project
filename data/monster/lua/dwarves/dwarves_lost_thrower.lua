-- Lost Thrower
-- Auto-converted from XML

local monster = Game.createMonsterType("Lost Thrower")
if not monster then return end

monster:name("Lost Thrower")
monster:nameDescription("a lost thrower")
monster:health(1700)
monster:maxHealth(1700)
monster:experience(1200)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(19998)
monster:outfit({lookType = 539})
monster:defense(30)
monster:armor(30)
monster:targetDistance(4)

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
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 40},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 37},
    {id = 2152, chance = 70000, maxCount = 2},
    {id = 2789, chance = 14500, maxCount = 2},
    {id = 20133, chance = 14860},
    {id = 20132, chance = 13560},
    {id = 20137, chance = 7900},
    {id = 20136, chance = 6150},
    {id = 20131, chance = 1390},
    {id = 20130, chance = 15670},
    {id = 20106, chance = 11410},
    {id = 20134, chance = 11810},
    {id = 5880, chance = 9470},
    {id = 20109, chance = 850},
    {id = 7591, chance = 14730},
    {id = 7590, chance = 13470},
    {id = 13757, chance = 12180},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=76, attack=70
-- name=physical, interval=2000, chance=20, range=7, max=-250, radius=1, target=1, shootEffect=throwingstar, areaEffect=explosionarea
-- name=physical, interval=2000, chance=5, range=7, radius=2, areaEffect=redshimmer
-- name=physical, interval=2000, chance=10, range=7, min=-150, max=-300, radius=2, target=1, shootEffect=whirlwindclub, areaEffect=stun
-- name=drunk, interval=2000, chance=10, radius=3, target=1, duration=6000, shootEffect=whirlwindaxe, areaEffect=explosionarea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=5, min=100, max=500, areaEffect=blueshimmer
-- name=invisible, interval=2000, chance=10, duration=5000, areaEffect=teleport
--]]

monster:register()
