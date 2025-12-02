-- Undead Prospector
-- Auto-converted from XML

local monster = Game.createMonsterType("Undead Prospector")
if not monster then return end

monster:name("Undead Prospector")
monster:nameDescription("an undead prospector")
monster:health(100)
monster:maxHealth(100)
monster:experience(85)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:manaCost(440)
monster:corpseId(5976)
monster:outfit({lookType = 18})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -25},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
})

-- Voices
monster:voices({
    {text = "Our mine... leave us alone.", yell = false},
    {text = "Turn back...", yell = false},
    {text = "These mine is ours... you shall not pass.", yell = false},
})

-- Loot
monster:loot({
    {id = 3976, chance = 92310, maxCount = 6},
    {id = 2148, chance = 53850, maxCount = 30},
    {id = 2050, chance = 46150},
    {id = 2460, chance = 23000},
    {id = 2403, chance = 15380},
    {id = 2483, chance = 1000},
    {id = 2229, chance = 240},
    {id = 5913, chance = 1000},
    {id = 2473, chance = 1000},
    {id = 2168, chance = 200},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-50
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=5, max=15, areaEffect=blueshimmer
--]]

monster:register()
