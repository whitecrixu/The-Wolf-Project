-- The Obliverator
-- Converted from XML

local monster = Game.createMonsterType("The Obliverator")
if not monster then return end

monster:name("The Obliverator")
monster:nameDescription("the obliverator")
monster:health(9500)
monster:maxHealth(9500)
monster:experience(6000)
monster:speed(280)
monster:race(RACE_FIRE)
monster:corpseId(7349)
monster:outfit({lookType = 35})
monster:defense(45)
monster:armor(40)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 50},
    {type = COMBAT_DEATHDAMAGE, percent = 35},
    {type = COMBAT_HOLYDAMAGE, percent = -15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "NO ONE WILL BEAT ME!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -230},
    {name = "fire", interval = 1000, chance = 20, minDamage = -100, maxDamage = -250, range = 5, radius = 7},
    {name = "energy", interval = 3000, chance = 30, minDamage = -200, maxDamage = -500, length = 8}
})

monster:register()
