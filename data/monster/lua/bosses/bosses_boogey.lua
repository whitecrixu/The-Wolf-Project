-- Boogey
-- Converted from XML

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
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = 40},
    {type = COMBAT_ICEDAMAGE, percent = 25},
    {type = COMBAT_ENERGYDAMAGE, percent = -10},
    {type = COMBAT_HOLYDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Since you didn't eat your spinach Bogey comes to get you!", yell = true},
    {text = "Too bad you did not eat your lunch, now I have to punish you!", yell = true},
    {text = "Even if you beat me, I'll hide in your closet until you one day drop your guard!", yell = true},
    {text = "You better had believe in me!", yell = true},
    {text = "I'll take you into the darkness ... forever!", yell = true}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "physical", interval = 1500, chance = 30, maxDamage = -30, range = 7},
    {name = "death", interval = 1500, chance = 30, minDamage = -12, maxDamage = -20, range = 7, radius = 4},
    {name = "physical", interval = 1500, chance = 40, minDamage = -20, maxDamage = -30, spread = 3}
})

monster:register()
