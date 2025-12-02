-- Grave Robber
-- Converted from XML

local monster = Game.createMonsterType("Grave Robber")
if not monster then return end

monster:name("Grave Robber")
monster:nameDescription("a grave robber")
monster:health(165)
monster:maxHealth(165)
monster:experience(65)
monster:speed(205)
monster:race(RACE_BLOOD)
monster:manaCost(355)
monster:corpseId(20411)
monster:outfit({lookType = 146, lookHead = 114, lookBody = 95, lookLegs = 76, lookFeet = 38, lookAddons = 3})
monster:defense(15)
monster:armor(15)
monster:runHealth(16)

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
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_FIREDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
    {type = COMBAT_PHYSICALDAMAGE, percent = -10}
})

-- Voices
monster:voices({
    {text = "This crypt is taken!", yell = false},
    {text = "Leave or you are hunted!", yell = false},
    {text = "The treasure will be mine!", yell = false},
    {text = "The X marks the spot!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 54260, maxCount = 38},
    {id = 2386, chance = 2500},
    {id = 2398, chance = 1700},
    {id = 2465, chance = 1700},
    {id = 2509, chance = 500},
    {id = 2459, chance = 500},
    {id = 12448, chance = 7510},
    {id = 8838, chance = 5680, maxCount = 3},
    {id = 8267, chance = 170},
    {id = 12412, chance = 1700}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -75},
    {name = "poisoncondition", interval = 2000, chance = 15, minDamage = -100, maxDamage = -160, range = 7, radius = 1}
})

monster:register()
