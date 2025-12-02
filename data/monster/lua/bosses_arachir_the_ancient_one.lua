-- Arachir the ancient one
-- Auto-converted from XML

local monster = Game.createMonsterType("Arachir the ancient one")
if not monster then return end

monster:name("Arachir the ancient one")
monster:nameDescription("a vampire lord")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1800)
monster:speed(300)
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
    {text = "I was the shadow that haunted the cradle of humanity!", yell = false},
    {text = "I exist since eons and you want to defy me?", yell = false},
    {text = "Can you feel the passage of time, mortal?", yell = false},
})

-- Summons
monster:summons({
    {name = "Lich", chance = 100, interval = 9000, max = 1},
    {name = "Lich", chance = 100, interval = 9000, max = 1},
})

-- Loot
monster:loot({
    {id = 7416, chance = 1200},
    {id = 7588, chance = 10000},
    {id = 2229, chance = 10000},
    {id = 2148, chance = 100000, maxCount = 98},
    {id = 9020, chance = 100000},
    {id = 2152, chance = 100000, maxCount = 5},
    {id = 2216, chance = 11111},
    {id = 2534, chance = 6300},
    {id = 2144, chance = 100000},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=70, attack=95
-- name=death, interval=9000, chance=100, min=-120, max=-300, radius=3, areaEffect=mortarea
-- name=death, interval=1000, chance=12, max=-120, target=1, areaEffect=mortarea, shootEffect=suddendeath
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=12, min=100, max=235, areaEffect=blueshimmer
-- name=invisible, interval=3000, chance=25, duration=6000, areaEffect=blueshimmer
-- name=outfit, interval=4500, chance=30, duration=4000
--]]

monster:register()
