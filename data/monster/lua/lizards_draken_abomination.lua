-- Draken Abomination
-- Auto-converted from XML

local monster = Game.createMonsterType("Draken Abomination")
if not monster then return end

monster:name("Draken Abomination")
monster:nameDescription("a draken abomination")
monster:health(6250)
monster:maxHealth(6250)
monster:experience(3800)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(12623)
monster:outfit({lookType = 357})
monster:defense(30)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Ugggh!", yell = false},
    {text = "Gll", yell = false},
})

-- Summons
monster:summons({
    {name = "Death Blob", chance = 10, interval = 2000, max = 2},
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 47000, maxCount = 98},
    {id = 2152, chance = 50590, maxCount = 8},
    {id = 2666, chance = 50450, maxCount = 4},
    {id = 8473, chance = 9400, maxCount = 3},
    {id = 7590, chance = 9950, maxCount = 3},
    {id = 12627, chance = 12110},
    {id = 12628, chance = 6240},
    {id = 9970, chance = 2900, maxCount = 4},
    {id = 8472, chance = 4905, maxCount = 3},
    {id = 7903, chance = 8730},
    {id = 12629, chance = 10940},
    {id = 8922, chance = 1020},
    {id = 12646, chance = 540},
    {id = 12644, chance = 10},
    {id = 12647, chance = 10},
    {id = 13538, chance = 360},
    {id = 11304, chance = 780},
    {id = 11301, chance = 470},
    {id = 11302, chance = 560},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=110, attack=70
-- name=fire, interval=2000, chance=10, min=-310, max=-630, length=4, spread=3, areaEffect=explosion
-- name=draken abomination curse, interval=2000, chance=10, range=5
-- name=death, interval=2000, chance=15, min=-170, max=-370, length=4, areaEffect=mortarea
-- name=drunk, interval=2000, chance=15, range=7, radius=4, duration=9000, shootEffect=poison, areaEffect=poison
-- name=physical, interval=2000, chance=10, range=7, radius=3, areaEffect=greenspark
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=15, min=650, max=700, areaEffect=blueshimmer
--]]

monster:register()
