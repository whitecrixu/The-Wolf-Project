-- Lokur NPC - Uses legacy script system
local internalNpcName = "Lokur"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Lokur")

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
	lookHead = 57,
	lookBody = 79,
	lookLegs = 98,
	lookFeet = 95,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("module_shop", "1")
npcType:parameter("shop_buyable", "label,2599,1;parcel,2595,15;letter,2597,8;")
npcType:parameter("message_greet", "How may I help you |PLAYERNAME|? Ask me for a {trade} if you want to buy something. I can also explain the {mail} system, sell {tickets} for the ore wagon service or give you access to your {bank} account.")
npcType:parameter("message_farewell", "Come back if you need my services, |PLAYERNAME|.")
npcType:parameter("message_walkaway", "Come back if you need my services, |PLAYERNAME|.")
npcType:parameter("message_sendtrade", "Here. Don't forget that you need to buy a label too if you want to send a parcel. Always write the name of the {receiver} in the first line and the name of the {city} in the second line.")

-- Use legacy script for full NPC functionality
npcType:script("default.lua")

npcType:register()
