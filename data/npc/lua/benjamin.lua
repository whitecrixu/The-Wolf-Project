-- Benjamin NPC - Uses legacy script system
local internalNpcName = "Benjamin"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Benjamin")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 151,
	lookHead = 116,
	lookBody = 79,
	lookLegs = 117,
	lookFeet = 76,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("module_shop", "1")
npcType:parameter("shop_buyable", "time ring,2169,1000;energy ring,2167,1000;life ring,2168,1000;stealth ring,2165,1000;sword ring,2207,1000;axe ring,2208,1000;club ring,2209,1000;dwarven ring,2213,1000;blood herb,2798,500;")
npcType:parameter("message_greet", "Hello. How may I help you |PLAYERNAME|? Ask me for a {trade} if you want to buy something.")
npcType:parameter("message_farewell", "It was a pleasure to help you, |PLAYERNAME|.")
npcType:parameter("message_walkaway", "Good bye.")

-- Use legacy script for full NPC functionality
npcType:script("default.lua")

npcType:register()
