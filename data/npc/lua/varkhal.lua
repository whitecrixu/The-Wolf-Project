-- Varkhal NPC - Uses legacy script system
local internalNpcName = "Varkhal"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Varkhal")

npcType:health(200)
npcType:maxHealth(200)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 134,
	lookHead = 78,
	lookBody = 88,
	lookLegs = 0,
	lookFeet = 88,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Greetings |PLAYERNAME|. Will you help me? If you do, I'll reward you with nice addons! Just say {addons} or {help} if you don't know what to do.")

-- Use legacy script for full NPC functionality
npcType:script("varkhal.lua")

npcType:register()
