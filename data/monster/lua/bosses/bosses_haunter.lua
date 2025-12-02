-- Haunter
-- Converted from XML

local monster = Game.createMonsterType("Haunter")
if not monster then return end

monster:name("Haunter")
monster:nameDescription("Haunter")
monster:health(8500)
monster:maxHealth(8500)
monster:experience(4000)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(9915)
monster:outfit({lookType = 320})
monster:defense(20)
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
    {type = COMBAT_DEATHDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Surrender and I'll end it quick!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "energy", interval = 2000, chance = 16, maxDamage = -130, radius = 3},
    {name = "poisoncondition", interval = 2000, chance = 16, range = 7}
})

monster:register()
