-- Converted from: other/food.lua
-- Original XML: actions.xml

local foods = {
	[2362] = {5, "Crunch."}, -- carrot
	[2666] = {15, "Munch."}, -- meat
	[2667] = {12, "Munch."}, -- fish
	[2668] = {10, "Mmmm."}, -- salmon
	[2669] = {17, "Munch."}, -- northern pike
	[2670] = {4, "Gulp."}, -- shrimp
	[2671] = {30, "Chomp."}, -- ham
	[2672] = {60, "Chomp."}, -- dragon ham
	[2673] = {5, "Yum."}, -- pear
	[2674] = {6, "Yum."}, -- red apple
	[2675] = {13, "Yum."}, -- orange
	[2676] = {8, "Yum."}, -- banana
	[2677] = {1, "Yum."}, -- blueberry
	[2678] = {18, "Slurp."}, -- coconut
	[2679] = {1, "Yum."}, -- cherry
	[2680] = {2, "Yum."}, -- strawberry
	[2681] = {9, "Yum."}, -- grapes
	[2682] = {20, "Yum."}, -- melon
	[2683] = {17, "Munch."}, -- pumpkin
	[2684] = {5, "Crunch."}, -- carrot
	[2685] = {6, "Munch."}, -- tomato
	[2686] = {9, "Crunch."}, -- corncob
	[2687] = {2, "Crunch."}, -- cookie
	[2688] = {2, "Munch."}, -- candy cane
	[2689] = {10, "Crunch."}, -- bread
	[2690] = {3, "Crunch."}, -- roll
	[2691] = {8, "Crunch."}, -- brown bread
	[2695] = {6, "Gulp."}, -- egg
	[2696] = {9, "Smack."}, -- cheese
	[2787] = {9, "Munch."}, -- white mushroom
	[2788] = {4, "Munch."}, -- red mushroom
	[2789] = {22, "Munch."}, -- brown mushroom
	[2790] = {30, "Munch."}, -- orange mushroom
	[2791] = {9, "Munch."}, -- wood mushroom
	[2792] = {6, "Munch."}, -- dark mushroom
	[2793] = {12, "Munch."}, -- some mushrooms
	[2794] = {3, "Munch."}, -- some mushrooms
	[2795] = {36, "Munch."}, -- fire mushroom
	[2796] = {5, "Munch."}, -- green mushroom
	[5097] = {4, "Yum."}, -- mango
	[6125] = {8, "Gulp."}, -- tortoise egg
	[6278] = {10, "Mmmm."}, -- cake
	[6279] = {15, "Mmmm."}, -- decorated cake
	[6393] = {12, "Mmmm."}, -- valentine's cake
	[6394] = {15, "Mmmm."}, -- cream cake
	[6501] = {20, "Mmmm."}, -- gingerbread man
	[6541] = {6, "Gulp."}, -- coloured egg (yellow)
	[6542] = {6, "Gulp."}, -- coloured egg (red)
	[6543] = {6, "Gulp."}, -- coloured egg (blue)
	[6544] = {6, "Gulp."}, -- coloured egg (green)
	[6545] = {6, "Gulp."}, -- coloured egg (purple)
	[6569] = {1, "Mmmm."}, -- candy
	[6574] = {5, "Mmmm."}, -- bar of chocolate
	[7158] = {15, "Munch."}, -- rainbow trout
	[7159] = {13, "Munch."}, -- green perch
	[7372] = {2, "Yum."}, -- ice cream cone (crispy chocolate chips)
	[7373] = {2, "Yum."}, -- ice cream cone (velvet vanilla)
	[7374] = {2, "Yum."}, -- ice cream cone (sweet strawberry)
	[7375] = {2, "Yum."}, -- ice cream cone (chilly cherry)
	[7376] = {2, "Yum."}, -- ice cream cone (mellow melon)
	[7377] = {2, "Yum."}, -- ice cream cone (blue-barian)
	[7909] = {4, "Crunch."}, -- walnut
	[7910] = {4, "Crunch."}, -- peanut
	[7963] = {60, "Munch."}, -- marlin
	[8112] = {9, "Urgh."}, -- scarab cheese
	[8838] = {10, "Gulp."}, -- potato
	[8839] = {5, "Yum."}, -- plum
	[8840] = {1, "Yum."}, -- raspberry
	[8841] = {1, "Urgh."}, -- lemon
	[8842] = {7, "Munch."}, -- cucumber
	[8843] = {5, "Crunch."}, -- onion
	[8844] = {1, "Gulp."}, -- jalapeño pepper
	[8845] = {5, "Munch."}, -- beetroot
	[8847] = {11, "Yum."}, -- chocolate cake
	[9005] = {7, "Slurp."}, -- yummy gummy worm
	[9114] = {5, "Crunch."}, -- bulb of garlic
	[9996] = {0, "Slurp."}, -- banana chocolate shake
	[10454] = {0, "Your head begins to feel better."}, -- headache pill
	[11246] = {15, "Yum."}, -- rice ball
	[11370] = {3, "Urgh."}, -- terramite eggs
	[11429] = {10, "Mmmm."}, -- crocodile steak
	[12415] = {20, "Yum."}, -- pineapple
	[12416] = {10, "Munch."}, -- aubergine
	[12417] = {8, "Crunch."}, -- broccoli
	[12418] = {9, "Crunch."}, -- cauliflower
	[12637] = {55, "Gulp."}, -- ectoplasmic sushi
	[12638] = {18, "Yum."}, -- dragonfruit
	[12639] = {2, "Munch."}, -- peas
	[13297] = {20, "Crunch."}, -- haunch of boar
	[15405] = {55, "Munch."}, -- sandfish
	[15487] = {14, "Urgh."}, -- larvae
	[15488] = {15, "Munch."}, -- deepling filet
	[16014] = {60, "Mmmm."}, -- anniversary cake
	[18397] = {33, "Munch."}, -- mushroom pie
	[19737] = {10, "Urgh."}, -- insectoid eggs
	[20100] = {15, "Smack."}, -- soft cheese
	[20101] = {12, "Smack."} -- rat cheese
}

local action1 = Action()
action1:id(2362)

local action2 = Action()
action2:id(2666)
action2:id(2667)
action2:id(2668)
action2:id(2669)
action2:id(2670)
action2:id(2671)
action2:id(2672)
action2:id(2673)
action2:id(2674)
action2:id(2675)
action2:id(2676)
action2:id(2677)
action2:id(2678)
action2:id(2679)
action2:id(2680)
action2:id(2681)
action2:id(2682)
action2:id(2683)
action2:id(2684)
action2:id(2685)
action2:id(2686)
action2:id(2687)
action2:id(2688)
action2:id(2689)
action2:id(2690)
action2:id(2691)

local action3 = Action()
action3:id(2695)
action3:id(2696)

local action4 = Action()
action4:id(2787)
action4:id(2788)
action4:id(2789)
action4:id(2790)
action4:id(2791)
action4:id(2792)
action4:id(2793)
action4:id(2794)
action4:id(2795)
action4:id(2796)

local action5 = Action()
action5:id(5097)

local action6 = Action()
action6:id(6125)

local action7 = Action()
action7:id(6278)
action7:id(6279)

local action8 = Action()
action8:id(6393)
action8:id(6394)

local action9 = Action()
action9:id(6501)

local action10 = Action()
action10:id(6541)
action10:id(6542)
action10:id(6543)
action10:id(6544)
action10:id(6545)

local action11 = Action()
action11:id(6569)

local action12 = Action()
action12:id(6574)

local action13 = Action()
action13:id(7158)
action13:id(7159)

local action14 = Action()
action14:id(7372)
action14:id(7373)
action14:id(7374)
action14:id(7375)
action14:id(7376)
action14:id(7377)

local action15 = Action()
action15:id(7909)
action15:id(7910)

local action16 = Action()
action16:id(7963)

local action17 = Action()
action17:id(8112)

local action18 = Action()
action18:id(8838)
action18:id(8839)
action18:id(8840)
action18:id(8841)
action18:id(8842)
action18:id(8843)
action18:id(8844)
action18:id(8845)

local action19 = Action()
action19:id(8847)

local action20 = Action()
action20:id(9005)

local action21 = Action()
action21:id(9114)

local action22 = Action()
action22:id(9996)

local action23 = Action()
action23:id(10454)

local action24 = Action()
action24:id(11246)

local action25 = Action()
action25:id(11370)

local action26 = Action()
action26:id(11429)

local action27 = Action()
action27:id(12415)
action27:id(12416)
action27:id(12417)
action27:id(12418)

local action28 = Action()
action28:id(12637)
action28:id(12638)
action28:id(12639)

local action29 = Action()
action29:id(13297)

local action30 = Action()
action30:id(15405)

local action31 = Action()
action31:id(15487)
action31:id(15488)

local action32 = Action()
action32:id(16014)

local action33 = Action()
action33:id(18397)

local action34 = Action()
action34:id(19737)

local action35 = Action()
action35:id(20100)
action35:id(20101)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local food = foods[item.itemid]
	if food == nil then
		return false
	end

	local condition = player:getCondition(CONDITION_REGENERATION, CONDITIONID_DEFAULT)
	if condition and math.floor(condition:getTicks() / 1000 + food[1]) >= 1200 then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are full.")
	else
		player:feed(food[1] * 12)
		player:say(food[2], TALKTYPE_MONSTER_SAY)
		item:remove(1)
	end
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()
action3:onUse(onUse)
action3:register()
action4:onUse(onUse)
action4:register()
action5:onUse(onUse)
action5:register()
action6:onUse(onUse)
action6:register()
action7:onUse(onUse)
action7:register()
action8:onUse(onUse)
action8:register()
action9:onUse(onUse)
action9:register()
action10:onUse(onUse)
action10:register()
action11:onUse(onUse)
action11:register()
action12:onUse(onUse)
action12:register()
action13:onUse(onUse)
action13:register()
action14:onUse(onUse)
action14:register()
action15:onUse(onUse)
action15:register()
action16:onUse(onUse)
action16:register()
action17:onUse(onUse)
action17:register()
action18:onUse(onUse)
action18:register()
action19:onUse(onUse)
action19:register()
action20:onUse(onUse)
action20:register()
action21:onUse(onUse)
action21:register()
action22:onUse(onUse)
action22:register()
action23:onUse(onUse)
action23:register()
action24:onUse(onUse)
action24:register()
action25:onUse(onUse)
action25:register()
action26:onUse(onUse)
action26:register()
action27:onUse(onUse)
action27:register()
action28:onUse(onUse)
action28:register()
action29:onUse(onUse)
action29:register()
action30:onUse(onUse)
action30:register()
action31:onUse(onUse)
action31:register()
action32:onUse(onUse)
action32:register()
action33:onUse(onUse)
action33:register()
action34:onUse(onUse)
action34:register()
action35:onUse(onUse)
action35:register()