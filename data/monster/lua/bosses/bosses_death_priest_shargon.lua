-- Death Priest Shargon
-- Auto-converted from XML

local monster = Game.createMonsterType("Death Priest Shargon")
if not monster then return end

monster:name("Death Priest Shargon")
monster:nameDescription("Death Priest Shargon")
monster:health(260)
monster:maxHealth(260)
monster:experience(150)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:manaCost(490)
monster:corpseId(5962)
monster:outfit({lookType = 22})
monster:defense(20)
monster:armor(20)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 25},
    {type = COMBAT_HOLYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_DEATHDAMAGE, percent = -10},
})

-- Voices
monster:voices({
    {text = "Il lorstok human!", yell = false},
    {text = "Toks utat.", yell = false},
    {text = "Human, uh whil dyh!", yell = false},
    {text = "Youh ah trak!", yell = false},
    {text = "Let da mashing begin!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 82000, maxCount = 47},
    {id = 7618, chance = 210},
    {id = 2666, chance = 30070},
    {id = 2510, chance = 2500},
    {id = 2406, chance = 8000},
    {id = 2513, chance = 1400},
    {id = 2129, chance = 190},
    {id = 2381, chance = 1003},
    {id = 2490, chance = 220},
    {id = 2209, chance = 90},
    {id = 7398, chance = 80},
    {id = 10574, chance = 4930},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=60, attack=30
--]]

monster:register()
