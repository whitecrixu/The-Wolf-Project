-- Converted from: other/bed_modification_kits.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(7904)
action1:id(7905)
action1:id(7906)
action1:id(7907)

local action2 = Action()
action2:id(20252)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local newBed = beds[item:getId()]
	if not newBed or target == nil or not target:isItem() then
		return false
	end

	local tile = Tile(toPosition)
	if not tile or not tile:getHouse() then
		return false
	end

	local targetItemId = target:getId()
	if targetItemId == newBed[1][1] or targetItemId == newBed[2][1] then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, "You already have this bed modification.")
		return true
	end

	for _, bed in pairs(beds) do
		if bed[1][1] == targetItemId or isInArray({1758, 5502, 18027}, targetItemId) then
			toPosition:sendMagicEffect(CONST_ME_POFF)
			toPosition.y = toPosition.y + 1
			internalBedTransform(item, target, toPosition, newBed[1])
			break
		elseif bed[2][1] == targetItemId or isInArray({1756, 5500, 18029}, targetItemId) then
			toPosition:sendMagicEffect(CONST_ME_POFF)
			toPosition.x = toPosition.x + 1
			internalBedTransform(item, target, toPosition, newBed[2])
			break
		end
	end
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()