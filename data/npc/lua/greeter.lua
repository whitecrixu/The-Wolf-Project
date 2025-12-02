-- Greeter NPC - Single file NPC with inline callbacks
local internalNpcName = "Greeter"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("a friendly greeter")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_NORMAL)

npcType:outfit({
	lookType = 136,
	lookHead = 57,
	lookBody = 59,
	lookLegs = 40,
	lookFeet = 76,
	lookAddons = 0,
})

-- NPC logic with inline callbacks
local greetings = {
	"Hello there, %s!",
	"Welcome, %s! How can I help you today?",
	"Greetings, %s! Nice to meet you!",
	"Hi %s! It's a beautiful day, isn't it?",
}

local farewells = {
	"Goodbye, %s! Take care!",
	"Farewell, %s! Come back soon!",
	"See you later, %s!",
	"Have a nice day, %s!",
}

local keywords = {
	["hi"] = true,
	["hello"] = true,
	["hey"] = true,
	["greetings"] = true,
}

local farewellKeywords = {
	["bye"] = true,
	["goodbye"] = true,
	["farewell"] = true,
	["cya"] = true,
}

-- Called when a creature appears in NPC's view
npcType:onAppear(function(npc, creature)
	if creature:isPlayer() then
		print("[Greeter] Player " .. creature:getName() .. " appeared nearby")
	end
end)

-- Called when a creature disappears from NPC's view
npcType:onDisappear(function(npc, creature)
	if creature:isPlayer() then
		print("[Greeter] Player " .. creature:getName() .. " left the area")
	end
end)

-- Called when a creature moves near the NPC
npcType:onMove(function(npc, creature, oldPos, newPos)
	-- Could be used for detecting when players approach
end)

-- Called when a creature says something
npcType:onSay(function(npc, creature, type, text)
	if not creature:isPlayer() then
		return
	end
	
	local player = creature:getPlayer()
	local lowerText = text:lower()
	
	-- Check for greetings
	for keyword, _ in pairs(keywords) do
		if lowerText:find(keyword) then
			local greeting = greetings[math.random(#greetings)]
			npc:say(string.format(greeting, player:getName()), TALKTYPE_SAY)
			return
		end
	end
	
	-- Check for farewells
	for keyword, _ in pairs(farewellKeywords) do
		if lowerText:find(keyword) then
			local farewell = farewells[math.random(#farewells)]
			npc:say(string.format(farewell, player:getName()), TALKTYPE_SAY)
			return
		end
	end
	
	-- Help keyword
	if lowerText:find("help") then
		npc:say("I'm just a greeter! You can say 'hi' to greet me or 'bye' to say farewell.", TALKTYPE_SAY)
		return
	end
	
	-- Unknown keyword
	if lowerText:find(npc:getName():lower()) then
		npc:say("Yes? Did you want to talk to me? Try saying 'hi'!", TALKTYPE_SAY)
	end
end)

-- Called when player closes NPC channel
npcType:onCloseChannel(function(npc, creature)
	if creature:isPlayer() then
		npc:say("Goodbye!", TALKTYPE_SAY)
	end
end)

-- Called periodically (every walkInterval ms)
npcType:onThink(function(npc, interval)
	-- Random idle chat (1% chance per think)
	if math.random(100) == 1 then
		local idleMessages = {
			"What a lovely day!",
			"*whistles happily*",
			"I love meeting new people!",
		}
		npc:say(idleMessages[math.random(#idleMessages)], TALKTYPE_SAY)
	end
end)

npcType:register()
