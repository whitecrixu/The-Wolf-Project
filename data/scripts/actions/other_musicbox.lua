-- Converted from: other/musicbox.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(18511)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if not target:isCreature() or not target:isMonster() or target:getMaster() then
		return false
	end

	local targetName = target:getName():lower()
	local monsterConfig = config[targetName]
	if not monsterConfig then
		return true
	end

	if player:hasMount(monsterConfig.mountId) then
		player:say('You already tamed a ' .. (monsterConfig.mountName or targetName) .. '.', TALKTYPE_MONSTER_SAY)
		return true
	end

	player:addMount(monsterConfig.mountId)
	player:say(monsterConfig.tameMessage, TALKTYPE_MONSTER_SAY)
	toPosition:sendMagicEffect(CONST_ME_SOUND_RED)

	target:say(monsterConfig.sound, TALKTYPE_MONSTER_SAY)
	target:remove()

	item:remove()
	return true
end

action1:onUse(onUse)
action1:register()