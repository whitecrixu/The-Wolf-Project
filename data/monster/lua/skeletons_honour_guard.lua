-- Honour Guard
-- Auto-converted from XML

local monster = Game.createMonsterType("Honour Guard")
if not monster then return end

monster:name("Honour Guard")
monster:nameDescription("a honour guard")
monster:health(85)
monster:maxHealth(85)
monster:experience(55)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(2843)
monster:outfit({lookType = 298})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
})

-- Voices
monster:voices({
    {text = "Horestis curse upon you!", yell = false},
    {text = "Vengeance!", yell = false},
    {text = "Thy punishment is at hand!", yell = false},
    {text = "For the pharao!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 15},
    {id = 2398, chance = 3760},
    {id = 2419, chance = 1640},
    {id = 2789, chance = 6120, maxCount = 2},
    {id = 2159, chance = 2600},
    {id = 12437, chance = 8700},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, min=-10, max=-40
-- name=lifedrain, interval=2000, chance=15, range=1, min=-5, max=-13, areaEffect=redshimmer
--]]

monster:register()
