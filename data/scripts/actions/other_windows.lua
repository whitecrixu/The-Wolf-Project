-- Converted from: other/windows.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(6436)
action1:id(6437)
action1:id(6438)
action1:id(6439)
action1:id(6440)
action1:id(6441)
action1:id(6442)
action1:id(6443)
action1:id(6444)
action1:id(6445)
action1:id(6446)
action1:id(6447)

local action2 = Action()
action2:id(6450)
action2:id(6451)
action2:id(6452)
action2:id(6453)
action2:id(6454)
action2:id(6455)
action2:id(6456)
action2:id(6457)
action2:id(6458)
action2:id(6459)
action2:id(6460)
action2:id(6461)
action2:id(6462)
action2:id(6463)
action2:id(6464)
action2:id(6465)
action2:id(6466)
action2:id(6467)
action2:id(6468)
action2:id(6469)
action2:id(6470)
action2:id(6471)
action2:id(6472)
action2:id(6473)

local action3 = Action()
action3:id(6788)
action3:id(6789)
action3:id(6790)
action3:id(6791)

local action4 = Action()
action4:id(7025)
action4:id(7026)
action4:id(7027)
action4:id(7028)
action4:id(7029)
action4:id(7030)
action4:id(7031)
action4:id(7032)

local action5 = Action()
action5:id(10264)
action5:id(10265)
action5:id(10266)
action5:id(10267)

local action6 = Action()
action6:id(10488)
action6:id(10489)
action6:id(10490)
action6:id(10491)

local action7 = Action()
action7:id(5303)
action7:id(5304)

local action8 = Action()
action8:id(6448)
action8:id(6449)

local action9 = Action()
action9:id(19427)
action9:id(19428)

local action10 = Action()
action10:id(19440)
action10:id(19441)

local action11 = Action()
action11:id(19443)
action11:id(19444)
action11:id(19445)
action11:id(19446)
action11:id(19447)
action11:id(19448)
action11:id(19449)
action11:id(19450)

local action12 = Action()
action12:id(19974)
action12:id(19975)

local action13 = Action()
action13:id(20180)
action13:id(20181)
action13:id(20182)
action13:id(20183)
action13:id(20184)
action13:id(20185)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local window = windows[item:getId()]
	if window == nil then
		return false
	end

	local tile = Tile(fromPosition)
	local house = tile and tile:getHouse()
	if not house then
		fromPosition.y = fromPosition.y - 1
		tile = Tile(fromPosition)
		house = tile and tile:getHouse()
		if not house then
			fromPosition.y = fromPosition.y + 1
			fromPosition.x = fromPosition.x - 1
			tile = Tile(fromPosition)
			house = tile and tile:getHouse()
		end
	end

	if house and player:getTile():getHouse() ~= house and player:getAccountType() < ACCOUNT_TYPE_GAMEMASTER then
		return false
	end

	item:transform(window)
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