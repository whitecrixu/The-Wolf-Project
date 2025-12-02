-- Evil Mastermind
-- Auto-converted from XML

local monster = Game.createMonsterType("Evil Mastermind")
if not monster then return end

monster:name("Evil Mastermind")
monster:nameDescription("a evil mastermind")
monster:health(1095)
monster:maxHealth(1095)
monster:experience(675)
monster:speed(350)
monster:race(RACE_UNDEAD)
monster:corpseId(10321)
monster:outfit({lookType = 256})
monster:defense(30)
monster:armor(30)
monster:targetDistance(3)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 90},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "You won't stop my masterplan to flood the world market with fake Bonelord language dictionaries!", yell = false},
    {text = "My calculations tell me you'll die!", yell = false},
    {text = "You can't stop me!", yell = false},
    {text = "Beware! My evil monolog is coming!", yell = false},
})

-- Summons
monster:summons({
    {name = "vampire", chance = 40, interval = 2000, max = 1},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, max=-77
-- name=physical, interval=2000, chance=30, range=7, min=-50, max=-78, shootEffect=suddendeath, areaEffect=mortarea
-- name=fire, interval=2000, chance=30, range=7, min=-66, max=-72, radius=4, target=1, shootEffect=fire, areaEffect=firearea
-- name=energy, interval=2000, chance=30, range=7, min=-36, max=-57, shootEffect=energy, areaEffect=energyarea
-- name=lifedrain, interval=2000, chance=30, range=7, min=-70, max=-73, areaEffect=redshimmer
-- name=manadrain, interval=2000, chance=30, range=7, min=-59, max=-75, areaEffect=redshimmer
-- name=speed, interval=2000, chance=15, range=7, duration=20000, speedchange=-600, areaEffect=redshimmer
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=2000, chance=30, min=50, max=110, areaEffect=energy
--]]

monster:register()
