-- Svoren the Mad
-- Auto-converted from XML

local monster = Game.createMonsterType("Svoren the Mad")
if not monster then return end

monster:name("Svoren the Mad")
monster:nameDescription("svoren the mad")
monster:health(6300)
monster:maxHealth(6300)
monster:experience(3000)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 254, lookHead = 80, lookBody = 99, lookLegs = 118, lookFeet = 38})
monster:defense(27)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "NO mommy NO. Leave me alone!", yell = false},
    {text = "Not that tower again!", yell = false},
    {text = "The cat has grown some horns!!", yell = false},
    {text = "What was I doing here again?", yell = false},
    {text = "Are we there soon mommy?", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=150
-- name=speed, interval=3500, chance=35, range=1, radius=1, target=1, duration=40, speedchange=-250, areaEffect=redshimmer
--]]

monster:register()
