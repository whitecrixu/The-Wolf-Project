-- Converted from: other/surprisebag.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(6570)
action1:id(6571)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local count = 1
	local targetItem = presents[item.itemid]
	if not targetItem then
		return true
	end

	local gift = targetItem[math.random(#targetItem)]
	if type(gift) == "table" then
		gift = gift[1]
		count = gift[2]
	end

	player:addItem(gift, count)
	item:remove(1)
	fromPosition:sendMagicEffect(CONST_ME_GIFT_WRAPS)
	return true
end

action1:onUse(onUse)
action1:register()