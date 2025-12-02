-- Oldrak NPC - Uses legacy script system
local internalNpcName = "Oldrak"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Oldrak")

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 57,
	lookHead = 115,
	lookBody = 113,
	lookLegs = 31,
	lookFeet = 38,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Hello, |PLAYERNAME|!")
npcType:parameter("message_needmoremoney", "Please bring you enough with money.")

-- Use legacy script for full NPC functionality
npcType:script("oldrak.lua")

npcType:register()
