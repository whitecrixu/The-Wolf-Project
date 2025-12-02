-- Drasilla
-- Auto-converted from XML

local monster = Game.createMonsterType("Drasilla")
if not monster then return end

monster:name("Drasilla")
monster:nameDescription("drasilla")
monster:health(1320)
monster:maxHealth(1320)
monster:experience(700)
monster:speed(170)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 34})
monster:defense(33)
monster:armor(32)
monster:runHealth(100)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "FCHHHHHHHH!", yell = false},
    {text = "GROOOOAAAAAAAAR!", yell = false},
    {text = "DIRTY LITTLE HUMANS", yell = false},
    {text = "YOU CAN'T KEEP ME HERE FOREVER", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=30, attack=60
-- name=fire, interval=6000, chance=60, min=-100, max=-180, length=8, spread=3, areaEffect=firearea
-- name=fire, interval=3000, chance=50, range=10, min=-70, max=-115, radius=5, target=1, areaEffect=firearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=6000, chance=65, min=20, max=50, areaEffect=blueshimmer
--]]

monster:register()
