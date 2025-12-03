-- Undead Elite Gladiator
-- Converted from WolfOTS

local monster = Game.createMonsterType("Undead Elite Gladiator")
if not monster then return end

monster:name("Undead Elite Gladiator")
monster:nameDescription("an undead elite gladiator")
monster:health(8000)
monster:maxHealth(8000)
monster:experience(5090)
monster:speed(150)
monster:race(RACE_UNDEAD)
monster:corpseId(8909)
monster:outfit({lookType = 306, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0})
monster:defense(45)
monster:armor(85)

-- Flags
monster:attackable(true)
monster:hostile(true)
monster:canPushItems(true)
monster:canPushCreatures(true)
monster:staticAttackChance(90)

-- Resistances
monster:elements({
    {type = COMBAT_ENERGYDAMAGE, percent = 20},
    {type = COMBAT_EARTHDAMAGE, percent = -10},
    {type = COMBAT_FIREDAMAGE, percent = 80},
    {type = COMBAT_HOLYDAMAGE, percent = 10},
    {type = COMBAT_DEATHDAMAGE, percent = -5}
})

-- Immunities
monster:immunities({
    {condition = CONDITION_PARALYZE, immunity = false},
    {condition = CONDITION_OUTFIT, immunity = false},
    {condition = CONDITION_INVISIBLE, immunity = true},
    {condition = CONDITION_BLEEDING, immunity = false}
})

-- Loot
monster:loot({
    {name = "platinum coin", chance = 44000, maxCount = 40},
    {name = "belted cape", chance = 500},
    {name = "ultimate health potion", chance = 500, maxCount = 2},
    {name = "throwing star", chance = 500, maxCount = 18},
    {name = "knight axe", chance = 250},
    {id = 3307, chance = 500},
    {name = "protection amulet", chance = 250},
    {name = "hunting spear", chance = 250},
    {name = "broken gladiator shield", chance = 250},
    {name = "dark helmet", chance = 250},
    {name = "flask of warrior's sweat", chance = 250},
    {name = "plate armor", chance = 250},
    {name = "plate legs", chance = 250},
    {name = "two handed sword", chance = 250},
    {name = "great health potion", chance = 250, maxCount = 2},
    {id = 3049, chance = 230},
    {name = "crusader helmet", chance = 150},
    {name = "relic sword", chance = 150}
})

-- Attacks
monster:attacks({
    {name = "melee", interval = 2000, chance = 100, minDamage = 100, maxDamage = 550},
    {name = "combat", interval = 1500, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 300, maxDamage = 550, range = 7, shootEffect = CONST_ANI_WHIRLWINDSWORD},
    {name = "combat", interval = 1000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = 300, maxDamage = 500, range = 5, effect = CONST_ME_HITAREA}
})

monster:register()
