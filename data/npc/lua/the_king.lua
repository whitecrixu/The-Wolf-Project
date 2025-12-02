-- The King NPC - Uses legacy script system
local internalNpcName = "The King"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("The King")

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 332,
	lookHead = 21,
	lookBody = 87,
	lookLegs = 107,
	lookFeet = 95,
	lookAddons = 0,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_farewell", "Farewell |PLAYERNAME|!")

-- Use legacy script for full NPC functionality
npcType:script("king.lua")

npcType:register()
