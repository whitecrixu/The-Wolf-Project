-- Spectral Scum
-- Converted from XML

local monster = Game.createMonsterType("Spectral Scum")
if not monster then return end

monster:name("Spectral Scum")
monster:nameDescription("a spectral scum")
monster:health(100)
monster:maxHealth(100)
monster:experience(5)
monster:speed(200)
monster:race(RACE_UNDEAD)
monster:corpseId(6070)
monster:outfit({lookType = 195})
monster:defense(19)
monster:armor(18)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_POISON, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Booze! More booze!", yell = false},
    {text = "Harrr Harrr!", yell = false},
    {text = "<Burp>", yell = false},
    {text = "<Fart>", yell = false},
    {text = "Nothing better than plundering and getting palstered!", yell = false},
    {text = "Yarrr!", yell = false},
    {text = "A pirate's unlife for me!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "drunk", interval = 5000, chance = 10, range = 4}
})

monster:register()
