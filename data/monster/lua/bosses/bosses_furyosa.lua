-- Furyosa
-- Converted from XML

local monster = Game.createMonsterType("Furyosa")
if not monster then return end

monster:name("Furyosa")
monster:nameDescription("Furyosa")
monster:health(25000)
monster:maxHealth(25000)
monster:experience(11500)
monster:speed(270)
monster:race(RACE_BLOOD)
monster:corpseId(20399)
monster:outfit({lookType = 149, lookHead = 94, lookBody = 77, lookLegs = 96, lookAddons = 3})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ICEDAMAGE, percent = 40},
    {type = COMBAT_HOLYDAMAGE, percent = 40},
    {type = COMBAT_DEATHDAMAGE, percent = 10},
    {type = COMBAT_ENERGYDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "MUHAHA!", yell = false},
    {text = "Back in black!", yell = false},
    {text = "Die!", yell = false},
    {text = "Dieeee!", yell = false},
    {text = "Caaarnaaage!", yell = false},
    {text = "Ahhhhrrrr!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 200},
    {id = 8844, chance = 100000, maxCount = 5},
    {id = 21400, chance = 45000},
    {id = 2152, chance = 85000, maxCount = 25},
    {id = 6558, chance = 35000, maxCount = 3},
    {id = 6500, chance = 22500},
    {id = 2470, chance = 130},
    {id = 7591, chance = 10500},
    {id = 2666, chance = 25000},
    {id = 7456, chance = 2000},
    {id = 5022, chance = 1500, maxCount = 4},
    {id = 5911, chance = 4000},
    {id = 9813, chance = 1920},
    {id = 2120, chance = 8000, maxCount = 3},
    {id = 5944, chance = 21500},
    {id = 2645, chance = 790},
    {id = 2181, chance = 20000},
    {id = 7404, chance = 660},
    {id = 5944, chance = 50},
    {id = 2124, chance = 410},
    {id = 6301, chance = 60},
    {id = 2539, chance = 100},
    {id = 21725, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -625},
    {name = "death", interval = 2000, chance = 20, minDamage = -260, maxDamage = -310, radius = 6},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -50, maxDamage = -210, length = 8},
    {name = "fire", interval = 2000, chance = 10, minDamage = -200, maxDamage = -300, length = 8, spread = 3},
    {name = "death", interval = 2000, chance = 5, minDamage = -300, maxDamage = -800, length = 8},
    {name = "physical", interval = 3000, chance = 18, maxDamage = -150, radius = 5},
    {name = "fury skill reducer", interval = 2000, chance = 5}
})

monster:register()
