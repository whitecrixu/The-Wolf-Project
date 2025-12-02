-- Converted from: other/teleport.lua
-- Original XML: actions.xml

local action1 = Action()
action1:id(430)

local action2 = Action()
action2:id(1369)

local action3 = Action()
action3:id(1386)

local action4 = Action()
action4:id(3678)

local action5 = Action()
action5:id(5543)

local action6 = Action()
action6:id(8599)

local function onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local t = Tile(fromPosition)
	if t:hasFlag(TILESTATE_PROTECTIONZONE) and player:isPzLocked() then
		player:sendTextMessage(MESSAGE_STATUS_SMALL, Game.getReturnMessage(RETURNVALUE_PLAYERISPZLOCKED))
		return true
	end

	if item.itemid == draw_well and item.actionid ~= 100 then
		return false
	end

	if isInArray(upFloorIds, item.itemid) then
		fromPosition:moveUpstairs()
	else
		fromPosition.z = fromPosition.z + 1
	end
	player:teleportTo(fromPosition, false)
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