-- Blood Beast
-- Auto-converted from XML

local monster = Game.createMonsterType("Blood Beast")
if not monster then return end

monster:name("Blood Beast")
monster:nameDescription("a blood beast")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1000)
monster:speed(220)
monster:race(RACE_VENOM)
monster:corpseId(23351)
monster:outfit({lookType = 602})
monster:defense(36)
monster:armor(23)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_FIREDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Rawrrr!", yell = false},
    {text = "*grlb*", yell = false},
    {text = "Roarr!", yell = false},
})

-- Loot
monster:loot({
    {id = 23566, chance = 16010},
    {id = 10557, chance = 5080},
    {id = 23517, chance = 3720},
    {id = 2148, chance = 100000, maxCount = 139},
    {id = 23565, chance = 20040},
    {id = 7588, chance = 7710},
    {id = 7366, chance = 8290, maxCount = 5},
    {id = 23554, chance = 850},
    {id = 23550, chance = 810},
    {id = 23549, chance = 810},
    {id = 23551, chance = 1050},
    {id = 23529, chance = 780},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=82, attack=50
-- name=poison, interval=2000, chance=10, range=5, min=-65, max=-105, target=1, shootEffect=greenstar, areaEffect=poison
-- name=poisoncondition, interval=2000, chance=17, min=-300, max=-400, radius=4, areaEffect=greenshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=8, duration=6000, speedchange=314, areaEffect=redshimmer
-- name=healing, interval=2000, chance=7, min=80, max=120, areaEffect=blueshimmer
--]]

monster:register()
