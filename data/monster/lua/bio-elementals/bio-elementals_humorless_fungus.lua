-- Humorless Fungus
-- Converted from XML

local monster = Game.createMonsterType("Humorless Fungus")
if not monster then return end

monster:name("Humorless Fungus")
monster:nameDescription("a humorless fungus")
monster:health(8000)
monster:maxHealth(8000)
monster:experience(0)
monster:speed(230)
monster:race(RACE_VENOM)
monster:corpseId(17428)
monster:outfit({lookType = 517})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 5},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_ENERGYDAMAGE, percent = 15},
    {type = COMBAT_ICEDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Munch munch munch!", yell = false},
    {text = "Chatter", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -185},
    {name = "earth", interval = 2000, chance = 10, minDamage = -40, maxDamage = -197, range = 7},
    {name = "ice", interval = 2000, chance = 10, maxDamage = -525, range = 7},
    {name = "poisoncondition", interval = 2000, chance = 10, minDamage = -400, maxDamage = -640, range = 7, radius = 3},
    {name = "drunk", interval = 2000, chance = 10, range = 7, radius = 4}
})

monster:register()
