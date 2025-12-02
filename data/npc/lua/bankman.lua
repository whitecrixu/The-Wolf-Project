-- BankMan NPC - Uses legacy script system
local internalNpcName = "BankMan"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("BankMan")

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(25)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 132,
	lookHead = 115,
	lookBody = 0,
	lookLegs = 114,
	lookFeet = 0,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Welcome |PLAYERNAME|! Here, you can {deposit}, {withdraw} or {transfer} your money from your bank account. I can change your coins too.")
npcType:parameter("message_alreadyfocused", "You are drunked ? I talk with you.")
npcType:parameter("message_farewell", "Goodbye. I wanna see your money... oh you again.")

-- Use legacy script for full NPC functionality
npcType:script("bankman.lua")

npcType:register()
