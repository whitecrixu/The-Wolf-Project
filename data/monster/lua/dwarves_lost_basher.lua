-- Lost Basher
-- Auto-converted from XML

local monster = Game.createMonsterType("Lost Basher")
if not monster then return end

monster:name("Lost Basher")
monster:nameDescription("a lost basher")
monster:health(2600)
monster:maxHealth(2600)
monster:experience(1800)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(19963)
monster:outfit({lookType = 538})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(80)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = 1},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_FIREDAMAGE, percent = 40},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Yhouuuu!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 100},
    {id = 2152, chance = 70000, maxCount = 2},
    {id = 2789, chance = 15170, maxCount = 2},
    {id = 20136, chance = 8800},
    {id = 8473, chance = 10250},
    {id = 7590, chance = 11240},
    {id = 9970, chance = 10200},
    {id = 20137, chance = 9470},
    {id = 20109, chance = 10930},
    {id = 20110, chance = 7320},
    {id = 13757, chance = 21130},
    {id = 20106, chance = 17260},
    {id = 20134, chance = 11870},
    {id = 20126, chance = 12500},
    {id = 2215, chance = 2560},
    {id = 2529, chance = 3710},
    {id = 7750, chance = 1200},
    {id = 5880, chance = 5280},
    {id = 2432, chance = 310},
    {id = 20108, chance = 1410},
    {id = 2114, chance = 4450},
    {id = 20106, chance = 14380},
    {id = 20107, chance = 1730},
    {id = 7452, chance = 420},
    {id = 7886, chance = 780},
    {id = 7427, chance = 160},
    {id = 2477, chance = 310},
    {id = 2454, chance = 120},
    {id = 18413, chance = 840},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=80, attack=78
-- name=physical, interval=2000, chance=15, range=7, max=-220, radius=3, target=1, shootEffect=whirlwindaxe, areaEffect=explosionarea
-- name=drunk, interval=2000, chance=15, radius=4, target=1, duration=6000, shootEffect=whirlwindclub, areaEffect=rednote
-- name=speed, interval=2000, chance=15, radius=2, duration=15000, speedchange=-650, areaEffect=energy
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=10, min=250, max=500, areaEffect=blueshimmer
--]]

monster:register()
