-- Deadeye Devious
-- Converted from XML

local monster = Game.createMonsterType("Deadeye Devious")
if not monster then return end

monster:name("Deadeye Devious")
monster:nameDescription("deadeye devious")
monster:health(2000)
monster:maxHealth(2000)
monster:experience(500)
monster:speed(300)
monster:race(RACE_BLOOD)
monster:corpseId(20378)
monster:outfit({lookType = 151, lookHead = 115, lookBody = 76, lookLegs = 35, lookFeet = 117, lookAddons = 2})
monster:defense(50)
monster:armor(35)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Let's kill 'em", yell = false},
    {text = "Arrrgh!", yell = false},
    {text = "You'll never take me alive!", yell = false}
})

-- Loot
monster:loot({
    {id = 6102, chance = 100000},
    {id = 2148, chance = 100000, maxCount = 65},
    {id = 2476, chance = 1200},
    {id = 2463, chance = 4000},
    {id = 2320, chance = 100000, maxCount = 2},
    {id = 5926, chance = 4000},
    {id = 2666, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -250, maxDamage = -550},
    {name = "physical", interval = 4000, chance = 60, minDamage = -200, maxDamage = -250}
})

monster:register()
