-- Heoni
-- Converted from XML

local monster = Game.createMonsterType("Heoni")
if not monster then return end

monster:name("Heoni")
monster:nameDescription("heoni")
monster:health(795)
monster:maxHealth(795)
monster:experience(515)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(6302)
monster:outfit({lookType = 239})
monster:defense(18)
monster:armor(25)
monster:runHealth(79)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Shriiiek", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -20, maxDamage = -240, length = 8, spread = 3},
    {name = "drunk", interval = 2000, chance = 13, length = 8, spread = 3}
})

monster:register()
