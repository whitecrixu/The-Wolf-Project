-- Mephiles
-- Auto-converted from XML

local monster = Game.createMonsterType("Mephiles")
if not monster then return end

monster:name("Mephiles")
monster:nameDescription("a mephiles")
monster:health(415)
monster:maxHealth(415)
monster:experience(415)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(10323)
monster:outfit({lookType = 237})
monster:defense(35)
monster:armor(30)
monster:targetDistance(3)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I have a contract here which you should sign!", yell = false},
    {text = "I sence so much potential in you. It's almost a shame I have to kill you.", yell = false},
    {text = "Yes, slay me for the loot I might have. Give in to your greed.", yell = false},
    {text = "Wealth, Power, it is all at your fingertips. All you have to do is a bit blackmailing and bullying.", yell = false},
    {text = "Come on. being a bit evil won't hurt you.", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, max=-35
-- name=fire, interval=1500, chance=70, range=7, min=-15, max=-45, radius=2, target=1, shootEffect=fire, areaEffect=firearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=1000, chance=40, duration=40000, speedchange=400, areaEffect=redshimmer
-- name=invisible, interval=4000, chance=50, duration=5000, areaEffect=redshimmer
--]]

monster:register()
