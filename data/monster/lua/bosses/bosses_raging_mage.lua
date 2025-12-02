-- Raging mage
-- Converted from XML

local monster = Game.createMonsterType("Raging mage")
if not monster then return end

monster:name("Raging mage")
monster:nameDescription("raging mage")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(3250)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(13834)
monster:outfit({lookType = 416})
monster:defense(25)
monster:armor(25)
monster:runHealth(350)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -25},
    {type = COMBAT_DEATHDAMAGE, percent = 15}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Behold the all permeating powers I draw from this gate!!", yell = false},
    {text = "ENERGY!!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 97000, maxCount = 169},
    {id = 2152, chance = 77400, maxCount = 9},
    {id = 5911, chance = 31100},
    {id = 7591, chance = 26830, maxCount = 5},
    {id = 7590, chance = 23170, maxCount = 5},
    {id = 2178, chance = 9760},
    {id = 7443, chance = 6710, maxCount = 2},
    {id = 8871, chance = 4880},
    {id = 2165, chance = 4880},
    {id = 12410, chance = 4270},
    {id = 2792, chance = 3600, maxCount = 4},
    {id = 7368, chance = 1830, maxCount = 7},
    {id = 2124, chance = 1830},
    {id = 2123, chance = 1830},
    {id = 2146, chance = 1830, maxCount = 5},
    {id = 13940, chance = 1220},
    {id = 2114, chance = 1220},
    {id = 9958, chance = 1220},
    {id = 2195, chance = 610},
    {id = 9980, chance = 610},
    {id = 5741, chance = 610},
    {id = 8902, chance = 610}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -50},
    {name = "thunderstorm", interval = 2000, chance = 35, minDamage = -100, maxDamage = -200, range = 7},
    {name = "manadrain", interval = 2000, chance = 15, minDamage = -100, maxDamage = -200, range = 7},
    {name = "energyfield", interval = 2000, chance = 15, range = 7, radius = 2}
})

monster:register()
