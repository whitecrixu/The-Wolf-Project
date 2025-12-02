-- Kate NPC - Uses legacy script system
local internalNpcName = "Kate"
local npcType = Game.createNpcType(internalNpcName)

npcType:name(internalNpcName)
npcType:nameDescription("Kate")

npcType:health(150)
npcType:maxHealth(150)
npcType:speed(100)
npcType:walkInterval(2000)
npcType:walkRadius(2)

npcType:floorChange(false)
npcType:attackable(false)
npcType:speechBubble(SPEECHBUBBLE_TRADE)

npcType:outfit({
	lookType = 142,
	lookHead = 114,
	lookBody = 0,
	lookLegs = 95,
	lookFeet = 114,
	lookAddons = 0,
})

-- Parameters for NpcHandler modules
npcType:parameter("module_shop", "1")
npcType:parameter("message_greet", "Hello |PLAYERNAME|. I sell chairs, tables, plants, containers, pillows, tapestries and more. Everything for 500 gold pieces, just {trade}.")
npcType:parameter("shop_buyable", "wooden chair,3901,500;sofa chair,3902,500;red cushioned chair,3903,500;green cushioned chair,3904,500;tusk chair,3905,500;ivory chair,3906,500;water-pipe,3907,500;coal basin,3908,500;big table,3909,500;square table,3910,500;round table,3911,500;small table,3912,500;stone table,3913,500;tusk table,3914,500;chest,3915,500;barrel,3916,500;harp,3917,500;bird cage,3918,500;bamboo table,3919,500;bamboo drawer,3920,500;drawer,3921,500;exotic flower,3922,500;potted flower,3923,500;flower bowl,3924,500;chest,3925,500;piano,3926,500;globe,3927,500;rocking chair,3928,500;indoor plant,3929,500;crate,3930,500;christmas tree,3931,500;dresser,3932,500;pendelum clock,3933,500;locker,3934,500;trough,3935,500;time table,3936,500;table lamp,3937,500;bookcase,3938,500;box,5086,500;box2,5087,500;barrel2,5088,500;big flowerpot,6114,500;large amphora,6115,500;tree stump,6372,500;mirror,6373,500;large trunk,7503,500;goldfish bowl,7700,500;tree stump2,7960,500;cuckoo clock,7961,500;telescope,7962,500;furnace,8692,500;blue tapestry,1872,500;green tapestry,1860,500;orange tapestry,1866,500;pink tapestry,1857,500;red tapestry,1869,500;white tapestry,1880,500;yellow tapestry,1863,500;small purple pillow,1678,500;small green pillow,1679,500;small red pillow,1680,500;small blue pillow,1681,500;small orange pillow,1683,500;small turquiose pillow,1684,500;small white pillow,1685,500;heart pillow,1685,500;blue pillow,1686,500;red pillow,1687,500;green pillow,1688,500;yellow pillow,1689,500;round blue pillow,1690,500;round red pillow,1691,500;round purple pillow,1692,500;round turquiose pillow,1693,500;oval mirror,1845,750;round mirror,1848,750;edged mirror,1851,750;green bed,7904,1000;red bed,7905,1000;yellow bed,7906,1000;bed removal,7907,1000;wooden stake,5941,10000;")

-- Use legacy script for full NPC functionality
npcType:script("kate.lua")

npcType:register()
