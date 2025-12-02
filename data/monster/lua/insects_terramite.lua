-- Terramite
-- Auto-converted from XML

local monster = Game.createMonsterType("Terramite")
if not monster then return end

monster:name("Terramite")
monster:nameDescription("a terramite")
monster:health(365)
monster:maxHealth(365)
monster:experience(160)
monster:speed(200)
monster:race(RACE_VENOM)
monster:manaCost(505)
monster:corpseId(11347)
monster:outfit({lookType = 346})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Zrp zrp!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 97520, maxCount = 45},
    {id = 11371, chance = 14880},
    {id = 11370, chance = 4680, maxCount = 3},
    {id = 11369, chance = 7730},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=earth, interval=2000, chance=15, range=7, min=-5, max=-16, target=1, shootEffect=poison
--]]

monster:register()
