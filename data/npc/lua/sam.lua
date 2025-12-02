-- Sam NPC - Uses legacy script system
local internalNpcName = "Sam"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Sam")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 131,
	lookHead = 57,
	lookBody = 112,
	lookLegs = 48,
	lookFeet = 95,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "Welcome to my shop, adventurer |PLAYERNAME|! I {trade} with weapons and armor.")
npcType:parameter("message_farewell", "Good bye and come again, |PLAYERNAME|.")
npcType:parameter("module_keywords", "1")
npcType:parameter("keywords", "job;")
npcType:parameter("keyword_reply1", "I am the blacksmith. If you need weapons or armor - just ask me.")
npcType:parameter("module_shop", "1")
npcType:parameter("shop_sellable", "onyx flail,7421,22000;two handed sword,2377,450;dagger,2379,5;spike sword,2383,1000;rapier,2384,40;sabre,2385,150;magic longsword,2390,250000;fire sword,2392,4000;giant sword,2393,17000;carlin sword,2395,1000;ice rapier,2396,1000;longsword,2397,50;magic sword,2400,380000;silver dagger,2402,500;knife,2403,3;combat knife,2404,6;sickle,2405,10;short sword,2406,80;bright sword,2407,3000;warlord sword,2408,100000;serpent sword,2409,900;poison dagger,2411,50;katana,2412,40;broadsword,2413,350;golden sickle,2418,100;scimitar,2419,150;machete,2420,40;heavy machete,2442,90;epee,2438,100000;pharaoh sword,2446,80000;bone sword,2450,100;djinn blade,2451,600000;avenger,6528,200000;demonrage sword,7382,10000;relic sword,7383,25000;mystic blade,7384,10000;crimson sword,7385,500;mercenary sword,7386,20000;justice seeker,7390,70000;thaian sword,7391,15000;dragon slayer,7402,15000;berserker,7403,12000;assassin dagger,7404,15000;havoc blade,7405,7000;blacksteel sword,7406,2000;haunted blade,7407,10000;wyvern fang,7408,2000;bloody edge,7416,10000;runed sword,7417,10000;nightmare blade,7418,30000;dreaded cleaver,7419,12000;reapers axe,7420,12000;crystal sword,7449,600;emerald sword,8930,300000;jagged sword,8602,80000;golden sword,8931,1000000;calamity,8932,70000;war hammer,2391,900;morning star,2394,100;mace,2398,30;staff,2401,25;crowbar,2416,50;battle hammer,2417,150;thunder hammer,2421,300000;iron hammer,2422,50;clerical mace,2423,200;silver mace,2424,100000;dragon hammer,2434,2000;skull staff,2436,6000;golden mace,2437,80000;daramanian mace,2439,200;hammer of wrath,2444,75000;crystal mace,2445,30000;studded club,2448,35;bone club,2449,50;heavy mace,2452,800000;arcane staff,2453,30000;lich staff,3961,15000;banana staff,3966,1000;brutetamers staff,7379,2000;mammoth whopper,7381,400;diamond sceptre,7387,4000;orcish maul,7392,1000;sapphire hammer,7437,7000;ice hammer,7450,80000;shadow sceptre,7451,100000;spiked squelcher,7452,500;queens sceptre,7410,2000000;abyss hammer,7414,500000;cranial basher,7415,10000;jade hammer,7422,70000;lunar staff,7424,7000;taurus mace,7425,600;amber staff,7426,8000;chaos mace,7427,10000;bonebreaker,7428,80000;blessed sceptre,7429,80000;dragonbone staff,7430,3000;demonbone,7431,90000;furry club,7432,500;dark trinity mace,8927,700000;obsidian truncheon,8928,400000;stomper,8929,250000;battle axe,2378,100;hand axe,2380,20;halberd,2381,400;double axe,2387,300;hatchet,2388,25;dragon lance,2314,9000;great axe,2415,20000;obsidian lance,2425,500;naginata,2426,1000;guardian halberd,2427,5000;orcish axe,2428,200;barbarian axe,2429,300;knight axe,2430,1000;stonecutter axe,2431,600000;fire axe,2432,7000;dwarven axe,2435,1000;daramanian waraxe,2440,900;daramanian axe,2441,400;ravagers axe,2443,50000;twin axe,2447,60000;war axe,2454,10000;beastslayer axe,3962,2000;ruthless axe,6553,70000;headchopper,7380,4000;vile axe,7388,60000;heroic axe,7389,15000;relic axe,7411,40000;butchers axe,7412,70000;titan axe,7413,40000;bloodslayer axe,7453,40000;destroyers axe,7454,60000;ice double axe,7455,90000;cursed axe,7433,30000;royal axe,7434,150000;black axe,7435,300000;angelwing axe,7436,200000;demonwing axe,8926,800000;")

-- Use legacy script for full NPC functionality
npcType:script("default.lua")

npcType:register()
