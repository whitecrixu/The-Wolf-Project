-- Converted from: quest door.lua
-- Event: StepIn

local moveEvent1 = MoveEvent()
moveEvent1:type("stepin")
moveEvent1:id(1224)

local moveEvent2 = MoveEvent()
moveEvent2:type("stepin")
moveEvent2:id(1226)

local moveEvent3 = MoveEvent()
moveEvent3:type("stepin")
moveEvent3:id(1242)

local moveEvent4 = MoveEvent()
moveEvent4:type("stepin")
moveEvent4:id(1244)

local moveEvent5 = MoveEvent()
moveEvent5:type("stepin")
moveEvent5:id(1256)

local moveEvent6 = MoveEvent()
moveEvent6:type("stepin")
moveEvent6:id(1258)

local moveEvent7 = MoveEvent()
moveEvent7:type("stepin")
moveEvent7:id(3543)

local moveEvent8 = MoveEvent()
moveEvent8:type("stepin")
moveEvent8:id(3552)

local moveEvent9 = MoveEvent()
moveEvent9:type("stepin")
moveEvent9:id(5106)

local moveEvent10 = MoveEvent()
moveEvent10:type("stepin")
moveEvent10:id(5115)

local moveEvent11 = MoveEvent()
moveEvent11:type("stepin")
moveEvent11:id(5124)

local moveEvent12 = MoveEvent()
moveEvent12:type("stepin")
moveEvent12:id(5133)

local moveEvent13 = MoveEvent()
moveEvent13:type("stepin")
moveEvent13:id(5289)

local moveEvent14 = MoveEvent()
moveEvent14:type("stepin")
moveEvent14:id(5291)

local moveEvent15 = MoveEvent()
moveEvent15:type("stepin")
moveEvent15:id(5746)

local moveEvent16 = MoveEvent()
moveEvent16:type("stepin")
moveEvent16:id(5749)

local moveEvent17 = MoveEvent()
moveEvent17:type("stepin")
moveEvent17:id(6203)

local moveEvent18 = MoveEvent()
moveEvent18:type("stepin")
moveEvent18:id(6205)

local moveEvent19 = MoveEvent()
moveEvent19:type("stepin")
moveEvent19:id(6260)

local moveEvent20 = MoveEvent()
moveEvent20:type("stepin")
moveEvent20:id(6262)

local moveEvent21 = MoveEvent()
moveEvent21:type("stepin")
moveEvent21:id(6899)

local moveEvent22 = MoveEvent()
moveEvent22:type("stepin")
moveEvent22:id(6908)

local moveEvent23 = MoveEvent()
moveEvent23:type("stepin")
moveEvent23:id(7041)

local moveEvent24 = MoveEvent()
moveEvent24:type("stepin")
moveEvent24:id(7050)

local moveEvent25 = MoveEvent()
moveEvent25:type("stepin")
moveEvent25:id(8552)

local moveEvent26 = MoveEvent()
moveEvent26:type("stepin")
moveEvent26:id(8554)

local moveEvent27 = MoveEvent()
moveEvent27:type("stepin")
moveEvent27:id(9176)

local moveEvent28 = MoveEvent()
moveEvent28:type("stepin")
moveEvent28:id(9178)

local moveEvent29 = MoveEvent()
moveEvent29:type("stepin")
moveEvent29:id(9278)

local moveEvent30 = MoveEvent()
moveEvent30:type("stepin")
moveEvent30:id(9280)

local moveEvent31 = MoveEvent()
moveEvent31:type("stepin")
moveEvent31:id(10279)

local moveEvent32 = MoveEvent()
moveEvent32:type("stepin")
moveEvent32:id(10281)

local moveEvent33 = MoveEvent()
moveEvent33:type("stepin")
moveEvent33:id(10476)

local moveEvent34 = MoveEvent()
moveEvent34:type("stepin")
moveEvent34:id(10485)

local moveEvent35 = MoveEvent()
moveEvent35:type("stepin")
moveEvent35:id(10783)

local moveEvent36 = MoveEvent()
moveEvent36:type("stepin")
moveEvent36:id(10792)

local moveEvent37 = MoveEvent()
moveEvent37:type("stepin")
moveEvent37:id(12105)

local moveEvent38 = MoveEvent()
moveEvent38:type("stepin")
moveEvent38:id(12194)

local moveEvent39 = MoveEvent()
moveEvent39:type("stepin")
moveEvent39:id(12203)

local moveEvent40 = MoveEvent()
moveEvent40:type("stepin")
moveEvent40:id(19848)

local moveEvent41 = MoveEvent()
moveEvent41:type("stepin")
moveEvent41:id(19857)

local moveEvent42 = MoveEvent()
moveEvent42:type("stepin")
moveEvent42:id(19988)

local moveEvent43 = MoveEvent()
moveEvent43:type("stepin")
moveEvent43:id(19997)

local moveEvent44 = MoveEvent()
moveEvent44:type("stepin")
moveEvent44:id(20281)

local moveEvent45 = MoveEvent()
moveEvent45:type("stepin")
moveEvent45:id(20288)

local moveEvent46 = MoveEvent()
moveEvent46:type("stepin")
moveEvent46:id(12098)

local function onStepIn(creature, item, position, fromPosition)

	local player = creature:getPlayer()
	if player == nil then
		return false
	end

	if player:getStorageValue(item.actionid) == -1 then
		player:sendTextMessage(MESSAGE_INFO_DESCR, "The door seems to be sealed against unwanted intruders.")
		player:teleportTo(fromPosition, true)
		return false
	end
	return true
end

moveEvent1:onStepIn(onStepIn)
moveEvent1:register()
moveEvent2:onStepIn(onStepIn)
moveEvent2:register()
moveEvent3:onStepIn(onStepIn)
moveEvent3:register()
moveEvent4:onStepIn(onStepIn)
moveEvent4:register()
moveEvent5:onStepIn(onStepIn)
moveEvent5:register()
moveEvent6:onStepIn(onStepIn)
moveEvent6:register()
moveEvent7:onStepIn(onStepIn)
moveEvent7:register()
moveEvent8:onStepIn(onStepIn)
moveEvent8:register()
moveEvent9:onStepIn(onStepIn)
moveEvent9:register()
moveEvent10:onStepIn(onStepIn)
moveEvent10:register()
moveEvent11:onStepIn(onStepIn)
moveEvent11:register()
moveEvent12:onStepIn(onStepIn)
moveEvent12:register()
moveEvent13:onStepIn(onStepIn)
moveEvent13:register()
moveEvent14:onStepIn(onStepIn)
moveEvent14:register()
moveEvent15:onStepIn(onStepIn)
moveEvent15:register()
moveEvent16:onStepIn(onStepIn)
moveEvent16:register()
moveEvent17:onStepIn(onStepIn)
moveEvent17:register()
moveEvent18:onStepIn(onStepIn)
moveEvent18:register()
moveEvent19:onStepIn(onStepIn)
moveEvent19:register()
moveEvent20:onStepIn(onStepIn)
moveEvent20:register()
moveEvent21:onStepIn(onStepIn)
moveEvent21:register()
moveEvent22:onStepIn(onStepIn)
moveEvent22:register()
moveEvent23:onStepIn(onStepIn)
moveEvent23:register()
moveEvent24:onStepIn(onStepIn)
moveEvent24:register()
moveEvent25:onStepIn(onStepIn)
moveEvent25:register()
moveEvent26:onStepIn(onStepIn)
moveEvent26:register()
moveEvent27:onStepIn(onStepIn)
moveEvent27:register()
moveEvent28:onStepIn(onStepIn)
moveEvent28:register()
moveEvent29:onStepIn(onStepIn)
moveEvent29:register()
moveEvent30:onStepIn(onStepIn)
moveEvent30:register()
moveEvent31:onStepIn(onStepIn)
moveEvent31:register()
moveEvent32:onStepIn(onStepIn)
moveEvent32:register()
moveEvent33:onStepIn(onStepIn)
moveEvent33:register()
moveEvent34:onStepIn(onStepIn)
moveEvent34:register()
moveEvent35:onStepIn(onStepIn)
moveEvent35:register()
moveEvent36:onStepIn(onStepIn)
moveEvent36:register()
moveEvent37:onStepIn(onStepIn)
moveEvent37:register()
moveEvent38:onStepIn(onStepIn)
moveEvent38:register()
moveEvent39:onStepIn(onStepIn)
moveEvent39:register()
moveEvent40:onStepIn(onStepIn)
moveEvent40:register()
moveEvent41:onStepIn(onStepIn)
moveEvent41:register()
moveEvent42:onStepIn(onStepIn)
moveEvent42:register()
moveEvent43:onStepIn(onStepIn)
moveEvent43:register()
moveEvent44:onStepIn(onStepIn)
moveEvent44:register()
moveEvent45:onStepIn(onStepIn)
moveEvent45:register()
moveEvent46:onStepIn(onStepIn)
moveEvent46:register()