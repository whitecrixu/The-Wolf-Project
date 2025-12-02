-- Spirit of Fire
-- Converted from XML

local monster = Game.createMonsterType("Spirit of Fire")
if not monster then return end

monster:name("Spirit of Fire")
monster:nameDescription("the spirit of fire")
monster:health(2210)
monster:maxHealth(2210)
monster:experience(950)
monster:speed(220)
monster:race(RACE_BLOOD)
monster:corpseId(7349)
monster:outfit({lookType = 242})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_ICEDAMAGE, percent = -10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_OUTFIT, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Feel the heat.", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -150},
    {name = "firefield", interval = 1000, chance = 15, range = 7, radius = 4},
    {name = "fire", interval = 1000, chance = 20, minDamage = -650, maxDamage = -315, range = 7}
})

monster:register()
