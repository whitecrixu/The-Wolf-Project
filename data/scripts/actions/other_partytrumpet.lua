-- Converted from: other/partytrumpet.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(6572)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	item:transform(13578)
	item:decay()
	player:say("TOOOOOOT!", TALKTYPE_MONSTER_SAY)
	fromPosition:sendMagicEffect(CONST_ME_SOUND_BLUE)
	return true
end

action1:onUse(onUse)
action1:register()