-- King NPC - Auto-converted from XML
local internalNpcName = "King"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("King")

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_NORMAL)

npcType:outfit({
	lookType = 332,
	lookHead = 21,
	lookBody = 87,
	lookLegs = 107,
	lookFeet = 95,
	lookAddons = 0,
})

-- NPC Callbacks
npcType:onAppear(function(npc, creature)
	-- Called when a creature appears in NPC's view
end)

npcType:onDisappear(function(npc, creature)
	-- Called when a creature disappears from NPC's view
end)

npcType:onMove(function(npc, creature, oldPos, newPos)
	-- Called when a creature moves near the NPC
end)

npcType:onSay(function(npc, creature, type, text)
	if not creature:isPlayer() then
		return
	end
	
	local player = creature:getPlayer()
	local lowerText = text:lower()
	
	-- Handle greetings
	if lowerText:find("hi") or lowerText:find("hello") then
		npc:say("Hello \" .. player:getName() .. \"!", TALKTYPE_SAY)
		return
	end
	
	-- Handle farewells
	if lowerText:find("bye") or lowerText:find("farewell") then
		npc:say("Farewell \" .. player:getName() .. \"!", TALKTYPE_SAY)
		return
	end
end)

npcType:onCloseChannel(function(npc, creature)
	if creature:isPlayer() then
		npc:say("Goodbye!", TALKTYPE_SAY)
	end
end)

npcType:onThink(function(npc, interval)
	-- Called periodically
end)

npcType:register()
