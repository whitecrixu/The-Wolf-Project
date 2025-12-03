-- Morshabaal - Powerful Demon Boss
-- Revenge for Morgaroth, his little brother

local monster = Game.createMonsterType("Morshabaal")
if not monster then return end

monster:name("Morshabaal")
monster:nameDescription("Morshabaal")
monster:health(1000000)
monster:maxHealth(1000000)
monster:experience(3000000)
monster:speed(530)
monster:race(RACE_BLOOD)
monster:corpseId(40424)
monster:outfit({lookType = 1468})
monster:defense(160)
monster:armor(160)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:summonable(false)
monster:convinceable(false)
monster:pushable(false)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(70)
monster:targetDistance(1)

-- Resistances
monster:elements({
    {type = COMBAT_PHYSICALDAMAGE, percent = 0},
    {type = COMBAT_ENERGYDAMAGE, percent = 5},
    {type = COMBAT_EARTHDAMAGE, percent = 0},
    {type = COMBAT_FIREDAMAGE, percent = 5},
    {type = COMBAT_LIFEDRAIN, percent = 0},
    {type = COMBAT_MANADRAIN, percent = 0},
    {type = COMBAT_DROWNDAMAGE, percent = 0},
    {type = COMBAT_ICEDAMAGE, percent = 0},
    {type = COMBAT_HOLYDAMAGE, percent = 0},
    {type = COMBAT_DEATHDAMAGE, percent = 0}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = true},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_DRUNK, immunity = true}
})

-- Voices
monster:voices({
    {text = "Revenge for my little brother!", yell = false},
    {text = "You are starting to annoy me!", yell = false},
    {text = "I will restore our family honor!", yell = false}
})

-- Loot
monster:loot({
    {id = 2160, chance = 60000, maxCount = 35},  -- crystal coin
    {id = 2152, chance = 100000, maxCount = 69}, -- platinum coin
    {id = 26031, chance = 40000, maxCount = 100}, -- ultimate mana potion
    {id = 8473, chance = 30000, maxCount = 100},  -- ultimate health potion
    {id = 26030, chance = 30000, maxCount = 100}, -- ultimate spirit potion
    {id = 40530, chance = 100000}, -- Morshabaal's Extract
    {id = 36511, chance = 100000}, -- Watermelon Tourmaline (Pear)
    {id = 36510, chance = 100000}, -- Watermelon Tourmaline (Slice)
    {id = 35357, chance = 40000},  -- Amber with a Dragonfly
    {id = 30054, chance = 20000},  -- Unicorn Figurine
    {id = 32786, chance = 20000},  -- Sea Horse Figurine
    {id = 40331, chance = 10000},  -- Morshabaal's Mask
    {id = 32792, chance = 10000},  -- Giant Emerald
    {id = 15515, chance = 10000},  -- Bar of Gold
    {id = 40333, chance = 6666},   -- Morshabaal's Brain
    {id = 40328, chance = 6666},   -- Green Demon Armor
    {id = 40329, chance = 6666},   -- Green Demon Helmet
    {id = 40327, chance = 6666},   -- Green Demon Legs
    {id = 40330, chance = 6666},   -- Green Demon Slippers
    {id = 32785, chance = 6666},   -- Dragon Figurine
    {id = 2421, chance = 6666}     -- Thunder Hammer
})

-- Attacks
monster:attacks({
    -- Melee attack (massive damage)
    {name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -2500},
    -- Physical beam
    {name = "physical", interval = 2000, chance = 15, minDamage = -1000, maxDamage = -5500, length = 8},
    -- Ice wave (massive damage)
    {name = "ice", interval = 2000, chance = 15, minDamage = -4000, maxDamage = -15000, radius = 5},
    -- Mana drain ranged
    {name = "manadrain", interval = 1000, chance = 7, minDamage = -100, maxDamage = -1000, range = 7},
    -- Life drain area
    {name = "lifedrain", interval = 1000, chance = 13, minDamage = -400, maxDamage = -700, radius = 8},
    -- Mana drain area
    {name = "manadrain", interval = 1000, chance = 10, minDamage = -400, maxDamage = -700, radius = 8},
    -- Fire attack
    {name = "fire", interval = 1000, chance = 34, minDamage = -100, maxDamage = -900, range = 7, radius = 7},
    -- Life drain beam
    {name = "lifedrain", interval = 1000, chance = 15, minDamage = -500, maxDamage = -850, length = 8},
    -- Death damage
    {name = "death", interval = 2000, chance = 20, minDamage = -800, maxDamage = -2000, radius = 6},
    -- Energy damage
    {name = "energy", interval = 2000, chance = 18, minDamage = -600, maxDamage = -1500, length = 6},
    -- Special: Drunk effect (uses Lua spell)
    {name = "morshabaal drunk", interval = 3000, chance = 12},
    -- Special: Strength reduction (uses Lua spell)
    {name = "morshabaal strength", interval = 4000, chance = 10},
    -- Special: Outfit change (uses Lua spell)
    {name = "morshabaal outfit", interval = 5000, chance = 8}
})

monster:register()
