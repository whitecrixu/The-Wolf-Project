-- Pythius The Rotten
-- Auto-converted from XML

local monster = Game.createMonsterType("Pythius The Rotten")
if not monster then return end

monster:name("Pythius The Rotten")
monster:nameDescription("a Pythius The Rotten")
monster:health(9500)
monster:maxHealth(9500)
monster:experience(7000)
monster:speed(350)
monster:race(RACE_UNDEAD)
monster:corpseId(7349)
monster:outfit({lookType = 231})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -20},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "YOU'LL NEVER GET MY TREASURE!", yell = true},
    {text = "MINIONS, MEET YOUR NEW BROTHER!", yell = true},
    {text = "YOU WILL REGRET THAT YOU ARE BORN!", yell = true},
    {text = "YOU MADE A HUGE WASTE!", yell = true},
    {text = "I SENSE LIFE", yell = true},
})

-- Summons
monster:summons({
    {name = "Undead Gladiator", chance = 10, interval = 1000, max = 1},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1950, chance=100, skill=60, attack=60
-- name=melee, interval=2000, chance=16, range=7, max=-795, radius=4, target=1, shootEffect=fire, areaEffect=redspark
-- name=physical, interval=2800, chance=15, range=7, max=-400, shootEffect=suddendeath, areaEffect=mortarea
-- name=poison, interval=2000, chance=17, range=7, min=-55, max=-155, radius=4, target=1, shootEffect=poison, areaEffect=poison
-- name=earth, interval=2500, chance=14, min=-333, max=-413, length=8, spread=3, areaEffect=poison
-- name=death, interval=2000, chance=18, min=-165, max=-200, length=7, areaEffect=redspark
-- name=manadrain, interval=2500, chance=22, range=8, min=-85, max=-110, shootEffect=ice
-- name=drowncondition, interval=1000, chance=45, length=8, spread=3, areaEffect=poff
--]]

monster:register()
