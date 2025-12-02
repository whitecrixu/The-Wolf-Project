-- Converted from: other/partyhat.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(6578)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local headSlotItem = player:getSlotItem(CONST_SLOT_HEAD)
	if headSlotItem == nil or item.uid ~= headSlotItem:getUniqueId() then
		return false
	end

	player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
	return true
end

action1:onUse(onUse)
action1:register()