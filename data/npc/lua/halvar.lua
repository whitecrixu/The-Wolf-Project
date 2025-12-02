-- Halvar NPC - Uses legacy script system
local internalNpcName = "Halvar"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Halvar")

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 129,
	lookHead = 114,
	lookBody = 119,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Hello |PLAYERNAME|. Im leader of the Svargrond Arena. Do you want to make {arena}?")

-- TODO: Implement arena functionality inline
npcType:onSay(function(npc, creature, type, message)
	if not creature:isPlayer() then
		return false
	end
	local player = creature:getPlayer()
	local msg = message:lower()
	
	if msg == "hi" or msg == "hello" then
		npc:say("Hello " .. player:getName() .. ". I'm leader of the Svargrond Arena. Do you want to make {arena}?", TALKTYPE_PRIVATE_NP, false, player)
		return true
	end
	
	if msg == "arena" then
		npc:say("The arena is not available yet.", TALKTYPE_PRIVATE_NP, false, player)
		return true
	end
	
	if msg == "bye" then
		npc:say("Good bye!", TALKTYPE_PRIVATE_NP, false, player)
		return true
	end
	
	return true
end)

npcType:register()
