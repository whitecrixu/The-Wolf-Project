-- Undead Elite Gladiator
-- Auto-converted from XML

local monster = Game.createMonsterType("Undead Elite Gladiator")
if not monster then return end

monster:name("Undead Elite Gladiator")
monster:nameDescription("an undead elite gladiator")
monster:health(1800)
monster:maxHealth(1800)
monster:experience(1500)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(9823)
monster:outfit({lookType = 306})
monster:defense(55)
monster:armor(60)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = 80},
    {type = COMBAT_ENERGYDAMAGE, percent = 30},
    {type = COMBAT_DEATHDAMAGE, percent = 100},
    {type = COMBAT_ICEDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Face me in the arena!", yell = false},
    {text = "I have never been defeated!", yell = false},
    {text = "You will fall before me!", yell = false},
    {text = "Death is just the beginning!", yell = false},
    {text = "I am eternal!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 180},
    {id = 2152, chance = 30000, maxCount = 3},
    {id = 8872, chance = 7000},
    {id = 2465, chance = 6000},
    {id = 2478, chance = 7500},
    {id = 3965, chance = 5000},
    {id = 2666, chance = 20000, maxCount = 3},
    {id = 2419, chance = 15000},
    {id = 2399, chance = 20000, maxCount = 25},
    {id = 2647, chance = 4000},
    {id = 2463, chance = 3000},
    {id = 2200, chance = 3500},
    {id = 2377, chance = 3000},
    {id = 2165, chance = 500},
    {id = 2490, chance = 2500},
    {id = 2497, chance = 800},
    {id = 7618, chance = 5000},
    {id = 2430, chance = 1500},
    {id = 5885, chance = 1000},
    {id = 10573, chance = 8000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=100, attack=70
-- name=physical, interval=2000, chance=25, range=7, min=-50, max=-180, shootEffect=whirlwindsword
-- name=lifedrain, interval=2000, chance=15, range=1, min=-50, max=-100, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=15, duration=3000, areaEffect=blueshimmer
-- name=healing, interval=2000, chance=10, min=50, max=100, areaEffect=blueshimmer
--]]

monster:register()
