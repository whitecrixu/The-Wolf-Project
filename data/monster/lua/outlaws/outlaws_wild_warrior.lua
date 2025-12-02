-- Wild Warrior
-- Converted from XML

local monster = Game.createMonsterType("Wild Warrior")
if not monster then return end

monster:name("Wild Warrior")
monster:nameDescription("a wild warrior")
monster:health(135)
monster:maxHealth(135)
monster:experience(55)
monster:speed(190)
monster:race(RACE_BLOOD)
monster:manaCost(420)
monster:corpseId(20531)
monster:outfit({lookType = 131, lookHead = 57, lookBody = 57, lookLegs = 57, lookFeet = 57})
monster:defense(20)
monster:armor(20)
monster:runHealth(13)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -5},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "An enemy!", yell = false},
    {text = "Gimme your money!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 49070, maxCount = 30},
    {id = 2695, chance = 9730, maxCount = 2},
    {id = 2649, chance = 27500},
    {id = 2110, chance = 520},
    {id = 2465, chance = 2540},
    {id = 2509, chance = 910},
    {id = 2386, chance = 30710},
    {id = 2398, chance = 9800},
    {id = 2458, chance = 5250},
    {id = 2511, chance = 17000},
    {id = 2459, chance = 580},
    {id = 2391, chance = 100}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80}
})

monster:register()
