-- Feverish Citizen
-- Auto-converted from XML

local monster = Game.createMonsterType("Feverish Citizen")
if not monster then return end

monster:name("Feverish Citizen")
monster:nameDescription("a feverish citizen")
monster:health(125)
monster:maxHealth(125)
monster:experience(30)
monster:speed(185)
monster:race(RACE_BLOOD)
monster:corpseId(20395)
monster:outfit({lookType = 425})
monster:defense(15)
monster:armor(15)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_HOLYDAMAGE, percent = 80},
    {type = COMBAT_FIREDAMAGE, percent = 20},
})

-- Voices
monster:voices({
    {text = "Aaaaargh!", yell = false},
    {text = "I am the king of the world!", yell = false},
    {text = "Die Ferumbras!", yell = false},
    {text = "Tigerblood is running through my veins!", yell = false},
    {text = "You! It's you again!", yell = false},
    {text = "Stand still you tasty morsel!", yell = false},
    {text = "<giggle>", yell = false},
    {text = "Burn heretic! Burn!", yell = false},
    {text = "Harrr!", yell = false},
    {text = "This is Venore!", yell = false},
})

-- Loot
monster:loot({
    {id = 2148, chance = 30300, maxCount = 35},
    {id = 3976, chance = 25730, maxCount = 3},
    {id = 2230, chance = 4920},
    {id = 13545, chance = 2290},
    {id = 13543, chance = 2006},
    {id = 13541, chance = 1720},
    {id = 13542, chance = 2290},
    {id = 13540, chance = 1660},
    {id = 13544, chance = 2060},
    {id = 13926, chance = 100},
    {id = 13925, chance = 100},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=melee, interval=2000, chance=100, skill=25, attack=10
-- name=drunk, interval=2000, chance=15, length=3, spread=2, duration=3000, areaEffect=poison
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=outfit, interval=2000, chance=1, radius=3, duration=5000, areaeffect=greenbubble
--]]

monster:register()
