-- Chizzoron the Distorter
-- Auto-converted from XML

local monster = Game.createMonsterType("Chizzoron the Distorter")
if not monster then return end

monster:name("Chizzoron the Distorter")
monster:nameDescription("chizzoron the distorter")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(7500)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:corpseId(11316)
monster:outfit({lookType = 340})
monster:defense(85)
monster:armor(70)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_DEATHDAMAGE, percent = 30},
    {type = COMBAT_ICEDAMAGE, percent = 20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Humanzzz! Leave Zzaion at onzzzze!", yell = false},
    {text = "I pray to my mazzterzz, the mighty dragonzzz!", yell = false},
    {text = "You are not worzzy to touch zzizz zzacred ground!", yell = false},
})

-- Summons
monster:summons({
    {name = "Lizard Dragon Priest", chance = 10, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 9971, chance = 71550, maxCount = 2},
    {id = 2148, chance = 69825, maxCount = 100},
    {id = 2148, chance = 69825, maxCount = 10},
    {id = 2149, chance = 5750},
    {id = 5881, chance = 100000},
    {id = 2155, chance = 16300},
    {id = 2169, chance = 11025},
    {id = 7591, chance = 5750},
    {id = 2492, chance = 5750},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=130
-- name=poison, interval=2000, chance=20, range=7, max=-430, radius=1, target=1, shootEffect=poison, areaEffect=poison
-- name=fire, interval=2000, chance=10, max=-874, spread=3, shootEffect=fire, areaEffect=firearea
-- name=physical, interval=2000, chance=15, min=-300, max=-646, radius=3, areaEffect=poff
-- name=lifedrain, interval=2000, chance=15, range=7, min=-148, max=-250, target=1, areaEffect=redshimmer
--]]

monster:register()
