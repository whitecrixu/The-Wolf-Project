-- Acid Blob
-- Converted from XML

local monster = Game.createMonsterType("Acid Blob")
if not monster then return end

monster:name("Acid Blob")
monster:nameDescription("an acid blob")
monster:health(250)
monster:maxHealth(250)
monster:experience(250)
monster:speed(180)
monster:race(RACE_VENOM)
monster:corpseId(9962)
monster:outfit({lookType = 314})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Kzzchhh!", yell = false}
})

-- Loot
monster:loot({
    {id = 9967, chance = 14285}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -70},
    {name = "earth", interval = 2000, chance = 30, minDamage = -10, maxDamage = -20, radius = 4},
    {name = "earth", interval = 2000, chance = 15, minDamage = -40, maxDamage = -60, length = 5},
    {name = "poison", interval = 2000, chance = 10, range = 7}
})

monster:register()
