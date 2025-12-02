-- Vulcongra
-- Converted from XML

local monster = Game.createMonsterType("Vulcongra")
if not monster then return end

monster:name("Vulcongra")
monster:nameDescription("vulcongra")
monster:health(1600)
monster:maxHealth(1600)
monster:experience(1100)
monster:speed(230)
monster:race(RACE_FIRE)
monster:corpseId(18475)
monster:outfit({lookType = 509})
monster:defense(35)
monster:armor(35)
monster:runHealth(160)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = 1},
    {type = COMBAT_ICEDAMAGE, percent = -1}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Fuchah! Fuchah!", yell = false},
    {text = "Fuchah!", yell = false},
    {text = "Yag! Yag! Yag!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 100000, maxCount = 107},
    {id = 2152, chance = 14550},
    {id = 18424, chance = 12440},
    {id = 2676, chance = 10000, maxCount = 10},
    {id = 10553, chance = 9000},
    {id = 18425, chance = 8000},
    {id = 7588, chance = 7100},
    {id = 7589, chance = 7100},
    {id = 18417, chance = 4850},
    {id = 2207, chance = 3000},
    {id = 18420, chance = 2300},
    {id = 2187, chance = 1000},
    {id = 7890, chance = 920},
    {id = 13757, chance = 890},
    {id = 2392, chance = 260},
    {id = 7899, chance = 130}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -230},
    {name = "vulcongra soulfire", interval = 2000, chance = 100},
    {name = "fire", interval = 2000, chance = 10, minDamage = -195, maxDamage = -340, length = 8},
    {name = "fire", interval = 2000, chance = 15, minDamage = -100, maxDamage = -200, range = 7}
})

monster:register()
