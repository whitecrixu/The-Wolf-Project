-- Energized Raging Mage
-- Converted from XML

local monster = Game.createMonsterType("Energized Raging Mage")
if not monster then return end

monster:name("Energized Raging Mage")
monster:nameDescription("an energized raging mage")
monster:health(3500)
monster:maxHealth(3500)
monster:experience(0)
monster:speed(230)
monster:race(RACE_BLOOD)
monster:outfit({lookType = 423})
monster:defense(35)
monster:armor(35)
monster:runHealth(350)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = -50},
    {type = COMBAT_HOLYDAMAGE, percent = 10}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_ENERGY, immunity = true},
    {condition = CONDITION_FIRE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true}
})

-- Voices
monster:voices({
    {text = "Behold the all permeating powers I draw from this gate!!", yell = false},
    {text = "ENERGY!!", yell = false},
    {text = "I FEEL, I FEEEEL... OMNIPOTENCE!!", yell = false},
    {text = "MWAAAHAHAAA!! NO ONE!! NO ONE CAN DEFEAT MEEE!!!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 3000, chance = 15, minDamage = 0, maxDamage = 0},
    {name = "energyfield", interval = 2000, chance = 20, range = 7, radius = 2},
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -69},
    {name = "thunderstorm", interval = 2000, chance = 40, minDamage = -150, maxDamage = -230, range = 7},
    {name = "manadrain", interval = 2000, chance = 20, minDamage = -100, maxDamage = -210, range = 7},
    {name = "energy", interval = 2000, chance = 25, minDamage = -200, maxDamage = -300, length = 8}
})

monster:register()
