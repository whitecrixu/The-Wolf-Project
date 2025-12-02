-- Converted from: other/lotteryticket.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(5957)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if math.random(50) == 1 then
		player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
		player:say("Congratulations! You won a prize!", TALKTYPE_MONSTER_SAY)
		item:transform(5958)
	else
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:say("Sorry, but you drew a blank.", TALKTYPE_MONSTER_SAY)
		item:remove(1)
	end
	return true
end

action1:onUse(onUse)
action1:register()