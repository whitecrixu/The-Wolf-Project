-- Deepling Master Librarian
-- Converted from XML

local monster = Game.createMonsterType("Deepling Master Librarian")
if not monster then return end

monster:name("Deepling Master Librarian")
monster:nameDescription("a deepling master librarian")
monster:health(1700)
monster:maxHealth(1700)
monster:experience(1900)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:corpseId(15211)
monster:outfit({lookType = 443})
monster:defense(20)
monster:armor(20)
monster:runHealth(170)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:pushable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Mmmmmoooaaaaaahaaa!!!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 100},
    {id = 2152, chance = 90000, maxCount = 3},
    {id = 15488, chance = 20000},
    {id = 15421, chance = 25000},
    {id = 15422, chance = 20000},
    {id = 2667, chance = 9090, maxCount = 2},
    {id = 2146, chance = 8440, maxCount = 3},
    {id = 13870, chance = 9380},
    {id = 2168, chance = 3200},
    {id = 15400, chance = 3130},
    {id = 5895, chance = 1950},
    {id = 15403, chance = 1330},
    {id = 15644, chance = 39}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -120},
    {name = "ice", interval = 2000, chance = 10, minDamage = -260, maxDamage = -450, length = 10, spread = 3},
    {name = "drown", interval = 2000, chance = 20, minDamage = -150, maxDamage = -280, radius = 4},
    {name = "lifedrain", interval = 2000, chance = 15, minDamage = -80, maxDamage = -140, range = 7},
    {name = "manadrain", interval = 2000, chance = 10, minDamage = -60, maxDamage = -140, range = 7},
    {name = "deepling spellsinger skill reducer", interval = 2000, chance = 10, range = 5}
})

monster:register()
