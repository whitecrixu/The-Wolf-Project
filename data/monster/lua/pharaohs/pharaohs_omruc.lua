-- Omruc
-- Converted from XML

local monster = Game.createMonsterType("Omruc")
if not monster then return end

monster:name("Omruc")
monster:nameDescription("a omruc")
monster:health(4300)
monster:maxHealth(4300)
monster:experience(2950)
monster:speed(370)
monster:race(RACE_UNDEAD)
monster:corpseId(6025)
monster:outfit({lookType = 90})
monster:defense(35)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Now chhhou shhhee me ... Now chhhou don't!!", yell = false},
    {text = "Chhhhou are marked ashhh my prey.", yell = false},
    {text = "Psssst, I am over chhhere.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50000, maxCount = 90},
    {id = 2148, chance = 50000, maxCount = 70},
    {id = 2443, chance = 10000, maxCount = 2},
    {id = 2544, chance = 10000, maxCount = 21},
    {id = 2545, chance = 10000, maxCount = 20},
    {id = 2546, chance = 10000, maxCount = 15},
    {id = 7365, chance = 10000, maxCount = 2},
    {id = 2547, chance = 10000, maxCount = 3},
    {id = 2145, chance = 7000, maxCount = 3},
    {id = 7591, chance = 7000},
    {id = 2165, chance = 5000},
    {id = 2154, chance = 5000},
    {id = 2195, chance = 1500},
    {id = 2444, chance = 300},
    {id = 2352, chance = 100000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90},
    {name = "lifedrain", interval = 5000, chance = 20, minDamage = -100, maxDamage = -250},
    {name = "poison", interval = 2000, chance = 20, minDamage = -200, maxDamage = -500},
    {name = "fire", interval = 1000, chance = 20, minDamage = -120, maxDamage = -450, range = 3},
    {name = "melee", interval = 3000, chance = 20, minDamage = -150, maxDamage = -500},
    {name = "speed", interval = 1000, chance = 25, range = 7}
})

monster:register()
