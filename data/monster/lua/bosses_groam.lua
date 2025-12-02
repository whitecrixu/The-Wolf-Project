-- Groam
-- Auto-converted from XML

local monster = Game.createMonsterType("Groam")
if not monster then return end

monster:name("Groam")
monster:nameDescription("a groam")
monster:health(400)
monster:maxHealth(400)
monster:experience(180)
monster:speed(560)
monster:race(RACE_BLOOD)
monster:corpseId(13839)
monster:outfit({lookType = 413})
monster:defense(20)
monster:armor(12)
monster:targetDistance(0)
monster:runHealth(60)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
    {type = COMBAT_PHYSICALDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Njaaarh!!", yell = false},
    {text = "Begjone, intrjuder!!", yell = false},
    {text = "Djon't djare stjare injo the eyes of the djeep!", yell = false},
    {text = "Ljeave this sjacred pljace while you cjan", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 50},
    {id = 2168, chance = 50000},
    {id = 3965, chance = 25000, maxCount = 4},
    {id = 9808, chance = 14285},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=34, attack=45
-- name=drown, interval=1000, chance=11, range=5, min=-15, max=-100, target=1, shootEffect=spear, areaEffect=bluebubble
--]]

monster:register()
