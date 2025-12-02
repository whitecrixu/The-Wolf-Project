-- Wyvern
-- Converted from XML

local monster = Game.createMonsterType("Wyvern")
if not monster then return end

monster:name("Wyvern")
monster:nameDescription("a wyvern")
monster:health(795)
monster:maxHealth(795)
monster:experience(515)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(6302)
monster:outfit({lookType = 239})
monster:defense(25)
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
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Shriiiek", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 90},
    {id = 2672, chance = 60500, maxCount = 3},
    {id = 2547, chance = 3400, maxCount = 2},
    {id = 2146, chance = 5000},
    {id = 7588, chance = 2500},
    {id = 2187, chance = 810},
    {id = 7408, chance = 410},
    {id = 2127, chance = 540},
    {id = 10561, chance = 12300}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -240, maxDamage = -240, length = 8, spread = 3},
    {name = "drunk", interval = 2000, chance = 10, length = 3, spread = 2}
})

monster:register()
