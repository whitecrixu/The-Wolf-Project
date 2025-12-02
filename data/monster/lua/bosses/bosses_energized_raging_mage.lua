-- Energized Raging Mage
-- Auto-converted from XML

local monster = Game.createMonsterType("Energized Raging Mage")
if not monster then return end

monster:name("Energized Raging Mage")
monster:nameDescription("an energized raging mage")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(0)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 423})
monster:defense(35)
monster:armor(35)
monster:runHealth(300)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -50},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Behold the all permeating powers I draw from this gate!!", yell = false},
    {text = "ENERGY!!", yell = false},
    {text = "I FEEL, I FEEEEL... OMNIPOTENCE!!", yell = false},
    {text = "MWAAAHAHAAA!! NO ONE!! NO ONE CAN DEFEAT MEEE!!!", yell = false},
})

-- Summons
monster:summons({
    {name = "Golden Servant", chance = 50, interval = 2000, max = 1},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=monster/energized raging mage skill reducer.lua, interval=3000, chance=15
-- name=energyfield, interval=2000, chance=20, range=7, radius=2, target=1, shootEffect=energy
-- name=melee, interval=2000, chance=100, skill=32, attack=37
-- name=thunderstorm, interval=2000, chance=40, range=7, min=-150, max=-230, target=1
-- name=manadrain, interval=2000, chance=20, range=7, min=-100, max=-210
-- name=energy, interval=2000, chance=25, min=-200, max=-300, length=8, areaEffect=bigclouds
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=20, min=155, max=200, areaEffect=blueshimmer
--]]

monster:register()
