-- Converted from: other/music.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2070)
action1:id(2071)
action1:id(2072)
action1:id(2073)
action1:id(2074)
action1:id(2075)
action1:id(2076)
action1:id(2077)
action1:id(2078)

local action2 = Action()
action2:id(2080)
action2:id(2081)
action2:id(2082)
action2:id(2083)
action2:id(2084)
action2:id(2085)

local action3 = Action()
action3:id(2332)

local action4 = Action()
action4:id(2364)

local action5 = Action()
action5:id(2367)
action5:id(2368)

local action6 = Action()
action6:id(2370)
action6:id(2371)
action6:id(2372)
action6:id(2373)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	-- TODO: Different music effect for different instruments.
	item:getPosition():sendMagicEffect(CONST_ME_SOUND_BLUE)
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