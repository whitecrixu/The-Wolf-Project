-- Servant Golem
-- Auto-converted from XML

local monster = Game.createMonsterType("Servant Golem")
if not monster then return end

monster:name("Servant Golem")
monster:nameDescription("a servant golem")
monster:health(100)
monster:maxHealth(100)
monster:experience(5)
monster:speed(200)
monster:race(RACE_ENERGY)
monster:corpseId(9801)
monster:outfit({lookType = 304})
monster:defense(25)
monster:armor(25)

-- Flags
monster:attackable(false)
monster:hostile(true)
monster:pushable(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_PARALYZE, immunity = true},
})

-- Voices
monster:voices({
    {text = "Do you think I might become a real boy one day?", yell = false},
    {text = "How may I serve you, Sir or Ma'am?", yell = false},
    {text = "Washing procedure initiated!", yell = false},
    {text = "Can I help you?", yell = false},
    {text = "Scan result: dusty human! Cleansing initiated!", yell = false},
    {text = "I am listening!", yell = false},
    {text = "Awaiting orders!", yell = false},
    {text = "Where are we going, Sir or Ma'am?", yell = false},
    {text = "How are you, Sir or Ma'am?", yell = false},
    {text = "Praise the Yalahari!", yell = false},
    {text = "Is that love or do you have a magnet in your pocket?", yell = false},
    {text = "Move on! There's nothing to see!", yell = false},
    {text = "Do you want to taste a sample of the newest dish?", yell = false},
    {text = "I hope I am not annoying, Sir or Ma'am?", yell = false},
    {text = "WARNING: BAD HAIRCUT DETECTED! Initializing haircut procedure!", yell = false},
    {text = "Warning: This human is extremely handsome!", yell = false},
    {text = "Mommy?", yell = false},
    {text = "Everything is working as intended!", yell = false},
    {text = "Rrrtttarrrttarrrtta", yell = false},
})

-- Attacks (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=10, length=8, duration=1000, speedchange=300, areaEffect=poff
--]]

-- Defense spells (for reference, implement with spell system)
--[[
-- name=speed, interval=2000, chance=15, duration=5000, speedchange=240, areaEffect=purpleenergy
--]]

monster:register()
