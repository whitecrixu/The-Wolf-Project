-- Bashira NPC - Uses legacy script system
local internalNpcName = "Bashira"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Bashira")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 155,
	lookHead = 79,
	lookBody = 114,
	lookLegs = 0,
	lookFeet = 79,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("module_shop", "1")
npcType:parameter("message_farewell", "Good Bye, |PLAYERNAME|.")
npcType:parameter("message_walkaway", "May God show you the path, |PLAYERNAME|.")
npcType:parameter("message_sendtrade", "Of course, just browse through my offers.")
npcType:parameter("message_greet", "Welcome, |PLAYERNAME|.")
npcType:parameter("shop_buyable", "shovel,2554,50;fishing rod,2580,150;rope,2120,50;machete,2420,40;golden backpack,2004,20;brocade backpack,9774,35;green backpack,1998,20;blue backpack,2002,20;red backpack,2000,20;gray backpack,2003,20;heart backpack,11119,2000;backpack,1988,20;golden bag,1997,5;pick,2553,50;scythe,2550,50;machete,2420,40;torch,2050,2;crowbar,2416,260;")
npcType:parameter("shop_sellable", "rope,2120,8;")

-- Use legacy script for full NPC functionality
npcType:script("default.lua")

npcType:register()
