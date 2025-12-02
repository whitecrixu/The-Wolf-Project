-- Testserver Assistant NPC - Uses legacy script system
local internalNpcName = "Testserver Assistant"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Testserver Assistant")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(4000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 73,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Hey |PLAYERNAME|. I'm Testserver Assistant and can give {money}, {addon doll}, {jester staff}, {slingshot}, {solar axe}, {flame blade}, {stomper}, {soft} which will be useful for testing on KarmiaOTS.")
npcType:parameter("message_farewell", "Good bye!")
npcType:parameter("message_walkaway", "Good bye!")

-- Use legacy script for full NPC functionality
npcType:script("testserver_assistant.lua")

npcType:register()
