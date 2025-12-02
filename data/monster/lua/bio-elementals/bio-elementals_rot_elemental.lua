-- Rot Elemental
-- Auto-converted from XML

local monster = Game.createMonsterType("Rot Elemental")
if not monster then return end

monster:name("Rot Elemental")
monster:nameDescription("a rot elemental")
monster:health(850)
monster:maxHealth(850)
monster:experience(750)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(23481)
monster:outfit({lookType = 615})
monster:defense(15)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 30},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "*glibb*", yell = false},
    {text = "*splib*", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 80},
    {id = 2152, chance = 10390},
    {id = 7588, chance = 10310},
    {id = 7589, chance = 9990},
    {id = 23553, chance = 14320},
    {id = 2168, chance = 1630},
    {id = 2146, chance = 5110},
    {id = 9970, chance = 4140, maxCount = 2},
    {id = 2149, chance = 5340, maxCount = 2},
    {id = 2155, chance = 80},
    {id = 23554, chance = 130},
    {id = 23551, chance = 60},
    {id = 23529, chance = 5660},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=58, attack=50
-- name=earth, interval=2000, chance=13, range=7, min=-150, max=-250, radius=3, target=1, shootEffect=gloothspear, areaEffect=poison
-- name=earth, interval=2000, chance=15, min=-150, max=-230, length=6, areaEffect=poison
-- name=poisoncondition, interval=2000, chance=10, range=7, min=-200, max=-300, target=1, shootEffect=poison, areaEffect=poison
-- name=rot elemental paralyze, interval=2000, chance=11
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=7, min=40, max=60, areaEffect=blueshimmer
-- name=speed, interval=2000, chance=9, duration=7000, speedchange=470, areaEffect=smoke
--]]

monster:register()
