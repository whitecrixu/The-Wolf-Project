-- Chakoya Tribewarden
-- Auto-converted from XML

local monster = Game.createMonsterType("Chakoya Tribewarden")
if not monster then return end

monster:name("Chakoya Tribewarden")
monster:nameDescription("a chakoya tribewarden")
monster:health(68)
monster:maxHealth(68)
monster:experience(40)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(305)
monster:corpseId(7320)
monster:outfit({lookType = 259})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 25},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FREEZING, immunity = true},
})

-- Voices
monster:voices({
    {text = "Quisavu tukavi!", yell = false},
    {text = "Si siyoqua jamjam!", yell = false},
    {text = "Achuq! jinuma!", yell = false},
    {text = "Si ji jusipa!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 30},
    {id = 2667, chance = 20000},
    {id = 2541, chance = 1000},
    {id = 7381, chance = 300},
    {id = 7158, chance = 130},
    {id = 7159, chance = 190},
    {id = 2669, chance = 90},
    {id = 2406, chance = 4680},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=20, attack=20
--]]

monster:register()
