-- Shardhead
-- Converted from XML

local monster = Game.createMonsterType("Shardhead")
if not monster then return end

monster:name("Shardhead")
monster:nameDescription("shardhead")
monster:health(800)
monster:maxHealth(800)
monster:experience(650)
monster:speed(195)
monster:race(RACE_UNDEAD)
monster:corpseId(7282)
monster:outfit({lookType = 261})
monster:defense(26)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 25},
    {type = COMBAT_ENERGYDAMAGE, percent = -20}
})

-- Immunities
monster:immunities({
    {type = COMBAT_HOLYDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Voices
monster:voices({
    {text = "Chrr.", yell = false}
})

-- Loot
monster:loot({
    {id = 2148, chance = 99700, maxCount = 87},
    {id = 7290, chance = 40000},
    {id = 7588, chance = 100000},
    {id = 10578, chance = 40000},
    {id = 7441, chance = 80000},
    {id = 7449, chance = 30000}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "ice", interval = 2000, chance = 15, maxDamage = -90, range = 7},
    {name = "speed", interval = 2000, chance = 12, length = 8}
})

monster:register()
