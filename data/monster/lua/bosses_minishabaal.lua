-- Minishabaal
-- Auto-converted from XML

local monster = Game.createMonsterType("Minishabaal")
if not monster then return end

monster:name("Minishabaal")
monster:nameDescription("minishabaal")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(4000)
monster:speed(700)
monster:race(RACE_BLOOD)
monster:corpseId(6364)
monster:outfit({lookType = 237})
monster:defense(25)
monster:armor(25)
monster:targetDistance(4)
monster:runHealth(350)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "I had Princess Lumelia as breakfast!", yell = false},
    {text = "Naaa-Nana-Naaa-Naaa!", yell = false},
    {text = "My brother will come and get you for this!", yell = false},
    {text = "Get them Fluffy!", yell = false},
    {text = "He He He!", yell = false},
    {text = "Pftt, Ferumbras such an upstart!", yell = false},
    {text = "My dragon is not that old, it's just second hand!", yell = false},
    {text = "My other dragon is a red one!", yell = false},
    {text = "When I am big I want to become the ruthless eighth!", yell = false},
    {text = "WHERE'S FLUFFY?", yell = false},
    {text = "Muahaha!", yell = false},
})

-- Summons
monster:summons({
    {name = "Diabolic Imp", chance = 40, interval = 2000, max = 3},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 2150, chance = 1428, maxCount = 2},
    {id = 2548, chance = 2857},
    {id = 2432, chance = 666},
    {id = 5944, chance = 909},
    {id = 2520, chance = 200},
    {id = 6500, chance = 1000, maxCount = 2},
    {id = 2470, chance = 180},
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 5944, chance = 909},
    {id = 2488, chance = 800},
    {id = 2515, chance = 1333},
    {id = 2136, chance = 909},
    {id = 2542, chance = 500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=95
-- name=fire, interval=2000, chance=10, range=7, min=-80, max=-350, radius=4, target=1, shootEffect=fire, areaEffect=firearea
-- name=fire, interval=3000, chance=34, range=7, min=-120, max=-500, radius=2, target=1, shootEffect=fire, areaEffect=firearea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=50, min=155, max=255, areaEffect=blueshimmer
-- name=speed, interval=1000, chance=12, duration=4000, speedchange=320, areaEffect=redshimmer
-- name=invisible, interval=4000, chance=50, duration=4000, areaEffect=redshimmer
--]]

monster:register()
