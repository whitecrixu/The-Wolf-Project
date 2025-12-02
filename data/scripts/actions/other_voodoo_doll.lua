-- Converted from: other/voodoo_doll.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(3955)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	if target.itemid ~= 1 or target.type ~= THING_TYPE_PLAYER then
		return false
	end

	local text = ""
	if math.random(100) <= 5 then
		text = "You concentrate on your victim and hit the needle in the doll."
		-- player:addAchievement("Dark Voodoo Priest")
		toPosition:sendMagicEffect(CONST_ME_DRAWBLOOD, player)
	else
		text = "You concentrate on your victim, hit the needle in the doll.......but nothing happens."
	end

	player:say(text, TALKTYPE_MONSTER_SAY, false, player)
	return true
end

action1:onUse(onUse)
action1:register()