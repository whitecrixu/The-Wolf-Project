-- Overcharged Energy Elemental
-- Converted from XML

local monster = Game.createMonsterType("Overcharged Energy Elemental")
if not monster then return end

monster:name("Overcharged Energy Elemental")
monster:nameDescription("an orvercharged energy elemental")
monster:health(1700)
monster:maxHealth(1700)
monster:experience(1300)
monster:speed(300)
monster:race(RACE_UNDEAD)
monster:corpseId(8966)
monster:outfit({lookType = 290})
monster:defense(35)
monster:armor(35)
monster:runHealth(170)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "BZZZZZZZZZZ", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 100},
    {id = 2148, chance = 50000, maxCount = 56},
    {id = 8303, chance = 14285},
    {id = 7591, chance = 10000},
    {id = 2150, chance = 10000, maxCount = 2},
    {id = 7439, chance = 2173}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "energy", interval = 1000, chance = 11, maxDamage = -250, radius = 4},
    {name = "energy", interval = 1000, chance = 12, maxDamage = -300, range = 3},
    {name = "physical", interval = 1000, chance = 12, maxDamage = -200, radius = 4}
})

monster:register()
