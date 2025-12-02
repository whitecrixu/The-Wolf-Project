-- Example RevScriptSys MoveEvent
-- This demonstrates step in/out and equip events

-- Step in event on specific tile position
local stepEvent = MoveEvent()

function stepEvent.onStepIn(creature, item, position, fromPosition)
    if creature:isPlayer() then
        creature:sendTextMessage(MESSAGE_INFO_DESCR, "You stepped on a special tile!")
    end
    return true
end

stepEvent:type("stepin")
stepEvent:aid(1001)  -- Register by action id
stepEvent:register()

-- Equipment event
local equipEvent = MoveEvent()

function equipEvent.onEquip(player, item, slot)
    player:sendTextMessage(MESSAGE_INFO_DESCR, "You equipped " .. item:getName())
    return true
end

equipEvent:type("equip")
equipEvent:id(2463)  -- Plate armor
equipEvent:slot("armor")
equipEvent:level(8)
equipEvent:register()

print(">> [RevScriptSys] Loaded example_moveevent.lua")
