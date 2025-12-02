-- Doom Deer
-- Converted from XML

local monster = Game.createMonsterType("Doom Deer")
if not monster then return end

monster:name("Doom Deer")
monster:nameDescription("a doom deer")
monster:health(405)
monster:maxHealth(405)
monster:experience(200)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(5970)
monster:outfit({lookType = 31})
monster:defense(35)
monster:armor(30)
monster:runHealth(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I bet it was you who killed my mom!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "energy", interval = 4000, chance = 30, minDamage = -35, maxDamage = -55, length = 5}
})

monster:register()
