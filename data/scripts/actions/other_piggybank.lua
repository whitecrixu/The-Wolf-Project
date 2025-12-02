-- Converted from: other/piggybank.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2114)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if math.random(6) == 1 then
		item:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:addItem(ITEM_GOLD_COIN, 1)
		item:transform(2115)
	else
		item:getPosition():sendMagicEffect(CONST_ME_SOUND_YELLOW)
		player:addItem(ITEM_PLATINUM_COIN, 1)
	end
	return true
end

action1:onUse(onUse)
action1:register()