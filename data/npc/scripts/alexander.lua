local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


shopModule:addSellableItem({'Vial Maly'}, 7636, 3, 'Vial')
shopModule:addSellableItem({'Vial Sredni'}, 7634, 6, 'Vial')
shopModule:addSellableItem({'Vial Ogromny'}, 7635, 6, 'Vial')


shopModule:addSellableItem({'spellbook of warding'}, 8901, 8000, 'spellbook of warding')
shopModule:addSellableItem({'spellbook of enlightenment'}, 8900, 4000, 'spellbook of enlightenment')
shopModule:addSellableItem({'spellbook of mind control'}, 8902, 13000, 'spellbook of mind control')
shopModule:addSellableItem({'spellbook of lost souls'}, 8903, 19000, 'spellbook of lost souls')


shopModule:addSellableItem({'wand of vortex'}, 2190, 250,  1, 'wand of vortex')
shopModule:addSellableItem({'wand of dragonbreath'}, 2191, 500,  1, 'wand of dragonbreath')
shopModule:addSellableItem({'wand of decay', 'decay'}, 2188, 2500,  1, 'wand of decay')
shopModule:addSellableItem({'wand of draconia', 'draconia'}, 8921, 3250,  1, 'wand of draconia')
shopModule:addSellableItem({'wand of starstorm', 'starstorm'}, 8920, 10000,  1, 'wand of starstorm')
shopModule:addSellableItem({'wand of voodoo', 'voodoo'}, 8922, 12000,  1, 'wand of voodoo')
shopModule:addSellableItem({'snakebite rod', 'snakebite'}, 2182, 250,  1, 'snakebite rod')
shopModule:addSellableItem({'moonlight rod', 'moonlight'}, 2186, 500,  1, 'moonlight rod')
shopModule:addSellableItem({'necrotic rod', 'necrotic'}, 2185, 2500,  1, 'necrotic rod')
shopModule:addSellableItem({'northwind rod', 'northwind'}, 8911, 3250,  1, 'northwind rod')
shopModule:addSellableItem({'terra rod', 'terra'}, 2181, 5000,  1, 'terra rod')
shopModule:addSellableItem({'hailstorm rod', 'hailstorm'}, 2183, 3000,  1, 'hailstorm rod')
shopModule:addSellableItem({'springsprout rod', 'springsprout'}, 8912, 10000,  1, 'springsprout rod')
shopModule:addSellableItem({'underworld rod', 'underworld'}, 8910, 12000,  1, 'underworld rod')
shopModule:addSellableItem({'wand of inferno'}, 2187, 4500,  1, 'wand of inferno')
shopModule:addSellableItem({'wand of cosmic Energy'}, 2189, 3000,  1, 'wand of cosmic energy')






shopModule:addBuyableItem({'purple backpack'}, 2001, 20,  1, 'purple backpack')
shopModule:addBuyableItem({'red backpack'}, 2000, 20,  1, 'red backpack')

shopModule:addBuyableItem({'mana potion'}, 7620, 45,  1, 'mana potion')
shopModule:addBuyableItem({'strong mana potion', 'smp'}, 7589, 80,  1, 'strong mana potion')
shopModule:addBuyableItem({'great mana potion', 'gmp'}, 7590, 120,  1, 'great mana potion')
shopModule:addBuyableItem({'health potion'}, 7618, 45,  1, 'health potion')
shopModule:addBuyableItem({'strong health potion', 'shp'}, 7588, 100,  1, 'strong health potion')
shopModule:addBuyableItem({'great health potion', 'ghp'}, 7591, 190,  1, 'great health potion')
shopModule:addBuyableItem({'great spirit potion', 'gsp'}, 8472, 190,  1, 'great spirit potion')
shopModule:addBuyableItem({'ultimate health potion', 'uhp'}, 8473, 310,  1, 'ultimate health potion')


shopModule:addBuyableItem({'paralyze rune', 'pr'}, 				2278, 700, 	1,	'paralyze rune')
shopModule:addBuyableItem({'wild growth rune', 'wgr'}, 				2269, 160, 	1,	'wild growth rune')
shopModule:addBuyableItem({'avalanche runes', 'ars'}, 				2274, 45, 	1,	'avalanche runes')
shopModule:addBuyableItem({'animate dead runes', 'adr'}, 				2316, 385, 	1,	'animate dead runes')
shopModule:addBuyableItem({'thunderstorm runes', 'trs'}, 				2315, 40, 	1,	'thunderstorm runes')
shopModule:addBuyableItem({'stone shower runes', 'ssr'}, 				2288, 40, 	1,	'stone shower runes')
shopModule:addBuyableItem({'chameleon runes', 'chr'}, 				2291, 140, 	1,	'chameleon runes')
shopModule:addBuyableItem({'desintegrate runes', 'drs'}, 				2310, 42, 	1,	'desintegrate runes')

shopModule:addBuyableItem({'heavy magic missile', 'hmm'}, 				2311, 80, 	1,	'heavy magic missile rune')
shopModule:addBuyableItem({'great fireball', 'gfb'}, 					2304, 45, 	1, 	'great fireball rune')
shopModule:addBuyableItem({'explo', 'xpl'}, 							2313, 31, 	1, 	'explosion rune')
shopModule:addBuyableItem({'ultimate healing', 'uh'}, 					2273, 175, 	1, 	'ultimate healing rune')
shopModule:addBuyableItem({'sudden death', 'sd'}, 						2268, 108, 	1, 	'sudden death rune')
shopModule:addBuyableItem({'blank', 'rune'}, 							2260, 10,  1, 		'blank rune')
shopModule:addBuyableItem({'magic wall', 'wall'}, 2293, 116, 1,	'magic wall')
shopModule:addBuyableItem({'icicle runes', 'ir'}, 2271, 30, 1,	'icicle rune')
shopModule:addBuyableItem({'firebomb', 'fb'}, 2305, 235, 1, 'firebomb')
shopModule:addBuyableItem({'destroy field', 'df'}, 2261, 20, 1, 'destroy field')
shopModule:addBuyableItem({'intense healing', 'ih'}, 2265, 95, 1, 'intense healing rune')


shopModule:addBuyableItem({'wand of vortex', 'vortex'}, 2190, 500,  1, 'wand of vortex')
shopModule:addBuyableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 1000,  1, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of decay', 'decay'}, 2188, 5000,  1, 'wand of decay')
shopModule:addBuyableItem({'wand of draconia', 'draconia'}, 8921, 7500,  1, 'wand of draconia')
shopModule:addBuyableItem({'wand of starstorm', 'starstorm'}, 8920, 18000,  1, 'wand of starstorm')
shopModule:addBuyableItem({'wand of voodoo', 'voodoo'}, 8922, 22000,  1, 'wand of voodoo')


shopModule:addBuyableItem({'snakebite rod', 'snakebite'}, 2182, 500,  1, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod', 'moonlight'}, 2186, 1000,  1, 'moonlight rod')
shopModule:addBuyableItem({'necrotic rod', 'necrotic'}, 2185, 5000,  1, 'necrotic rod')
shopModule:addBuyableItem({'northwind rod', 'northwind'}, 8911, 7500,  1, 'northwind rod')
shopModule:addBuyableItem({'terra rod', 'terra'}, 2181, 10000,  1, 'terra rod')
shopModule:addBuyableItem({'hailstorm rod', 'hailstorm'}, 2183, 15000,  1, 'hailstorm rod')
shopModule:addBuyableItem({'springsprout rod', 'springsprout'}, 8912, 18000,  1, 'springsprout rod')
shopModule:addBuyableItem({'underworld rod', 'underworld'}, 8910, 22000,  1, 'underworld rod')
shopModule:addBuyableItem({'wand of inferno'}, 2187, 15000,  1, 'wand of inferno')
shopModule:addBuyableItem({'wand of cosmic Energy'}, 2189, 6000,  1, 'wand of cosmic energy')

npcHandler:addModule(FocusModule:new())