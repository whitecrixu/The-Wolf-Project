-- Kreebosh the Exile
-- Converted from XML

local monster = Game.createMonsterType("Kreebosh the Exile")
if not monster then return end

monster:name("Kreebosh the Exile")
monster:nameDescription("kreebosh the exile")
monster:health(880)
monster:maxHealth(880)
monster:experience(350)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 103})
monster:defense(40)
monster:armor(30)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 55},
    {type = COMBAT_DEATHDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "I bet you wish you weren't here.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80},
    {name = "fire", interval = 6000, chance = 80, maxDamage = -120, radius = 3},
    {name = "speed", interval = 3500, chance = 35, range = 5, radius = 1},
    {name = "physical", interval = 6000, chance = 40, minDamage = -20, maxDamage = -100, range = 5, radius = 1},
    {name = "energy", interval = 5000, chance = 20, minDamage = -40, maxDamage = -200, range = 5, radius = 1},
    {name = "drunk", interval = 1000, chance = 20, range = 5, radius = 1},
    {name = "outfit", interval = 2000, chance = 50, range = 5, radius = 1}
})

monster:register()
