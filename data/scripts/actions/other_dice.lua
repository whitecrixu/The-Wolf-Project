-- Converted from: other/dice.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(5792)
action1:id(5793)
action1:id(5794)
action1:id(5795)
action1:id(5796)
action1:id(5797)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local position = item:getPosition()
	local value = math.random(1, 6)
	local isInGhostMode = player:isInGhostMode()

	position:sendMagicEffect(CONST_ME_CRAPS, isInGhostMode and player)

	local spectators = Game.getSpectators(position, false, true, 3, 3)
	for _, spectator in ipairs(spectators) do
		player:say(player:getName() .. " rolled a " .. value .. ".", TALKTYPE_MONSTER_SAY, isInGhostMode, spectator, position)
	end

	item:transform(5791 + value)
	return true
end

action1:onUse(onUse)
action1:register()