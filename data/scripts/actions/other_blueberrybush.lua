-- Converted from: other/blueberrybush.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2785)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	item:transform(2786)
	item:decay()
	Game.createItem(2677, 3, fromPosition)
	return true
end

action1:onUse(onUse)
action1:register()