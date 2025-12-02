-- Tyoric
local internalNpcName = "Tyoric"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription(internalNpcName)

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)

npcType:outfit({
	lookType = 134,
	lookHead = 57,
	lookBody = 59,
	lookLegs = 40,
	lookFeet = 76,
	lookAddons = 0,
})
npcType:parameter("module_shop", "1")
npcType:parameter("shop_sellable", "crossbow,2455,150;bow,2456,130")
npcType:parameter("shop_buyable", "crossbow,2455,360;bow,2456,200;spear,2389,20;poison arrow,2545,18;bolt,2543,3;arrow,2544,2")


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
