-- Converted from: tools/toolgear.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(10511)

local action2 = Action()
action2:id(10513)

local action3 = Action()
action3:id(10515)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	return onUseRope(player, item, fromPosition, target, toPosition, isHotkey)
		or onUseShovel(player, item, fromPosition, target, toPosition, isHotkey)
		or onUsePick(player, item, fromPosition, target, toPosition, isHotkey)
		or onUseMachete(player, item, fromPosition, target, toPosition, isHotkey)
		or onUseScythe(player, item, fromPosition, target, toPosition, isHotkey)
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()
action3:onUse(onUse)
action3:register()