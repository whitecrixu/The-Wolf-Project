-- Deepling Scout
-- Auto-converted from XML

local monster = Game.createMonsterType("Deepling Scout")
if not monster then return end

monster:name("Deepling Scout")
monster:nameDescription("a deepling scout")
monster:health(240)
monster:maxHealth(240)
monster:experience(160)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(13839)
monster:outfit({lookType = 413})
monster:defense(10)
monster:armor(10)
monster:targetDistance(0)
monster:runHealth(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
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
    {id = 2148, chance = 60000, maxCount = 50},
    {id = 3965, chance = 14285, maxCount = 3},
    {id = 2168, chance = 2127},
    {id = 9809, chance = 925},
    {id = 13838, chance = 505},
    {id = 13870, chance = 310},
    {id = 5895, chance = 310},
    {id = 2149, chance = 121},
    {id = 9930, chance = 111},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=40, attack=40
-- name=drown, interval=2000, chance=15, range=7, min=-40, max=-100, target=1, shootEffect=spear, areaEffect=bluebubble
--]]

monster:register()
