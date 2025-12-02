-- Converted from: tools/rustremover.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(9930)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local targetItem = config[target.itemid]
	if not targetItem then
		return true
	end

	local chance = math.random(100000)
	for i = 1, #targetItem do
		if chance >= targetItem[i][1][1] and chance <= targetItem[i][1][2] then
			if targetItem[i][2] then
				target:transform(targetItem[i][2])
				toPosition:sendMagicEffect(CONST_ME_MAGIC_GREEN)
			else
				player:say((isInArray({9808, 9809, 9810}, target.itemid) and "The armor was already damaged so badly that it broke when you tried to clean it." or "The legs were already damaged so badly that they broke when you tried to clean them."),TALKTYPE_MONSTER_SAY)
				target:remove()
				toPosition:sendMagicEffect(CONST_ME_BLOCKHIT)
			end
			return item:remove(1)
		end
	end
end

action1:onUse(onUse)
action1:register()