-- Frodo NPC - Uses legacy script system
local internalNpcName = "Frodo"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Frodo")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 128,
	lookHead = 58,
	lookBody = 68,
	lookLegs = 109,
	lookFeet = 131,
	lookAddons = 0,
})

-- Parameters for NpcHandler modules
npcType:parameter("module_shop", "1")
npcType:parameter("message_greet", "Hello |PLAYERNAME|. I sell all kind of food, say {trade} to see what I got to offer!")
npcType:parameter("shop_buyable", "dragon ham,2672,20;brown mushroom,2789,10;bread,2689,4;ham,2671,8;cheese,2696,4;meat,2666,5")

-- Use legacy script for full NPC functionality
npcType:script("default.lua")

npcType:register()
