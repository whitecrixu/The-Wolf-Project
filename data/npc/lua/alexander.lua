-- Alexander - Merchant NPC
local npcType = NpcType("Alexander")
npcType:name("Alexander")
npcType:nameDescription("Alexander")
npcType:health(100)
npcType:maxHealth(100)
npcType:speechBubble(SPEECHBUBBLE_TRADE)
npcType:outfit({ lookType = 129, lookHead = 97, lookBody = 88, lookLegs = 88, lookFeet = 115 })
npcType:walkInterval(2000)

-- Shop items
local shopItems = {
	{ id = 2376, buy = 0, sell = 600, name = "sword" },
	{ id = 2377, buy = 0, sell = 200, name = "two handed sword" },
	{ id = 2378, buy = 0, sell = 1500, name = "battle axe" },
	{ id = 2379, buy = 0, sell = 800, name = "dagger" },
	{ id = 2380, buy = 0, sell = 1000, name = "hand axe" },
	{ id = 2381, buy = 0, sell = 50, name = "halberd" },
	{ id = 2382, buy = 0, sell = 400, name = "club" },
	{ id = 2383, buy = 0, sell = 25, name = "spike sword" },
	{ id = 2384, buy = 0, sell = 400, name = "rapier" },
	{ id = 2385, buy = 0, sell = 100, name = "sabre" },
	{ id = 2386, buy = 0, sell = 100, name = "axe" },
	{ id = 2387, buy = 0, sell = 150, name = "double axe" },
	{ id = 2388, buy = 0, sell = 20, name = "hatchet" },
	{ id = 2389, buy = 0, sell = 6000, name = "spear" },
	{ id = 2390, buy = 0, sell = 150, name = "magic longsword" },
	{ id = 2391, buy = 0, sell = 150, name = "war hammer" },
	{ id = 2392, buy = 0, sell = 500, name = "fire sword" },
	{ id = 2393, buy = 0, sell = 8000, name = "giant sword" },
	{ id = 2394, buy = 0, sell = 3000, name = "morning star" },
	{ id = 2395, buy = 0, sell = 170, name = "carlin sword" },
	{ id = 2396, buy = 0, sell = 500, name = "ice rapier" },
	{ id = 2397, buy = 0, sell = 10000, name = "longsword" },
	{ id = 2398, buy = 0, sell = 150, name = "mace" },
	{ id = 2399, buy = 0, sell = 100, name = "brass armor" },
	{ id = 2400, buy = 0, sell = 8000, name = "magic sword" },
	{ id = 2401, buy = 0, sell = 35, name = "staff" },
	{ id = 2402, buy = 0, sell = 10000, name = "silver dagger" },
	{ id = 2403, buy = 0, sell = 90, name = "knife" },
	{ id = 2404, buy = 0, sell = 15, name = "combat knife" },
	{ id = 2405, buy = 0, sell = 6000, name = "sickle" },
	{ id = 2406, buy = 0, sell = 1000, name = "short sword" },
	{ id = 2407, buy = 0, sell = 2000, name = "bright sword" },
	{ id = 2408, buy = 0, sell = 240, name = "warlord sword" },
	{ id = 2409, buy = 0, sell = 1200, name = "serpent sword" },
	{ id = 2410, buy = 0, sell = 1000, name = "katana" },
	{ id = 2411, buy = 0, sell = 100, name = "poison dagger" },
	{ id = 2412, buy = 0, sell = 35, name = "silver mace" },
	{ id = 2413, buy = 0, sell = 280, name = "broadsword" },
	{ id = 2414, buy = 0, sell = 500, name = "dragon lance" },
	{ id = 2415, buy = 0, sell = 2000, name = "great axe" },
	{ id = 2416, buy = 0, sell = 200, name = "crowbar" },
	{ id = 2417, buy = 0, sell = 4000, name = "battle hammer" },
	{ id = 2418, buy = 0, sell = 500, name = "golden sickle" },
	{ id = 2419, buy = 0, sell = 4000, name = "scimitar" },
	{ id = 2420, buy = 0, sell = 8000, name = "machete" },
	{ id = 2421, buy = 0, sell = 1000, name = "thunder hammer" },
	{ id = 2422, buy = 0, sell = 500, name = "iron hammer" },
	{ id = 2423, buy = 0, sell = 200, name = "clerical mace" },
	{ id = 2424, buy = 0, sell = 210, name = "silver axe" },
	{ id = 2425, buy = 0, sell = 320, name = "obsidian lance" },
	{ id = 2426, buy = 0, sell = 8000, name = "naginata" },
	{ id = 2427, buy = 0, sell = 260, name = "guardian halberd" },
	{ id = 2428, buy = 0, sell = 4000, name = "orcish axe" },
	{ id = 2429, buy = 0, sell = 230, name = "barbarian axe" },
	{ id = 2430, buy = 0, sell = 470, name = "knight axe" },
	{ id = 2431, buy = 0, sell = 500, name = "stonecutter axe" },
	{ id = 2432, buy = 0, sell = 8000, name = "fire axe" },
	{ id = 2433, buy = 0, sell = 170, name = "enchanted staff" },
	{ id = 2434, buy = 0, sell = 400, name = "dragon hammer" },
	{ id = 2435, buy = 0, sell = 3000, name = "dwarven axe" },
	{ id = 2436, buy = 0, sell = 330, name = "skull staff" },
	{ id = 2437, buy = 0, sell = 280, name = "light mace" },
	{ id = 2438, buy = 0, sell = 450, name = "epee" },
	{ id = 2439, buy = 0, sell = 2000, name = "daramanian mace" },
	{ id = 2440, buy = 0, sell = 1000, name = "daramanian waraxe" },
	{ id = 2441, buy = 0, sell = 10000, name = "heavy machete" },
	{ id = 2442, buy = 0, sell = 500, name = "heavy trident" },
	{ id = 2443, buy = 0, sell = 6000, name = "ravager's axe" },
	{ id = 2444, buy = 0, sell = 2000, name = "hammer of wrath" },
	{ id = 2445, buy = 0, sell = 2000, name = "crystal mace" },
	{ id = 2446, buy = 0, sell = 1000, name = "pharaoh sword" },
	{ id = 2447, buy = 0, sell = 2000, name = "twin axe" },
	{ id = 2448, buy = 0, sell = 1000, name = "studded club" },
	{ id = 2449, buy = 0, sell = 300, name = "bone club" },
	{ id = 2450, buy = 0, sell = 1000, name = "bone sword" },
	{ id = 2451, buy = 0, sell = 5000, name = "djinn blade" },
	{ id = 2452, buy = 0, sell = 5000, name = "heavy mace" },
	{ id = 2453, buy = 0, sell = 4000, name = "arcane staff" },
	{ id = 2454, buy = 0, sell = 10000, name = "war axe" }
}

-- Conversation state
local talkState = {}
local talkNpc = {}

local function greetPlayer(player, npc)
	local playerId = player:getId()
	talkState[playerId] = 0
	talkNpc[playerId] = npc:getId()
	npc:say("Hello " .. player:getName() .. "! I buy weapons. Do you want to {trade}?", TALKTYPE_PRIVATE_NP, false, player)
end

local function farewellPlayer(player, npc)
	local playerId = player:getId()
	talkState[playerId] = nil
	talkNpc[playerId] = nil
	npc:say("Good bye, " .. player:getName() .. "!", TALKTYPE_PRIVATE_NP, false, player)
end

local function onBuy(player, itemId, subType, amount, ignoreCap, inBackpacks)
	-- Alexander only sells, doesn't buy
	return false
end

local function onSell(player, itemId, subType, amount, ignoreCap, inBackpacks)
	local npc = Npc(talkNpc[player:getId()])
	if not npc then
		return false
	end
	
	for _, item in ipairs(shopItems) do
		if item.id == itemId and item.sell > 0 then
			local price = item.sell * amount
			if player:removeItem(itemId, amount) then
				player:addMoney(price)
				npc:say("You sold " .. amount .. " " .. item.name .. " for " .. price .. " gold.", TALKTYPE_PRIVATE_NP, false, player)
				return true
			else
				npc:say("You don't have that item.", TALKTYPE_PRIVATE_NP, false, player)
				return false
			end
		end
	end
	return false
end

npcType:onAppear(function(npc, creature)
	if creature:isPlayer() then
		-- Nothing special on appear
	end
end)

npcType:onDisappear(function(npc, creature)
	if creature:isPlayer() then
		local playerId = creature:getId()
		talkState[playerId] = nil
		talkNpc[playerId] = nil
	end
end)

npcType:onSay(function(npc, creature, type, message)
	if not creature:isPlayer() then
		return false
	end
	
	local player = creature:getPlayer()
	local playerId = player:getId()
	local msg = message:lower()
	
	-- Greeting
	if msg == "hi" or msg == "hello" or msg == "hail" then
		greetPlayer(player, npc)
		return true
	end
	
	-- Check if player is talking to this NPC
	if talkState[playerId] == nil then
		return false
	end
	
	-- Trade
	if msg == "trade" or msg == "offer" or msg == "weapons" then
		npc:openShopWindow(player, shopItems, onBuy, onSell)
		npc:say("Of course, just browse through my wares.", TALKTYPE_PRIVATE_NP, false, player)
		return true
	end
	
	-- Farewell
	if msg == "bye" or msg == "goodbye" or msg == "farewell" then
		farewellPlayer(player, npc)
		return true
	end
	
	return true
end)

npcType:onCloseChannel(function(npc, creature)
	if creature:isPlayer() then
		local playerId = creature:getId()
		talkState[playerId] = nil
		talkNpc[playerId] = nil
	end
end)

npcType:register()
