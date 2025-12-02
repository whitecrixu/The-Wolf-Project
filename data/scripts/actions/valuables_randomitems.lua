-- Converted from: valuables/randomitems.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(13670)

local action2 = Action()
action2:id(15572)

local action3 = Action()
action3:id(18215)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local useId = config[item.itemid]
	if not useId then
		return false
	end

	local chance = math.random(10001)
	for i = 1, #useId.chances do
		local randomItem = useId.chances[i]
		if chance >= randomItem.from and chance <= randomItem.to then
			if randomItem.itemId then
				local itemId, count = randomItem.itemId, randomItem.count or 1
				player:addItem(itemId, count)
				if item.itemid == 13670 then
					local itemType = ItemType(itemId)
					player:say('You found ' .. (count > 1 and count or (itemType:getArticle() ~= '' and itemType:getArticle() or '')) .. ' ' .. (count > 1 and itemType:getPluralName() or itemType:getName()) .. ' in the bag.', TALKTYPE_MONSTER_SAY)
				end
			else
				player:say('You found nothing useful.', TALKTYPE_MONSTER_SAY)
			end

			item:getPosition():sendMagicEffect(useId.effect)
			item:remove(1)
			break
		end
	end
	return true
end

action1:onUse(onUse)
action1:register()
action2:onUse(onUse)
action2:register()
action3:onUse(onUse)
action3:register()