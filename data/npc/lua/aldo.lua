-- Aldo NPC - Uses legacy script system
local internalNpcName = "Aldo"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Aldo")

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 128,
	lookHead = 79,
	lookBody = 95,
	lookLegs = 57,
	lookFeet = 106,
	lookAddons = 2,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Hello |PLAYERNAME|. i am specialised in boots, say {soft} to repair your soft boots or say {firewalker} to repair your firewalker boots.")

-- Use legacy script for full NPC functionality
npcType:script("aldo.lua")

npcType:register()
