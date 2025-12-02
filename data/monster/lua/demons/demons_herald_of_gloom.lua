-- Herald of Gloom
-- Converted from XML

local monster = Game.createMonsterType("Herald of Gloom")
if not monster then return end

monster:name("Herald of Gloom")
monster:nameDescription("a herald of gloom")
monster:health(450)
monster:maxHealth(450)
monster:experience(450)
monster:speed(260)
monster:race(RACE_UNDEAD)
monster:corpseId(9915)
monster:outfit({lookType = 320})
monster:defense(55)
monster:armor(50)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_ENERGYDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5},
    {type = COMBAT_ICEDAMAGE, percent = 20},
    {type = COMBAT_HOLYDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "The powers of light are waning.", yell = true},
    {text = "You will join us in eternal night!", yell = true},
    {text = "The shadows will engulf the world.", yell = true}
})

-- Loot
monster:loot({
    {id = 10531, chance = 1886}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "speed", interval = 3000, chance = 10, range = 7},
    {name = "divine missile", interval = 2000, chance = 24, minDamage = -90, maxDamage = -170}
})

monster:register()
