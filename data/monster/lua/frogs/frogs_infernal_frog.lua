-- Infernal Frog
-- Converted from XML

local monster = Game.createMonsterType("Infernal Frog")
if not monster then return end

monster:name("Infernal Frog")
monster:nameDescription("a infernal frog")
monster:health(655)
monster:maxHealth(655)
monster:experience(190)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(6079)
monster:outfit({lookType = 224, lookHead = 69, lookBody = 66, lookLegs = 69, lookFeet = 66})
monster:defense(5)
monster:armor(5)
monster:runHealth(65)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Ribbit!", yell = false},
    {text = "Ribbit! Ribbit!", yell = false},
    {text = "No Kisses for you!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 77000, maxCount = 65}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -20},
    {name = "earth", interval = 2000, chance = 30, minDamage = -16, maxDamage = -32}
})

monster:register()
