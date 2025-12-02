-- Converted from: tools/fishing.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(2580)
action1:allowFarUse(true)

local action2 = Action()
action2:id(10223)
action2:allowFarUse(true)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local targetId = target.itemid
	if not isInArray(waterIds, target.itemid) then
		return false
	end

	if targetId == 10499 then
		local owner = target:getAttribute(ITEM_ATTRIBUTE_CORPSEOWNER)
		if owner ~= 0 and owner ~= player:getId() then
			player:sendTextMessage(MESSAGE_STATUS_SMALL, "You are not the owner.")
			return true
		end

		toPosition:sendMagicEffect(CONST_ME_WATERSPLASH)
		target:remove()

		local rareChance = math.random(1, 100)
		if rareChance == 1 then
			player:addItem(lootVeryRare[math.random(#lootVeryRare)], 1)
		elseif rareChance <= 3 then
			player:addItem(lootRare[math.random(#lootRare)], 1)
		elseif rareChance <= 10 then
			player:addItem(lootCommon[math.random(#lootCommon)], 1)
		else
			player:addItem(lootTrash[math.random(#lootTrash)], 1)
		end
		return true
	end

	if targetId ~= 7236 then
		toPosition:sendMagicEffect(CONST_ME_LOSEENERGY)
	end

	if targetId == 493 or targetId == 15402 then
		return true
	end

	player:addSkillTries(SKILL_FISHING, 1)
	if math.random(1, 100) <= math.min(math.max(10 + (player:getEffectiveSkillLevel(SKILL_FISHING) - 10) * 0.597, 10), 50) then
		if useWorms and not player:removeItem("worm", 1) then
			return true
		end

		if targetId == 15401 then
			target:transform(targetId + 1)
			target:decay()

			if math.random(1, 100) >= 97 then
				player:addItem(15405, 1)
				return true
			end
		elseif targetId == 7236 then
			target:transform(targetId + 1)
			target:decay()

			local rareChance = math.random(1, 100)
			if rareChance == 1 then
				player:addItem(7158, 1)
				return true
			elseif rareChance <= 4 then
				player:addItem(2669, 1)
				return true
			elseif rareChance <= 10 then
				player:addItem(7159, 1)
				return true
			end
		end
		player:addItem("fish", 1)
	end
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()