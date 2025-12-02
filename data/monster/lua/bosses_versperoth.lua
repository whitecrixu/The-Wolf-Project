-- Versperoth
-- Auto-converted from XML

local monster = Game.createMonsterType("Versperoth")
if not monster then return end

monster:name("Versperoth")
monster:nameDescription("versperoth")
monster:health(100000)
monster:maxHealth(100000)
monster:experience(20000)
monster:speed(0)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 295})
monster:defense(55)
monster:armor(55)
monster:targetDistance(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 90},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "GrrroaR!", yell = false},
    {text = "GROWL!", yell = false},
    {text = "Waaaah!", yell = false},
})

-- Summons
monster:summons({
    {name = "Minion of Vesperoth", chance = 16, interval = 2000, max = 4},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, skill=120, attack=100
-- name=firefield, interval=1200, chance=30, range=7, radius=4, shootEffect=fire
-- name=fire, interval=1000, chance=40, range=5, min=-700, max=-1615, length=8, spread=3, areaEffect=firearea
-- name=melee, interval=1000, chance=25, range=7, min=-750, max=-950, radius=3, areaEffect=explosionarea
--]]

monster:register()
