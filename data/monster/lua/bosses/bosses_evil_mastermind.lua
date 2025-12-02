-- Evil Mastermind
-- Converted from XML

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

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_PHYSICALDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 90},
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "You won't stop my masterplan to flood the world market with fake Bonelord language dictionaries!", yell = false},
    {text = "My calculations tell me you'll die!", yell = false},
    {text = "You can't stop me!", yell = false},
    {text = "Beware! My evil monolog is coming!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 1200, chance = 100, minDamage = 0, maxDamage = -77},
    {name = "physical", interval = 2000, chance = 30, minDamage = -50, maxDamage = -78, range = 7},
    {name = "fire", interval = 2000, chance = 30, minDamage = -66, maxDamage = -72, range = 7, radius = 4},
    {name = "energy", interval = 2000, chance = 30, minDamage = -36, maxDamage = -57, range = 7},
    {name = "lifedrain", interval = 2000, chance = 30, minDamage = -70, maxDamage = -73, range = 7},
    {name = "manadrain", interval = 2000, chance = 30, minDamage = -59, maxDamage = -75, range = 7},
    {name = "speed", interval = 2000, chance = 15, range = 7}
})

monster:register()
