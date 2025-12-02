-- Wisp
-- Auto-converted from XML

local monster = Game.createMonsterType("Wisp")
if not monster then return end

monster:name("Wisp")
monster:nameDescription("a wisp")
monster:health(115)
monster:maxHealth(115)
monster:experience(0)
monster:speed(180)
monster:race(RACE_UNDEAD)
monster:corpseId(6324)
monster:outfit({lookType = 294})
monster:defense(10)
monster:armor(10)
monster:targetDistance(7)
monster:runHealth(115)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:staticAttackChance(15)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_EARTHDAMAGE, percent = 90},
    {type = COMBAT_PHYSICALDAMAGE, percent = 65},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Crackle!", yell = false},
    {text = "Tsshh", yell = false},
})

-- Loot
monster:loot({
    {id = 10521, chance = 220},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=10
-- name=lifedrain, interval=2000, chance=15, range=1, min=-3, max=-7, target=1, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=200, areaEffect=redshimmer
-- name=healing, interval=2000, chance=5, min=15, max=25, areaEffect=greenshimmer
-- name=Invisible, interval=2000, chance=10, duration=3000, areaEffect=blueshimmer
--]]

monster:register()
