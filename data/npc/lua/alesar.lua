-- Alesar NPC - Uses legacy script system
local internalNpcName = "Alesar"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Alesar")

npcType:health(100)
npcType:maxHealth(100)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 143,
	lookHead = 116,
	lookBody = 38,
	lookLegs = 95,
	lookFeet = 120,
	lookAddons = 3,
})

-- Parameters for NpcHandler modules
npcType:parameter("message_greet", "What do you want from me, |PLAYERNAME|?")
npcType:parameter("module_shop", "1")
npcType:parameter("shop_sellable", "zaoan shoes,11303,5000;glacier kilt,7896,11000;scale armor,2483,75;royal helmet,2498,30000;warrior helmet,2475,5000;crusader helmet,2497,6000;crown helmet,2491,2500;devil helmet,2462,1000;mystic turban,2663,150;chain helmet,2458,17;iron helmet,2459,150;steel boots,2645,30000;boots of haste,2195,25000;golden boots,2646,70000;magic plate armor,2472,90000;dragon scale mail,2492,40000;demon armor,2494,150000;golden armor,2466,20000;knight armor,2476,5000;blue robe,2656,10000;lady armor,2500,5000;plate armor,2463,400;brass armor,2465,200;chain armor,2464,100;golden legs,2470,30000;crown legs,2488,12000;knight legs,2477,5000;plate legs,2647,500;brass legs,2487,100;mastermind shield,2514,50000;demon shield,2520,30000;vampire shield,2534,15000;medusa shield,2536,9000;amazon shield,2537,5000;crown shield,2519,8000;tower shield,2528,8000;guardian shield,2515,2000;beholder shield,2518,1200;dwarven shield,2525,100;Amazon Helmet,2499,5000;Batwing Hat,10016,8000;Dark Helmet,2490,300;Horseman Helmet,3969,280;Jade Hat,11368,9000;Krimhorn Helmet,7461,200;Lightning Headband,7901,2500;Magma Monocle,7900,2500;Glacier Mask,7902,2500;Helmet of the Deep,5461,5000;Skull Helmet,5741,40000;Ragnir Helmet,7462,400;Steel Helmet,2457,300;Strange Helmet,2479 , 500;Terra Hood,7903,2500;Witch Hat,10570,5000;Zaoan Helmet,11302,45000;Belted Cape,8872,500;Crystalline Armor,8878,16000;Dark Armor,2489,400;Dark Lord's Cape,8865,50000;Divine Plate,8885,55000;Dragon Robe,8867,90000;Dwarven Armor,2503,30000;Focus Cape,8871,6000;Glacier Robe,7897,11000;Lavos Armor,8877,16000;Lightning Robe,7898,11000;Magma Coat,7899,11000;Noble Armor,2486,900;Paladin Armor,8891,15000;Skullcracker Armor,8889,18000;Spellweaver's Robe,11355,12000 ;Spirit Cloak,8870,350;Swamplair Armor,8880,16000;Terra Mantle,7884,11000;Zaoan Armor,11301,14000;Blue Legs,7730,12000;Dwarven Legs,2504,40000;Lightning Legs,7895,11000;Terra Legs,7885,12000;Magma Legs,7894,11000;Pirate Knee Breeches,5918,200;Zaoan Legs,11304,14000;Crocodile Boots,3982,1000;Fur Boots,7457,2000;Glacier Shoes,7892,2500;Guardian Boots,11240,50000;Lightning Boots,7893,15000;Magma Boots,7891,5000;Pirate Boots,5462,3000;Terra Boots,7886,2500;Battle Shield,2513,95;Black Shield,2529,800;Bone Shield,2541,80;Castle Shield,2535,5000;Dark Shield,2521,400;Dwarven Shield,2525,100;Guardian Shield,2515,2000;Norse Shield,7460,1500;Rose Shield,2527,1000;Salamander Shield,3975,280;Scarab Shield,2540,2000;Sentinel Shield,3974,120;Shield of Honour,2517,520;Tempest Shield,2542,35000;Tortoise Shield,6131,150;Brass Helmet,2460,30;viking helmet,2473,66;steel shield,2509,80;Crown Armor,2487,12000;Copper Shield,2530,50;Dragon Shield,2516,4000;Magic Plate Armor,2472,90000")

-- Use legacy script for full NPC functionality
npcType:script("default.lua")

npcType:register()
