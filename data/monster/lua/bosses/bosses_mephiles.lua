-- Mephiles
-- Converted from XML

local monster = Game.createMonsterType("Mephiles")
if not monster then return end

monster:name("Mephiles")
monster:nameDescription("a mephiles")
monster:health(415)
monster:maxHealth(415)
monster:experience(415)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(10323)
monster:outfit({lookType = 237})
monster:defense(35)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 50},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -5},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I have a contract here which you should sign!", yell = false},
    {text = "I sence so much potential in you. It's almost a shame I have to kill you.", yell = false},
    {text = "Yes, slay me for the loot I might have. Give in to your greed.", yell = false},
    {text = "Wealth, Power, it is all at your fingertips. All you have to do is a bit blackmailing and bullying.", yell = false},
    {text = "Come on. being a bit evil won't hurt you.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -35},
    {name = "fire", interval = 1500, chance = 70, minDamage = -15, maxDamage = -45, range = 7, radius = 2}
})

monster:register()
