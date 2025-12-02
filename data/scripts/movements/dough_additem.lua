-- Converted from: dough.lua
-- Event: AddItem

local moveEvent1 = MoveEvent()
moveEvent1:type("additem")
moveEvent1:id(1786)

local moveEvent2 = MoveEvent()
moveEvent2:type("additem")
moveEvent2:id(1788)

local moveEvent3 = MoveEvent()
moveEvent3:type("additem")
moveEvent3:id(1790)

local moveEvent4 = MoveEvent()
moveEvent4:type("additem")
moveEvent4:id(1792)

local function onAddItem(moveitem, tileitem, position)
	if moveitem:getId() == 2693 then
		moveitem:transform(2689)
		position:sendMagicEffect(CONST_ME_HITBYFIRE)
	elseif moveitem:getId() == 6277 then
		moveitem:transform(2687, 12)
		position:sendMagicEffect(CONST_ME_HITBYFIRE)
	end
	return true
end

moveEvent1:onAddItem(onAddItem)
moveEvent1:register()
moveEvent2:onAddItem(onAddItem)
moveEvent2:register()
moveEvent3:onAddItem(onAddItem)
moveEvent3:register()
moveEvent4:onAddItem(onAddItem)
moveEvent4:register()
