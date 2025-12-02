-- Deepling Spellsinger
-- Converted from XML

local monster = Game.createMonsterType("Deepling Spellsinger")
if not monster then return end

monster:name("Deepling Spellsinger")
monster:nameDescription("a deepling spellsinger")
monster:health(850)
monster:maxHealth(850)
monster:experience(1000)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(15208)
monster:outfit({lookType = 443})
monster:defense(25)
monster:armor(25)
monster:runHealth(85)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_EARTHDAMAGE, percent = -20},
    {type = COMBAT_ENERGYDAMAGE, percent = -20},
    {type = COMBAT_DEATHDAMAGE, percent = 50}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_DROWN, immunity = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Jey Obu giotja!!", yell = false},
    {text = "Mmmmmoooaaaaaahaaa!!", yell = false}
})

-- Loot
monster:loot({
    {id = 2152, chance = 80000},
    {id = 2148, chance = 70000, maxCount = 60},
    {id = 15421, chance = 14285},
    {id = 15488, chance = 14285},
    {id = 15422, chance = 10000},
    {id = 2667, chance = 3448},
    {id = 2146, chance = 2854},
    {id = 13870, chance = 2500},
    {id = 2168, chance = 2439},
    {id = 15400, chance = 2000},
    {id = 15403, chance = 813},
    {id = 5895, chance = 498},
    {id = 15644, chance = 220}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -100},
    {name = "ice", interval = 2000, chance = 10, minDamage = -180, maxDamage = -350, length = 10, spread = 3},
    {name = "drown", interval = 2000, chance = 20, minDamage = -90, maxDamage = -130, radius = 4},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -60, maxDamage = -140, range = 7},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -60, maxDamage = -140, range = 7},
    {name = "deepling spellsinger skill reducer", interval = 2000, chance = 5, range = 5}
})

monster:register()
