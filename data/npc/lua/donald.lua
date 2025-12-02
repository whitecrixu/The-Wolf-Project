-- Donald
local internalNpcName = "Donald"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription(internalNpcName)

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)

npcType:outfit({
	lookType = 128,
	lookHead = 20,
	lookBody = 100,
	lookLegs = 50,
	lookFeet = 99,
	lookAddons = 0,
})
npcType:parameter("module_shop", "1")
npcType:parameter("message_greet", "Hello |PLAYERNAME|. I sell ham, meat, carrots, apples, brown breads, brown mushrooms and eggs (everything for 8 gold coins)!. say {trade}.")
npcType:parameter("shop_buyable", "brown bread,2691,8;ham,2671,8;carrot,2684,8;meat,2666,8;apple,2674,8;brown mushroom,2789,8;egg,2695,8")


-- NPC Callbacks (inline)
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
	
	-- Handle player speech here
	if lowerText:find("hi") or lowerText:find("hello") then
		npc:say("Hello, " .. player:getName() .. "!", TALKTYPE_SAY)
	elseif lowerText:find("bye") then
		npc:say("Goodbye, " .. player:getName() .. "!", TALKTYPE_SAY)
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
