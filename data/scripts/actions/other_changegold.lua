-- Converted from: other/changegold.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2148)

local action2 = Action()
action2:id(2152)

local action3 = Action()
action3:id(2160)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local coin = config[item:getId()]
	if coin.changeTo and item.type == 100 then
		item:remove()
		player:addItem(coin.changeTo, 1)
	elseif coin.changeBack then
		item:remove(1)
		player:addItem(coin.changeBack, 100)
	else
		return false
	end
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()
action3:onUse(onUse)
action3:register()