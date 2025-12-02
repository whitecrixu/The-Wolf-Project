-- Dario NPC - Uses legacy script system
local internalNpcName = "Dario"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Dario")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 129,
	lookHead = 3,
	lookBody = 98,
	lookLegs = 121,
	lookFeet = 115,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("module_shop", "1")
npcType:parameter("shop_buyable", "arrow,2544,3;bolt,2543,4;bow,2456,400;crossbow,2455,500;spear,2389,10;royal spear,7378,15;throwing star,2399,42;earth arrow,7850,5;flaming arrow,7840,5;flash arrow,7838,5;onyx arrow,7365,7;piercing bolt,7363,5;power bolt,2547,7;shiver arrow,7839,5;sniper arrow,7364,5;diamond arrow,12469,200;")
npcType:parameter("shop_sellable", "bow,2456,100;crossbow,2455,120")
npcType:parameter("message_greet", "Ashari |PLAYERNAME|. If you're a distance fighter, you might want to have a look at my wares and spells.")
npcType:parameter("message_farewell", "Asha Thrazi, |PLAYERNAME|.")
npcType:parameter("message_walkaway", "Asha Thrazi, |PLAYERNAME|.")
npcType:parameter("message_sendtrade", "Of course, just browse through my wares.")

-- Use legacy script for full NPC functionality
npcType:script("default.lua")

npcType:register()
