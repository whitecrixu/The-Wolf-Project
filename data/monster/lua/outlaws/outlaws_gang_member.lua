-- Gang Member
-- Converted from XML

local monster = Game.createMonsterType("Gang Member")
if not monster then return end

monster:name("Gang Member")
monster:nameDescription("a gang member")
monster:health(295)
monster:maxHealth(295)
monster:experience(70)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(420)
monster:corpseId(20403)
monster:outfit({lookType = 151, lookHead = 114, lookBody = 19, lookLegs = 42, lookFeet = 20})
monster:defense(15)
monster:armor(15)
monster:runHealth(29)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Voices
monster:voices({
    {text = "This is our territory!", yell = false},
    {text = "Help me guys!", yell = false},
    {text = "I don't like the way you look!", yell = false},
    {text = "You're wearing the wrong colours!", yell = false},
    {text = "Don't mess with us!", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 50110, maxCount = 30},
    {id = 2389, chance = 8700},
    {id = 2649, chance = 15330},
    {id = 2468, chance = 5220},
    {id = 2689, chance = 4760},
    {id = 2209, chance = 740}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -80}
})

monster:register()
