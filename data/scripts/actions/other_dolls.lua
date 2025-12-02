-- Converted from: other/dolls.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(5080)

local action2 = Action()
action2:id(5669)

local action3 = Action()
action3:id(6388)

local action4 = Action()
action4:id(6512)

local action5 = Action()
action5:id(6566)

local action6 = Action()
action6:id(8974)

local action7 = Action()
action7:id(8977)

local action8 = Action()
action8:id(8981)

local action9 = Action()
action9:id(8982)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local sounds = dolls[item.itemid]
	if not sounds then
		return false
	end

	if fromPosition.x == CONTAINER_POSITION then
		fromPosition = player:getPosition()
	end

	local random = math.random(#sounds)
	local sound = sounds[random]
	if item.itemid == 6566 then
		if random == 3 then
			fromPosition:sendMagicEffect(CONST_ME_POFF)
		elseif random == 4 then
			fromPosition:sendMagicEffect(CONST_ME_FIREAREA)
		elseif random == 5 then
			doTargetCombatHealth(0, player, COMBAT_PHYSICALDAMAGE, -1, -1, CONST_ME_EXPLOSIONHIT)
		end
	elseif item.itemid == 5669 then
		fromPosition:sendMagicEffect(CONST_ME_MAGIC_RED)
		item:transform(item.itemid + 1)
		item:decay()
	elseif item.itemid == 6388 then
		fromPosition:sendMagicEffect(CONST_ME_SOUND_YELLOW)
	end

	sound = sound:gsub('|PLAYERNAME|', player:getName())
	player:say(sound, TALKTYPE_MONSTER_SAY, false, 0, fromPosition)
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