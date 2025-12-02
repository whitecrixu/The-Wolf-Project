-- Goblin Assassin
-- Auto-converted from XML

local monster = Game.createMonsterType("Goblin Assassin")
if not monster then return end

monster:name("Goblin Assassin")
monster:nameDescription("a goblin assassin")
monster:health(75)
monster:maxHealth(75)
monster:experience(52)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(360)
monster:corpseId(6002)
monster:outfit({lookType = 296})
monster:defense(15)
monster:armor(15)
monster:runHealth(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = 1},
    {type = COMBAT_DEATHDAMAGE, percent = -1},
})

-- Voices
monster:voices({
    {text = "Goblin Powahhh!", yell = false},
    {text = "Me kill you!", yell = false},
    {text = "Me green menace!", yell = false},
    {text = "Gobabunga!", yell = false},
    {text = "Gooobliiiins!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 9},
    {id = 2667, chance = 12400},
    {id = 2449, chance = 4770},
    {id = 2406, chance = 8820},
    {id = 2230, chance = 13000},
    {id = 2379, chance = 17000},
    {id = 2467, chance = 7240},
    {id = 2559, chance = 9800},
    {id = 1294, chance = 9900, maxCount = 3},
    {id = 2235, chance = 6610},
    {id = 2461, chance = 13000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=10, attack=15
-- name=drunk, interval=2000, chance=10, duration=10000, shootEffect=poison
-- name=physical, interval=2000, chance=10, range=6, max=-35, shootEffect=throwingknife
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=10, duration=2000, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=15, duration=3000, speedchange=100, areaEffect=redshimmer
--]]

monster:register()
