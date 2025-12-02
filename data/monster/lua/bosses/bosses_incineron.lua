-- Incineron
-- Converted from XML

local monster = Game.createMonsterType("Incineron")
if not monster then return end

monster:name("Incineron")
monster:nameDescription("Incineron")
monster:health(7000)
monster:maxHealth(7000)
monster:experience(3500)
monster:speed(260)
monster:race(RACE_FIRE)
monster:corpseId(6324)
monster:outfit({lookType = 243})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:isIllusionable(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {type = COMBAT_ICEDAMAGE, combat = true}
})

-- Attacks
monster:attacks({
    {name = "fire", interval = 2000, chance = 100, maxDamage = -1000, length = 8, spread = 1},
    {name = "fire", interval = 2000, chance = 100, maxDamage = -395, range = 7, radius = 7}
})

monster:register()
