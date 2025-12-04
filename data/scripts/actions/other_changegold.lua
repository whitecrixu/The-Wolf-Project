-- Converted from: other/changegold.lua
-- Original XML: actions.xml

-- Gold coin configuration
-- 2148 = gold coin, 2152 = platinum coin, 2160 = crystal coin
local config = {
	[2148] = { changeTo = 2152 },      -- 100 gold -> 1 platinum
	[2152] = { changeTo = 2160, changeBack = 2148 },  -- 100 platinum -> 1 crystal, or 1 platinum -> 100 gold
	[2160] = { changeBack = 2152 }     -- 1 crystal -> 100 platinum
}

local action1 = Action()
action1:id(2148)

local action2 = Action()
action2:id(2152)

local action3 = Action()
action3:id(2160)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local coin = config[item:getId()]
	if not coin then
		return false
	end
	
	if coin.changeTo and item:getCount() == 100 then
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