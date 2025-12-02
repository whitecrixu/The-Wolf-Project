-- Deathbringer
-- Auto-converted from XML

local monster = Game.createMonsterType("Deathbringer")
if not monster then return end

monster:name("Deathbringer")
monster:nameDescription("deathbringer")
monster:health(10000)
monster:maxHealth(10000)
monster:experience(5100)
monster:speed(300)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 231})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = -15},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_FREEZING, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "YOU FOOLS WILL PAY!", yell = true},
    {text = "YOU ALL WILL DIE!!", yell = true},
    {text = "DEATH, DESTRUCTION!", yell = true},
    {text = "I will eat your soul!", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=50, attack=155
-- name=fire, interval=1000, chance=10, range=7, min=-80, max=-120, radius=4, target=1, shootEffect=fire, areaEffect=redspark
-- name=fire, interval=3000, chance=17, min=-300, max=-450, length=8, spread=3, areaEffect=firearea
-- name=poison, interval=2000, chance=12, min=-300, max=-450, length=8, spread=3, areaEffect=poison
-- name=lifedrain, interval=2000, chance=10, min=-80, max=-100, radius=6, areaEffect=poff
-- name=lifedrain, interval=3000, chance=25, range=7, min=-80, max=-150, areaEffect=redshimmer
--]]

monster:register()
