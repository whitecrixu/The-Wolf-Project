-- Mitrox NPC - Uses legacy script system
local internalNpcName = "Mitrox"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Mitrox")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 130,
	lookHead = 57,
	lookBody = 114,
	lookLegs = 95,
	lookFeet = 119,
	lookAddons = 0,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Hello |PLAYERNAME|. {mission}")

-- Use legacy script for full NPC functionality
npcType:script("itemsmissions.lua")

npcType:register()
