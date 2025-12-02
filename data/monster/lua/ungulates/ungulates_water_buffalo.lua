-- Water Buffalo
-- Converted from XML

local monster = Game.createMonsterType("Water Buffalo")
if not monster then return end

monster:name("Water Buffalo")
monster:nameDescription("a water buffalo")
monster:health(390)
monster:maxHealth(390)
monster:experience(20)
monster:speed(210)
monster:race(RACE_BLOOD)
monster:corpseId(19701)
monster:outfit({lookType = 523})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "Gnorrr!", yell = false},
    {text = "Gnarrr!", yell = false},
    {text = "<snort>", yell = false},
    {text = "Mrrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 20},
    {id = 2666, chance = 33600, maxCount = 4},
    {id = 2671, chance = 39200, maxCount = 3}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -40}
})

monster:register()
