-- Kreebosh the Exile
-- Auto-converted from XML

local monster = Game.createMonsterType("Kreebosh the Exile")
if not monster then return end

monster:name("Kreebosh the Exile")
monster:nameDescription("kreebosh the exile")
monster:health(880)
monster:maxHealth(880)
monster:experience(350)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 103})
monster:defense(40)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 55},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I bet you wish you weren't here.", yell = false},
})

-- Summons
monster:summons({
    {name = "Green Djinn", chance = 20, interval = 5000, max = 1},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=50
-- name=fire, interval=6000, chance=80, max=-120, radius=3, areaEffect=energy
-- name=speed, interval=3500, chance=35, range=5, radius=1, target=1, duration=20000, areaEffect=redshimmer
-- name=physical, interval=6000, chance=40, range=5, min=-20, max=-100, radius=1, target=1, areaEffect=mortarea, shootEffect=suddendeath
-- name=energy, interval=5000, chance=20, range=5, min=-40, max=-200, radius=1, target=1, areaEffect=firearea, shootEffect=energy
-- name=drunk, interval=1000, chance=20, range=5, radius=1, target=1, duration=30000
-- name=outfit, interval=2000, chance=50, range=5, radius=1, target=1, duration=60000, areaEffect=greenshimmer
--]]

monster:register()
