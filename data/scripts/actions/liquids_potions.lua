-- Converted from: liquids/potions.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(6558)

local action2 = Action()
action2:id(7439)
action2:id(7440)

local action3 = Action()
action3:id(7443)

local action4 = Action()
action4:id(7588)
action4:id(7589)
action4:id(7590)
action4:id(7591)

local action5 = Action()
action5:id(7618)

local action6 = Action()
action6:id(7620)

local action7 = Action()
action7:id(8472)
action7:id(8473)
action7:id(8474)

local action8 = Action()
action8:id(8704)

local action9 = Action()
action9:id(26029)
action9:id(26030)
action9:id(26031)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if type(target) == "userdata" and not target:isPlayer() then
		return false
	end

	local potion = potions[item:getId()]
	if potion.level and player:getLevel() < potion.level or potion.vocations and not isInArray(potion.vocations, player:getVocation():getBase():getId()) and not (player:getGroup():getId() >= 2) then
		player:say(potion.description, TALKTYPE_MONSTER_SAY)
		return true
	end

	if potion.health or potion.mana or potion.combat then
		if potion.health then
			doTargetCombatHealth(0, target, COMBAT_HEALING, potion.health[1], potion.health[2], CONST_ME_MAGIC_BLUE)
		end

		if potion.mana then
			doTargetCombatMana(0, target, potion.mana[1], potion.mana[2], CONST_ME_MAGIC_BLUE)
		end

		if potion.combat then
			potion.combat:execute(target, Variant(target:getId()))
		end

		target:say("Aaaah...", TALKTYPE_MONSTER_SAY)
		player:addItem(potion.flask, 1)
	end

	if potion.condition then
		player:addCondition(potion.condition)
		player:say(potion.text, TALKTYPE_MONSTER_SAY)
		player:getPosition():sendMagicEffect(potion.effect)
	end

	if potion.transform then
		item:transform(potion.transform.id[math.random(#potion.transform.id)])
		item:getPosition():sendMagicEffect(potion.effect)
		return true
	end

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