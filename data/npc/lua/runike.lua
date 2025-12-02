-- Runike NPC - Uses legacy script system
local internalNpcName = "Runike"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Runike")

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
	lookHead = 39,
	lookBody = 122,
	lookLegs = 125,
	lookFeet = 57,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Hello |PLAYERNAME|. I sell backpacks of runes.")

-- Use legacy script for full NPC functionality
npcType:script("runike.lua")

npcType:register()
