-- Yalahari
-- Converted from XML

local monster = Game.createMonsterType("Yalahari")
if not monster then return end

monster:name("Yalahari")
monster:nameDescription("a yalahari")
monster:health(150)
monster:maxHealth(150)
monster:experience(5)
monster:speed(200)
monster:race(RACE_BLOOD)
monster:corpseId(20550)
monster:outfit({lookType = 309})
monster:defense(0)
monster:armor(0)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:canPushItems(true)
monster:staticAttackChance(90)

-- Immunities
monster:immunities({
    {type = COMBAT_EARTHDAMAGE, combat = true},
    {type = COMBAT_PHYSICALDAMAGE, combat = true},
    {type = COMBAT_DEATHDAMAGE, combat = true}
})

-- Voices
monster:voices({
    {text = "Welcome to Yalahar, outsider.", yell = false},
    {text = "Hail Yalahar.", yell = false},
    {text = "You can learn a lot from us.", yell = false},
    {text = "Our wisdom and knowledge are unequalled in this world.", yell = false},
    {text = "That knowledge would overburden your fragile mind.", yell = false},
    {text = "I wouldn't expect you to understand.", yell = false},
    {text = "One day Yalahar will return to its former glory.", yell = false}
})

-- Attacks (default melee)
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -30}
})

monster:register()
