-- Converted from: other/trap.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2579)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	item:transform(item:getId() - 1)
	fromPosition:sendMagicEffect(CONST_ME_POFF)
	return true
end

action1:onUse(onUse)
action1:register()