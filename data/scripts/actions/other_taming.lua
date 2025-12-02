-- Converted from: other/taming.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(5907)

local action2 = Action()
action2:id(13247)

local action3 = Action()
action3:id(13291)
action3:id(13292)
action3:id(13293)
action3:id(13294)
action3:id(13295)

local action4 = Action()
action4:id(13298)

local action5 = Action()
action5:id(13305)

local action6 = Action()
action6:id(13307)

local action7 = Action()
action7:id(13498)

local action8 = Action()
action8:id(13508)

local action9 = Action()
action9:id(13535)
action9:id(13536)
action9:id(13537)
action9:id(13538)
action9:id(13539)

local action10 = Action()
action10:id(13938)
action10:id(13939)

local action11 = Action()
action11:id(15545)
action11:id(15546)

local action12 = Action()
action12:id(18447)
action12:id(18448)
action12:id(18449)

local action13 = Action()
action13:id(18516)

local action14 = Action()
action14:id(20138)

local action15 = Action()
action15:id(22608)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local mount = config[item.itemid]
	if not mount then
		return false
	end

	local targetName = target:getName():lower()
	if mount.type ~= target.type
			or (mount.lookType and mount.lookType ~= target:getOutfit().lookType)
			or (mount.name and mount.name ~= targetName) then
		return false
	end

	if player:hasMount(mount.id) then
		player:say('You already tamed a ' .. (mount.mountName or targetName) .. '.', TALKTYPE_MONSTER_SAY)
		return true
	end

	if target.type == TYPE_MONSTER then
		if target:getMaster() then
			return false
		end
	end

	if math.random(100) > mount.chance then
		local action = mount.fail[math.random(#mount.fail)]
		if action.run then
			target:remove()
		elseif action.broke then
			item:remove(1)
		elseif action.destroyObject then
			addEvent(Game.createItem, 60 * 60 * 1000, target.itemid, 1, toPosition)
			target:remove()
		elseif action.removeTransformation then
			target:removeCondition(CONDITION_OUTFIT)
		end

		doCreatureSayWithRadius(player, action.text, TALKTYPE_MONSTER_SAY, 2, 2)
		if action.sound then
			player:say(action.sound, TALKTYPE_MONSTER_SAY, false, 0, toPosition)
		end
		return true
	end

	player:addMount(mount.id)
	doCreatureSayWithRadius(player, mount.success.text, TALKTYPE_MONSTER_SAY, 2, 2)
	player:say(mount.success.sound, TALKTYPE_MONSTER_SAY, false, 0, toPosition)

	target:remove()
	item:remove(1)
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
action7:onUse(onUse)
action7:register()
action8:onUse(onUse)
action8:register()
action9:onUse(onUse)
action9:register()
action10:onUse(onUse)
action10:register()
action11:onUse(onUse)
action11:register()
action12:onUse(onUse)
action12:register()
action13:onUse(onUse)
action13:register()
action14:onUse(onUse)
action14:register()
action15:onUse(onUse)
action15:register()