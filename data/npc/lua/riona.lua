-- Riona - Equipment Shop NPC with inline callbacks
local internalNpcName = "Riona"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Riona, the equipment dealer")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 138,
	lookHead = 57,
	lookBody = 59,
	lookLegs = 40,
	lookFeet = 76,
	lookAddons = 0,
})

-- Shop items: {itemId, buyPrice, sellPrice, name}
local shopItems = {
	{id = 1988, buy = 20, sell = 5, name = "backpack"},
	{id = 2553, buy = 10, sell = 2, name = "pick"},
	{id = 2554, buy = 20, sell = 5, name = "shovel"},
	{id = 2120, buy = 50, sell = 15, name = "rope"},
}

local function getShopItem(name)
	local lowerName = name:lower()
	for _, item in ipairs(shopItems) do
		if item.name:lower() == lowerName then
			return item
		end
	end
	return nil
end

local keywords = {
	["hi"] = true,
	["hello"] = true,
}

local farewellKeywords = {
	["bye"] = true,
	["goodbye"] = true,
	["farewell"] = true,
}

-- NPC interaction handlers
npcType:onAppear(function(npc, creature)
	-- Player appeared nearby
end)

npcType:onDisappear(function(npc, creature)
	-- Player left the area
end)

npcType:onSay(function(npc, creature, type, text)
	if not creature:isPlayer() then
		return
	end
	
	local player = creature:getPlayer()
	local lowerText = text:lower()
	
	-- Greetings
	for keyword, _ in pairs(keywords) do
		if lowerText:find(keyword) then
			npc:say("Welcome to my shop, " .. player:getName() .. "! I sell equipment for adventurers. Say 'trade' to see my offers, or ask for specific items like 'backpack', 'pick', 'shovel', or 'rope'.", TALKTYPE_SAY)
			return
		end
	end
	
	-- Farewells
	for keyword, _ in pairs(farewellKeywords) do
		if lowerText:find(keyword) then
			npc:say("Goodbye, " .. player:getName() .. "! Come back soon!", TALKTYPE_SAY)
			return
		end
	end
	
	-- Trade keyword - show all items
	if lowerText:find("trade") or lowerText:find("offer") then
		local offers = "I can offer you:\n"
		for _, item in ipairs(shopItems) do
			offers = offers .. "- " .. item.name .. " for " .. item.buy .. " gold\n"
		end
		npc:say(offers, TALKTYPE_SAY)
		return
	end
	
	-- Buy keyword
	local buyMatch = lowerText:match("buy%s+(%a+)")
	if buyMatch then
		local item = getShopItem(buyMatch)
		if item then
			local playerMoney = player:getMoney()
			if playerMoney >= item.buy then
				player:removeMoney(item.buy)
				player:addItem(item.id, 1)
				npc:say("Here you go! One " .. item.name .. " for " .. item.buy .. " gold.", TALKTYPE_SAY)
			else
				npc:say("Sorry, you don't have enough gold. A " .. item.name .. " costs " .. item.buy .. " gold.", TALKTYPE_SAY)
			end
		else
			npc:say("I don't sell that item. Say 'trade' to see what I offer.", TALKTYPE_SAY)
		end
		return
	end
	
	-- Check if asking about specific item
	for _, item in ipairs(shopItems) do
		if lowerText:find(item.name) then
			npc:say("A " .. item.name .. " costs " .. item.buy .. " gold. Say 'buy " .. item.name .. "' to purchase.", TALKTYPE_SAY)
			return
		end
	end
	
	-- Help
	if lowerText:find("help") then
		npc:say("You can say 'trade' to see my offers, or 'buy <item>' to purchase something.", TALKTYPE_SAY)
		return
	end
end)

npcType:onCloseChannel(function(npc, creature)
	if creature:isPlayer() then
		npc:say("Goodbye!", TALKTYPE_SAY)
	end
end)

npcType:onThink(function(npc, interval)
	-- Idle behavior
end)

npcType:register()
