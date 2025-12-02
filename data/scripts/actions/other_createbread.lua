-- Converted from: other/createbread.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2692)

local action2 = Action()
action2:id(2694)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local itemId = item:getId()
	if itemId == 2692 then
		if target.type == 1 and isInArray(liquidContainers, target.itemid) then
			item:remove(1)
			player:addItem(2693, 1)
			target:transform(target.itemid, 0)
			return true
		end
	elseif isInArray(millstones, target.itemid) then
		item:remove(1)
		player:addItem(2692, 1)
		return true
	end
	return false
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()