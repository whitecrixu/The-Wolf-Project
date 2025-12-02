-- Gazer
-- Auto-converted from XML

local monster = Game.createMonsterType("Gazer")
if not monster then return end

monster:name("Gazer")
monster:nameDescription("a gazer")
monster:health(120)
monster:maxHealth(120)
monster:experience(90)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(6036)
monster:outfit({lookType = 109})
monster:defense(5)
monster:armor(5)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Mommy!?", yell = false},
    {text = "Buuuuhaaaahhaaaaa!", yell = false},
    {text = "Me need mana!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 65000, maxCount = 16},
    {id = 12468, chance = 3330},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=15
-- name=lifedrain, interval=2000, chance=15, range=7, min=-25, max=-35, areaEffect=redshimmer
-- name=manadrain, interval=2000, chance=10, range=7, min=-10, max=-35
--]]

monster:register()
