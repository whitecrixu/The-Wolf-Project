-- Mad Technomancer
-- Converted from XML

local monster = Game.createMonsterType("Mad Technomancer")
if not monster then return end

monster:name("Mad Technomancer")
monster:nameDescription("mad technomancer")
monster:health(1000)
monster:maxHealth(1000)
monster:experience(55)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6015)
monster:outfit({lookType = 66})
monster:defense(15)
monster:armor(15)
monster:runHealth(100)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 80},
    {type = COMBAT_FIREDAMAGE, percent = 60},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I'm going to make them an offer they can't refuse.", yell = false},
    {text = "My masterplan cannot fail!", yell = false},
    {text = "Gentlemen, you can't fight here! This is the War Room!", yell = false}
})

-- Loot
monster:loot({
    {id = 7699, chance = 1000000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "fire", interval = 1000, chance = 10, minDamage = -50, maxDamage = -120, range = 7, radius = 4},
    {name = "physical", interval = 1000, chance = 34, minDamage = -55, maxDamage = -105, range = 7},
    {name = "manadrain", interval = 1000, chance = 25, minDamage = -50, maxDamage = -80, range = 7}
})

monster:register()
