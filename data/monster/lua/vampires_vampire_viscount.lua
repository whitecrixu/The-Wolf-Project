-- Vampire Viscount
-- Auto-converted from XML

local monster = Game.createMonsterType("Vampire Viscount")
if not monster then return end

monster:name("Vampire Viscount")
monster:nameDescription("a vampire viscount")
monster:health(1200)
monster:maxHealth(1200)
monster:experience(800)
monster:speed(250)
monster:race(RACE_BLOOD)
monster:corpseId(21278)
monster:outfit({lookType = 555})
monster:defense(35)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_FIREDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ICEDAMAGE, percent = 5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
})

-- Voices
monster:voices({
    {text = "Prepare to BLEED!", yell = false},
    {text = "Don't struggle. We don't want to waste a drop of blood now, do we?", yell = false},
    {text = "Ah, refreshments have arrived!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 83000, maxCount = 50},
    {id = 7589, chance = 8180},
    {id = 10602, chance = 7200},
    {id = 7588, chance = 7100},
    {id = 21241, chance = 6560},
    {id = 21244, chance = 4460},
    {id = 2147, chance = 3040, maxCount = 2},
    {id = 12405, chance = 2910},
    {id = 2144, chance = 2500},
    {id = 2396, chance = 810},
    {id = 2156, chance = 540},
    {id = 2534, chance = 200},
    {id = 5911, chance = 70},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, max=-150
-- name=death, interval=2000, chance=15, range=6, min=-50, max=-100, radius=3, target=1, shootEffect=death, areaEffect=mortarea
-- name=bleedcondition, interval=2000, chance=10, min=-320, max=-560, radius=6, areaEffect=bats
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=outfit, interval=2000, chance=10, duration=4000
-- name=speed, interval=2000, chance=15, duration=4000, speedchange=300, areaEffect=redshimmer
--]]

monster:register()
