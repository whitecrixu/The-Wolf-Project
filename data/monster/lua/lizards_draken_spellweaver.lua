-- Draken Spellweaver
-- Auto-converted from XML

local monster = Game.createMonsterType("Draken Spellweaver")
if not monster then return end

monster:name("Draken Spellweaver")
monster:nameDescription("a draken spellweaver")
monster:health(5000)
monster:maxHealth(5000)
monster:experience(3100)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(11316)
monster:outfit({lookType = 340})
monster:defense(25)
monster:armor(25)
monster:targetDistance(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 75},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Kazzzzuuuum!!", yell = false},
    {text = "Fissziss!", yell = false},
    {text = "Zzzzzooom!!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 41000, maxCount = 100},
    {id = 2148, chance = 58000, maxCount = 100},
    {id = 2152, chance = 25510, maxCount = 5},
    {id = 2147, chance = 6910, maxCount = 5},
    {id = 8871, chance = 1450},
    {id = 2666, chance = 30400},
    {id = 13294, chance = 30},
    {id = 11303, chance = 1980},
    {id = 2187, chance = 1660},
    {id = 11314, chance = 19790},
    {id = 7590, chance = 4970},
    {id = 2123, chance = 370},
    {id = 13538, chance = 180},
    {id = 12410, chance = 1980},
    {id = 11355, chance = 620},
    {id = 11315, chance = 10},
    {id = 12614, chance = 3930},
    {id = 11356, chance = 770},
    {id = 2155, chance = 970},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=63
-- name=fire, interval=2000, chance=10, min=-240, max=-480, length=4, spread=3, areaEffect=explosion
-- name=fire, interval=2000, chance=10, range=7, min=-100, max=-250, target=1, shootEffect=fire, areaEffect=firearea
-- name=energy, interval=2000, chance=10, range=7, min=-150, max=-300, target=1, shootEffect=energy, areaEffect=energy
-- name=earth, interval=2000, chance=10, min=-200, max=-380, radius=4, target=1, areaEffect=poff
-- name=soulfire, interval=2000, chance=10
-- name=poisoncondition, interval=2000, chance=10, min=-280, max=-360, target=1, shootEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=invisible, interval=2000, chance=10, duration=5000, areaEffect=redshimmer
-- name=healing, interval=2000, chance=15, min=270, max=530, areaEffect=blueshimmer
--]]

monster:register()
