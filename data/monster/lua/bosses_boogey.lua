-- Boogey
-- Auto-converted from XML

local monster = Game.createMonsterType("Boogey")
if not monster then return end

monster:name("Boogey")
monster:nameDescription("a boogey")
monster:health(930)
monster:maxHealth(930)
monster:experience(475)
monster:speed(400)
monster:race(RACE_UNDEAD)
monster:corpseId(10324)
monster:outfit({lookType = 300})
monster:defense(50)
monster:armor(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_ICEDAMAGE, percent = 25},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -10},
})

-- Immunities
monster:immunities({
    {condition = CONDITION_CURSED, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_LIFEDRAIN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Since you didn't eat your spinach Bogey comes to get you!", yell = true},
    {text = "Too bad you did not eat your lunch, now I have to punish you!", yell = true},
    {text = "Even if you beat me, I'll hide in your closet until you one day drop your guard!", yell = true},
    {text = "You better had believe in me!", yell = true},
    {text = "I'll take you into the darkness ... forever!", yell = true},
})

-- Summons
monster:summons({
    {name = "demon skeleton", chance = 40, interval = 4000, max = 2},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=1200, chance=100, max=-120
-- name=physical, interval=1500, chance=30, range=7, max=-30, shootEffect=suddendeath, areaEffect=mortarea
-- name=death, interval=1500, chance=30, range=7, min=-12, max=-20, radius=4, target=1, shootEffect=fire, areaEffect=redspark
-- name=physical, interval=1500, chance=40, min=-20, max=-30, spread=3, shootEffect=suddendeath, areaEffect=mortarea
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=healing, interval=1000, chance=25, min=80, max=120, areaEffect=blueshimmer
--]]

monster:register()
