-- Zevelon Duskbringer
-- Auto-converted from XML

local monster = Game.createMonsterType("Zevelon Duskbringer")
if not monster then return end

monster:name("Zevelon Duskbringer")
monster:nameDescription("a vampire lord")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(310)
monster:race(RACE_UNDEAD)
monster:corpseId(8937)
monster:outfit({lookType = 287})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Human blood is not suitable for drinking", yell = false},
    {text = "Your short live is coming to an end", yell = false},
    {text = "Ashari Mortals. Come and stay forever!", yell = false},
})

-- Summons
monster:summons({
    {name = "Vampire", chance = 40, interval = 3000, max = 1},
})

-- Loot
monster:loot({
    {id = 7588, chance = 4000},
    {id = 2144, chance = 8000},
    {id = 9020, chance = 100000},
    {id = 2152, chance = 50000, maxCount = 5},
    {id = 2148, chance = 100000, maxCount = 75},
    {id = 2216, chance = 11111},
    {id = 2534, chance = 4500},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=65, attack=75
-- name=death, interval=1000, chance=12, max=-200, target=1, areaEffect=mortarea, shootEffect=suddendeath
-- name=speed, interval=2000, chance=15, target=1, speedchange=-700
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=12, min=100, max=235, areaEffect=blueshimmer
-- name=invisible, interval=3000, chance=25, duration=6000, areaEffect=blueshimmer
--]]

monster:register()
