-- Converted from: tools/juice squeezer.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(5865)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if isInArray(fruits, target.itemid) and player:removeItem(2006, 1, 0) then
		target:remove(1)
		player:addItem(2006, target.itemid == 2678 and 14 or 21)
		return true
	end
end

action1:onUse(onUse)
action1:register()