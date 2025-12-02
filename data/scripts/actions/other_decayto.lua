-- Converted from: other/decayto.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2041)
action1:id(2042)

local action2 = Action()
action2:id(2044)
action2:id(2045)

local action3 = Action()
action3:id(2047)
action3:id(2048)

local action4 = Action()
action4:id(2050)
action4:id(2051)
action4:id(2052)
action4:id(2053)
action4:id(2054)
action4:id(2055)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local decayItemId = decayItems[item:getId()]
	if not decayItemId then
		return false
	end

	item:transform(decayItemId)
	item:decay()
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