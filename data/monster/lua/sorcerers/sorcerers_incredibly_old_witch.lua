-- Incredibly Old Witch
-- Converted from XML

local monster = Game.createMonsterType("Incredibly Old Witch")
if not monster then return end

monster:name("Incredibly Old Witch")
monster:nameDescription("a incredibly old witch")
monster:health(1000000)
monster:maxHealth(1000000)
monster:experience(0)
monster:speed(180)
monster:race(RACE_BLOOD)
monster:corpseId(6081)
monster:outfit({lookType = 54, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50})
monster:defense(0)
monster:armor(0)
monster:runHealth(100000)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Feel the wrath of the witch!", yell = false},
    {text = "Oh how you will regret to have distubed me!", yell = false},
    {text = "Everyone is so stupid!", yell = false},
    {text = "Stupid people!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4},
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4},
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4},
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4},
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4},
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4},
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4},
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4},
    {name = "outfit", interval = 1000, chance = 12, range = 7, radius = 4}
})

monster:register()
