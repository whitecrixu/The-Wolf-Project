-- Ferumbras
-- Converted from XML

local monster = Game.createMonsterType("Ferumbras")
if not monster then return end

monster:name("Ferumbras")
monster:nameDescription("Ferumbras")
monster:health(35000)
monster:maxHealth(35000)
monster:experience(12000)
monster:speed(320)
monster:race(RACE_VENOM)
monster:corpseId(6078)
monster:outfit({lookType = 229})
monster:defense(120)
monster:armor(100)
monster:runHealth(3500)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_FIREDAMAGE, percent = 90}
})

-- Immunities
monster:immunities({
    {type = COMBAT_LIFEDRAIN, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "NOONE WILL STOP ME THIS TIME!", yell = true},
    {text = "THE POWER IS MINE!", yell = true}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2148, chance = 100000, maxCount = 25},
    {id = 2393, chance = 16060},
    {id = 2514, chance = 12050},
    {id = 2472, chance = 7000},
    {id = 2678, chance = 20000, maxCount = 3},
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2151, chance = 12000, maxCount = 4},
    {id = 5903, chance = 100000},
    {id = 2149, chance = 15000, maxCount = 3},
    {id = 2171, chance = 30000},
    {id = 2415, chance = 6000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -350},
    {name = "manadrain", interval = 2000, chance = 20, minDamage = -300, maxDamage = -700, range = 7},
    {name = "poison", interval = 3000, chance = 20, minDamage = -250, maxDamage = -550, radius = 6},
    {name = "energy", interval = 2000, chance = 18, minDamage = -200, maxDamage = -400, radius = 6},
    {name = "manadrain", interval = 2000, chance = 16, minDamage = -225, maxDamage = -375, radius = 6},
    {name = "lifedrain", interval = 2000, chance = 21, minDamage = -200, maxDamage = -450, radius = 6},
    {name = "effect", interval = 3000, chance = 20, minDamage = -200, maxDamage = -600, radius = 5},
    {name = "firecondition", interval = 3000, chance = 20, minDamage = -200, maxDamage = -800, range = 7, radius = 7},
    {name = "lifedrain", interval = 2000, chance = 25, minDamage = -50, maxDamage = -250, length = 8}
})

monster:register()
