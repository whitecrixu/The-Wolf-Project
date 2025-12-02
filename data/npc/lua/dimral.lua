-- Dimral NPC - Uses legacy script system
local internalNpcName = "Dimral"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Dimral")

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 151,
	lookHead = 60,
	lookBody = 115,
	lookLegs = 12,
	lookFeet = 0,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Hello Sir |PLAYERNAME|! I can take you to {Roshamuul} or {back} for 5000gps, but it will be very dangerous.")
npcType:parameter("message_farewell", "Good bye. Come back when you want to sail.")
npcType:parameter("message_idletimeout", "Hello? Are you there? Good Bye then.")
npcType:parameter("message_walkaway", "Good bye. Recommend us if you were satisfied with our service.")
npcType:parameter("message_alreadyfocused", "Hey? I\'m here.")

-- Use legacy script for full NPC functionality
npcType:script("dimral.lua")

npcType:register()
