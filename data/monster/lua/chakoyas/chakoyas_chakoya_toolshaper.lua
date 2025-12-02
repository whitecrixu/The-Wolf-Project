-- Chakoya Toolshaper
-- Converted from XML

local monster = Game.createMonsterType("Chakoya Toolshaper")
if not monster then return end

monster:name("Chakoya Toolshaper")
monster:nameDescription("a chakoya toolshaper")
monster:health(80)
monster:maxHealth(80)
monster:experience(40)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(7320)
monster:outfit({lookType = 259})
monster:defense(10)
monster:armor(10)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 40},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = -15},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Chikuva!!", yell = false},
    {text = "Jinuma jamjam!", yell = false},
    {text = "Suvituka siq chuqua!", yell = false},
    {text = "Kiyosa sipaju!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 60000, maxCount = 20},
    {id = 2667, chance = 25000, maxCount = 2},
    {id = 2398, chance = 4000},
    {id = 2553, chance = 940},
    {id = 2541, chance = 870},
    {id = 7381, chance = 150},
    {id = 7441, chance = 470},
    {id = 7159, chance = 100},
    {id = 2669, chance = 120},
    {id = 7158, chance = 170}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -45},
    {name = "physical", interval = 2000, chance = 10, maxDamage = -45, range = 7, radius = 3}
})

monster:register()
