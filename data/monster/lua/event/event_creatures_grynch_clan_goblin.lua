-- Grynch Clan Goblin
-- Auto-converted from XML

local monster = Game.createMonsterType("Grynch Clan Goblin")
if not monster then return end

monster:name("Grynch Clan Goblin")
monster:nameDescription("a Grynch Clan Goblin")
monster:health(80)
monster:maxHealth(80)
monster:experience(4)
monster:speed(870)
monster:race(RACE_BLOOD)
monster:corpseId(6002)
monster:outfit({lookType = 61})
monster:defense(12)
monster:armor(10)
monster:targetDistance(11)
monster:runHealth(80)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:pushable(false)
monster:staticAttackChance(0)

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
})

-- Voices
monster:voices({
    {text = "T'was not me hand in your pocket!", yell = false},
    {text = "Look! Cool stuff in house. Let's get it!", yell = false},
    {text = "Uhh! Nobody home!", yell = false},
    {text = "Me just borrowed it!", yell = false},
    {text = "Me no steal! Me found it!", yell = false},
    {text = "Me had it for five minutes. It's family heirloom now!", yell = false},
    {text = "Nice human won't hurt little, good goblin?", yell = false},
    {text = "Gimmegimme!", yell = false},
    {text = "Invite me in you lovely house plx!", yell = false},
    {text = "Other Goblin stole it!", yell = false},
    {text = "All presents mine!", yell = false},
    {text = "Me got ugly ones purse", yell = false},
    {text = "Free itans plz!", yell = false},
    {text = "Not me! Not me!", yell = false},
    {text = "Guys, help me here! Guys? Guys???", yell = false},
    {text = "That only much dust in me pocket! Honest!", yell = false},
    {text = "Can me have your stuff?", yell = false},
    {text = "Halp, Big dumb one is after me!", yell = false},
    {text = "Uh, So many shiny things!", yell = false},
    {text = "Utani hur hur hur!", yell = false},
    {text = "Mee? Stealing? Never!!!", yell = false},
    {text = "Oh what fun it is to steal a one-horse open sleigh!", yell = false},
    {text = "Must have it! Must have it!", yell = false},
    {text = "Where me put me lockpick?", yell = false},
    {text = "Catch me if you can!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 22500, maxCount = 22},
    {id = 6497, chance = 7000},
    {id = 2111, chance = 7000, maxCount = 5},
    {id = 6277, chance = 7000, maxCount = 3},
    {id = 2675, chance = 7000, maxCount = 3},
    {id = 2687, chance = 7000, maxCount = 5},
    {id = 2679, chance = 7000, maxCount = 4},
    {id = 2674, chance = 700, maxCount = 3},
    {id = 2328, chance = 5000, maxCount = 2},
    {id = 2688, chance = 5000, maxCount = 3},
    {id = 2072, chance = 5000},
    {id = 2260, chance = 5000},
    {id = 2163, chance = 4000},
    {id = 1852, chance = 4000},
    {id = 2172, chance = 4000},
    {id = 1949, chance = 4000},
    {id = 6501, chance = 4000, maxCount = 2},
    {id = 2661, chance = 4000},
    {id = 5890, chance = 4000, maxCount = 5},
    {id = 5894, chance = 4000, maxCount = 3},
    {id = 5902, chance = 4000},
    {id = 4873, chance = 4000},
    {id = 7909, chance = 3500, maxCount = 5},
    {id = 7910, chance = 3500, maxCount = 100},
    {id = 6393, chance = 1500},
    {id = 6091, chance = 1500},
    {id = 2551, chance = 1500},
    {id = 2114, chance = 1000},
    {id = 5792, chance = 1000},
    {id = 2560, chance = 1000},
    {id = 1686, chance = 750},
    {id = 1687, chance = 750},
    {id = 1688, chance = 750},
    {id = 1689, chance = 750},
    {id = 2102, chance = 500},
    {id = 4839, chance = 500},
    {id = 2159, chance = 500, maxCount = 2},
    {id = 5022, chance = 500, maxCount = 2},
    {id = 2160, chance = 250},
    {id = 7731, chance = 250},
    {id = 2534, chance = 250},
})

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=1000, chance=15, duration=5000, speedchange=500, areaEffect=redshimmer
--]]

monster:register()
