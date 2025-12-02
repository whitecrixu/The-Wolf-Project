-- Teleskor
-- Converted from XML

local monster = Game.createMonsterType("Teleskor")
if not monster then return end

monster:name("Teleskor")
monster:nameDescription("Teleskor")
monster:health(80)
monster:maxHealth(80)
monster:experience(70)
monster:speed(150)
monster:race(RACE_UNDEAD)
monster:corpseId(5972)
monster:outfit({lookType = 298})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "Who disturbs my slumber?", yell = false},
    {text = "Mourn the dead, do not hunt them!", yell = false}
})

-- Loot
monster:loot({
    {id = 12437, chance = 100000},
    {id = 2148, chance = 81000, maxCount = 79},
    {id = 2398, chance = 72000},
    {id = 2473, chance = 72000},
    {id = 2511, chance = 45000},
    {id = 2050, chance = 36000},
    {id = 2388, chance = 27000},
    {id = 2376, chance = 27000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30}
})

monster:register()
