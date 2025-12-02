-- Priestess
-- Auto-converted from XML

local monster = Game.createMonsterType("Priestess")
if not monster then return end

monster:name("Priestess")
monster:nameDescription("a priestess")
monster:health(390)
monster:maxHealth(390)
monster:experience(420)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20491)
monster:outfit({lookType = 58})
monster:defense(15)
monster:armor(15)
monster:targetDistance(4)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 40},
    {type = COMBAT_EARTHDAMAGE, percent = 70},
    {type = COMBAT_DEATHDAMAGE, percent = 5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Your energy is mine.", yell = false},
    {text = "Now, your life has come to an end, hahahha!", yell = false},
    {text = "Throw the soul on the altar!", yell = false},
})

-- Summons
monster:summons({
    {name = "ghoul", chance = 10, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2529, chance = 210},
    {id = 1962, chance = 890},
    {id = 2423, chance = 1500},
    {id = 2192, chance = 1250},
    {id = 2125, chance = 640},
    {id = 2760, chance = 11720},
    {id = 2183, chance = 1100},
    {id = 7620, chance = 850},
    {id = 2803, chance = 5900},
    {id = 2674, chance = 7500, maxCount = 2},
    {id = 2802, chance = 13200},
    {id = 2151, chance = 750},
    {id = 2791, chance = 3240},
    {id = 2070, chance = 1410},
    {id = 2114, chance = 90},
    {id = 11220, chance = 9840},
    {id = 10556, chance = 1800},
    {id = 10562, chance = 5230},
    {id = 2374, chance = 1400},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=65, attack=20
-- name=death, interval=2000, chance=20, range=7, min=-55, max=-120, shootEffect=suddendeath, areaEffect=mortarea
-- name=manadrain, interval=2000, chance=15, range=7, min=-2, max=-170
-- name=poisoncondition, interval=2000, chance=15, range=7, min=-200, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=50, max=80, areaEffect=blueshimmer
--]]

monster:register()
