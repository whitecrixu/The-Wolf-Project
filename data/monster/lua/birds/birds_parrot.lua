-- Parrot
-- Converted from XML

local monster = Game.createMonsterType("Parrot")
if not monster then return end

monster:name("Parrot")
monster:nameDescription("a parrot")
monster:health(25)
monster:maxHealth(25)
monster:experience(0)
monster:speed(260)
monster:race(RACE_BLOOD)
monster:manaCost(250)
monster:corpseId(6056)
monster:outfit({lookType = 217})
monster:defense(5)
monster:armor(5)
monster:runHealth(2)

-- Flags
monster:attackable(true)
monster:hostile(false)
monster:isSummonable(true)
monster:isConvinceable(true)
monster:isIllusionable(true)
monster:pushable(true)
monster:staticAttackChance(90)

-- Voices
monster:voices({
    {text = "BR? PL? SWE?", yell = false},
    {text = "Screeech!", yell = false},
    {text = "Neeeewbiiieee!", yell = false},
    {text = "You advanshed, you advanshed!", yell = false},
    {text = "Hope you die and loooosh it!", yell = false},
    {text = "Hunterrr ish PK!", yell = false},
    {text = "Shhtop whining! Rrah", yell = false},
    {text = "I'm heeerrre! Screeeech!", yell = false},
    {text = "Leeave orrr hunted!!", yell = false},
    {text = "Blesshhh my stake! Screeech!", yell = false},
    {text = "Tarrrrp?", yell = false},
    {text = "You are corrrrupt! Corrrrupt!", yell = false},
    {text = "You powerrrrrrabuserrrrr!", yell = false},
    {text = "You advanshed, you advanshed!", yell = false}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -15}
})

monster:register()
